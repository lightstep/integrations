# Developing Azure Terraform

## Workflow Steps

The workflow is step-by-step, but in reality you'll iterate on this process.

### Configure your environment

I mean setup the configuration you want using portal.azure. That will be easiest for green field in Terraform unless you're very experienced with the platform, since we can export that to our Terraform config later. You'll see all of the settings there.

### Export to Terraform

Azure develops `aztfexport`, which saves a lot of time in getting a baseline Terraform config. However, I found that it failed every time until I set override flags `--parallelism 1 --provider-version 3.93.0 --continue`. Then I found that to run my setup automatically it helped a lot to set `--non-interactive --output-dir $(EXPORT_DIR)`.

So I settled on this:
```bash
aztfexport resource-group --parallelism 1 --non-interactive --provider-version 3.93.0 --continue --output-dir $(EXPORT_DIR)} $(RESOURCE_GROUP_NAME)}
```

Your mileage may vary in needing to run with these flags.

Without the following flags I found my exports timed out after "initializing" for the entire time.

With these flags it still says it's initializing for a while, but you eventually see resources being processed and then wraps up within a few minutes.


### Delete the bogus resources

If you tinker with the log_analytics_workspace at all, and maybe even if you don't, Azure will export a lot of resources called "azurerm_log_analytics_saved_search". This may be a signifant portion of the config.

### Fix the resource graph

Normally Terraform resources that refer to **another_resource** will do so by refering to it's attributes. For example, look at the links in these mocks of Azure resources `"azurerm_widget"` that lives in `"azurerm_widget_namespace"`:

```hcl
resource "azurerm_widget_namespace" "wn" {
    name = "My Widget Namespace"
}

resource "azurerm_widget" "w" {
    name = "My Widget"
    namespace_name = azurerm_widget_namespace.wn.name
}
```

This is a matter of replacing strings in the referer settings to refer to the attribute name instead. The pattern of these intra-module references is `{resource_type}.{resource_name}.{attribute}`. For example, `azurerm_widget.w.name`. You can keep your explicit `depends_on` settings, but don't match strings.

Many of the resources you manage will have an attribute set like this: 
`  resource_group_name = azurerm_resource_group.rg.name`

### Replace resource names

`aztfexport` will name resources by a numerical sequence like `res-1`, `res-2`, and so on. It's preferable to replace this with something more meaningful.

<!--TODO: add an example -->

If you use simple bulk find-and-replace tool without then make sure you start with higher numers and work backwards. Otherwise your operation to replace "res-1" could replace the first characters of "res-11" through "res-19".

### Use locals for patterns to keep names consitent

If you reuse something that should be consistent like a "name_prefix" then define it in a locals block and refer to as `local.val_name`.

### You only need to get all of this right when your config works

You only have to do as much of this as useful during iterative development.
