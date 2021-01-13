terraform {
  required_version = ">=0.12.6"
  backend "azurerm" {
    subscription_id = "UTC Digital - DX - P5"
    storage_account_name = "jdsharedservices104"
    container_name       = "tfstate"
    key                  = "prod-aks-hub.terraform.tfstate"
    # rather than defining this inline, the Access Key can also be sourced
    # from an Environment Variable - more information is available below.
    access_key = "paramatize from keyvault"
  }
}