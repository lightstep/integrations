## Running

At this time, you need to supply the environment with the LS_ACCESS_TOKEN to run the Terraform. You can do that with a command like this...


```bash
terraform apply -var="LS_ACCESS_TOKEN=$LS_ACCESS_TOKEN"
```

## Environment

You may need variables like the following to deploy some Azure configuration.

```bash
export ARM_CLIENT_ID="a1**"
export ARM_CLIENT_SECRET="57**"
export ARM_TENANT_ID="5b**"
export ARM_SUBSCRIPTION_ID="15**"
export AZURE_SUBSCRIPTION_ID="15**"
export AZURE_TENANT_ID="5b**"
export AZURE_CLIENT_ID="ca**"
export AZURE_CLIENT_SECRET="gi**"
```

