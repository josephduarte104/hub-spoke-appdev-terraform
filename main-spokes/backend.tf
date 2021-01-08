terraform {
  required_version = ">=0.12.6"
  backend "azurerm" {
    storage_account_name = "jdsharedservices104"
    container_name       = "tfstate"
    key                  = "prod-aks-main-spokes.terraform.tfstate"

    # rather than defining this inline, the Access Key can also be sourced
    # from an Environment Variable - more information is available below.
    access_key = "RXvG4VBy36BIpRNTB1bW4akxhtj4fb6Cihi7CTERRaLS00Q2EsSSuDKpdZGCtVe1kzA/D6wlSwCiph2TpeBl4w=="
  }
}