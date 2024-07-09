package test

import (
	"fmt"
	"strings"
	"testing"

	"github.com/gruntwork-io/terratest/modules/azure"
	"github.com/gruntwork-io/terratest/modules/random"
	"github.com/gruntwork-io/terratest/modules/terraform"
)

var subscriptionID string

func TestLogsExport(t *testing.T) {
	t.Parallel()

	// Generate a random website name to prevent a naming conflict
	uniqueID := random.UniqueId()
	resourceGroupName := fmt.Sprintf("logs-export-%s", uniqueID)

	// Specify the test case folder and "-var" options
	tfOptions := &terraform.Options{
		TerraformDir: "../terraform",
		// TODO: Add required variables
		Vars: map[string]interface{}{
			"resource_group_name": resourceGroupName,
		},
	}

	// Terraform init, apply, output, and destroy
	defer terraform.Destroy(t, tfOptions)
	terraform.InitAndApply(t, tfOptions)

	// Validate the provisioned resource group
	if !azure.ResourceGroupExists(t, resourceGroupName, subscriptionID) {
		t.Fatalf("Resource group %s does not exist", resourceGroupName)
	}

	// TODO: iterate resources checking DiagnosticSettingExists
	if !azure.DiagnosticSettingExists(t, resourceGroupName, "logs", subscriptionID) {
		t.Fatalf("Diagnostic setting %s does not exist", "logs")
	}
}

func checkResourceGroupExists(t *testing.T, resourceGroupName string, subscriptionID string) {
	if !azure.ResourceGroupExists(t, resourceGroupName, subscriptionID) {
		t.Fatalf("Resource group %s does not exist", resourceGroupName)
	}
}

func checkStorageExists(t *testing.T, resourceGroupName string, storageAccountName string, subscriptionID string) {
	if !azure.StorageAccountExists(t, resourceGroupName, storageAccountName, subscriptionID) {
		t.Fatalf("Storage account %s does not exist", storageAccountName)
	}
	if !azure.StorageAccountExists(t, resourceGroupName, "logs", subscriptionID) {
		t.Fatalf("Storage account %s does not exist", "logs")
	}
	if !azure.StorageFileShareExists(t, resourceGroupName, "logs", "logs", subscriptionID) {
		t.Fatalf("Storage file share %s does not exist", "logs")
	}
}

func checkFileShareContents(t *testing.T, resourceGroupName string, subscriptionID string) {
	if !azure.StorageFileShareContains(t, resourceGroupName, "logs", "logs", "logs", subscriptionID) {
		t.Fatalf("Storage file share %s does not contain expected contents", "logs")
	}
}

func checkEventHubSetup(t *testing.T, resourceGroupName string, eventHubName string, subscriptionID string) {
	if !azure.EventHubNamespaceExists(t, resourceGroupName, "logs", subscriptionID) {
		t.Fatalf("Event Hub namespace %s does not exist", "logs")
	}
	if !azure.EventHubExists(t, resourceGroupName, "logs", subscriptionID) {
		t.Fatalf("Event Hub %s does not exist", "logs")
	}
	if !azure.EventHubAuthorizationRuleExists(t, resourceGroupName, "logs", "RootManageSharedAccessKey", subscriptionID) {
		t.Fatalf("Event Hub authorization rule %s does not exist", "logs")
	}
}
