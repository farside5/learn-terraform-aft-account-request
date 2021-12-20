module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "jozhou+ctv3_aft1@amazon.com"
    AccountName               = "aft-dev1"
    ManagedOrganizationalUnit = "AFT"
    SSOUserEmail              = "jozhou+ctv3_aft1@amazon.com"
    SSOUserFirstName          = "AftDev1"
    SSOUserLastName           = "Zhou"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "aft-dev1"
}
