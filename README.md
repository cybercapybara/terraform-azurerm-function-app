# terraform-azurerm-function-app

Terraform module that manages an [Azure](https://azure.microsoft.com/) Linux
function app together with its backing storage account and service plan. It
defaults to a consumption plan running the Python runtime and exposes the app's
default hostname.

## Usage

```hcl
module "function_app" {
  source = "github.com/cybercapybara/terraform-azurerm-function-app"

  name                 = "prod-func01"
  service_plan_name    = "prod-func-asp"
  storage_account_name = "prodfuncsa01"
  resource_group_name  = "prod-rg"
  location             = "eastus"
  sku_name             = "EP1"
  python_version       = "3.11"

  tags = {
    Environment = "production"
    ManagedBy   = "terraform"
  }
}
```

A runnable example lives in [`examples/basic`](examples/basic).

## Requirements

| Name      | Version  |
|-----------|----------|
| terraform | >= 1.5   |
| azurerm   | >= 3.0   |

## Inputs

| Name                   | Description                                                        | Type          | Default    | Required |
|------------------------|--------------------------------------------------------------------|---------------|------------|:--------:|
| `name`                 | Name of the Linux function app. Globally unique.                   | `string`      | n/a        |   yes    |
| `service_plan_name`    | Name of the service plan hosting the function app.                 | `string`      | n/a        |   yes    |
| `storage_account_name` | Name of the backing storage account. Globally unique.              | `string`      | n/a        |   yes    |
| `resource_group_name`  | Name of the resource group in which to create the resources.       | `string`      | n/a        |   yes    |
| `location`             | Azure region in which to create the resources.                     | `string`      | n/a        |   yes    |
| `sku_name`             | SKU of the service plan.                                           | `string`      | `"Y1"`     |    no    |
| `python_version`       | Python runtime version for the function app.                       | `string`      | `"3.11"`   |    no    |
| `https_only`           | Whether the function app redirects all HTTP traffic to HTTPS.      | `bool`        | `true`     |    no    |
| `app_settings`         | Map of application settings exposed as environment variables.      | `map(string)` | `{}`       |    no    |
| `tags`                 | Map of tags applied to the resources.                              | `map(string)` | `{}`       |    no    |

## Outputs

| Name                   | Description                                    |
|------------------------|------------------------------------------------|
| `id`                   | ID of the Linux function app.                  |
| `name`                 | Name of the Linux function app.                |
| `default_hostname`     | Default hostname of the function app.          |
| `storage_account_name` | Name of the backing storage account.           |

## License

[MIT](LICENSE)
