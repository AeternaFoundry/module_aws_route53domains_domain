variable "route53domains_domains" {
  description = <<EOT
Map of route53domains_domains, attributes below
Required:
    - domain_name
Optional:
    - admin_privacy
    - auto_renew
    - billing_privacy
    - duration_in_years
    - registrant_privacy
    - tags
    - tech_privacy
    - transfer_lock
    - admin_contact (block):
        - address_line_1 (optional)
        - address_line_2 (optional)
        - city (optional)
        - contact_type (optional)
        - country_code (optional)
        - email (optional)
        - extra_param (optional, block):
            - name (required)
            - value (required)
        - fax (optional)
        - first_name (optional)
        - last_name (optional)
        - organization_name (optional)
        - phone_number (optional)
        - state (optional)
        - zip_code (optional)
    - billing_contact (block):
        - address_line_1 (optional)
        - address_line_2 (optional)
        - city (optional)
        - contact_type (optional)
        - country_code (optional)
        - email (optional)
        - extra_param (optional, block):
            - name (optional)
            - value (optional)
        - fax (optional)
        - first_name (optional)
        - last_name (optional)
        - organization_name (optional)
        - phone_number (optional)
        - state (optional)
        - zip_code (optional)
    - name_server (block):
        - glue_ips (optional)
        - name (optional)
    - registrant_contact (block):
        - address_line_1 (optional)
        - address_line_2 (optional)
        - city (optional)
        - contact_type (optional)
        - country_code (optional)
        - email (optional)
        - extra_param (optional, block):
            - name (required)
            - value (required)
        - fax (optional)
        - first_name (optional)
        - last_name (optional)
        - organization_name (optional)
        - phone_number (optional)
        - state (optional)
        - zip_code (optional)
    - tech_contact (block):
        - address_line_1 (optional)
        - address_line_2 (optional)
        - city (optional)
        - contact_type (optional)
        - country_code (optional)
        - email (optional)
        - extra_param (optional, block):
            - name (required)
            - value (required)
        - fax (optional)
        - first_name (optional)
        - last_name (optional)
        - organization_name (optional)
        - phone_number (optional)
        - state (optional)
        - zip_code (optional)
EOT

  type = map(object({
    domain_name        = string
    admin_privacy      = optional(bool)
    auto_renew         = optional(bool)
    billing_privacy    = optional(bool)
    duration_in_years  = optional(number)
    registrant_privacy = optional(bool)
    tags               = optional(map(string))
    tech_privacy       = optional(bool)
    transfer_lock      = optional(bool)
    admin_contact = optional(list(object({
      address_line_1 = optional(string)
      address_line_2 = optional(string)
      city           = optional(string)
      contact_type   = optional(string)
      country_code   = optional(string)
      email          = optional(string)
      extra_param = optional(list(object({
        name  = string
        value = string
      })))
      fax               = optional(string)
      first_name        = optional(string)
      last_name         = optional(string)
      organization_name = optional(string)
      phone_number      = optional(string)
      state             = optional(string)
      zip_code          = optional(string)
    })))
    billing_contact = optional(list(object({
      address_line_1 = optional(string)
      address_line_2 = optional(string)
      city           = optional(string)
      contact_type   = optional(string)
      country_code   = optional(string)
      email          = optional(string)
      extra_param = optional(list(object({
        name  = optional(string)
        value = optional(string)
      })))
      fax               = optional(string)
      first_name        = optional(string)
      last_name         = optional(string)
      organization_name = optional(string)
      phone_number      = optional(string)
      state             = optional(string)
      zip_code          = optional(string)
    })))
    name_server = optional(list(object({
      glue_ips = optional(set(string))
      name     = optional(string)
    })))
    registrant_contact = optional(list(object({
      address_line_1 = optional(string)
      address_line_2 = optional(string)
      city           = optional(string)
      contact_type   = optional(string)
      country_code   = optional(string)
      email          = optional(string)
      extra_param = optional(list(object({
        name  = string
        value = string
      })))
      fax               = optional(string)
      first_name        = optional(string)
      last_name         = optional(string)
      organization_name = optional(string)
      phone_number      = optional(string)
      state             = optional(string)
      zip_code          = optional(string)
    })))
    tech_contact = optional(list(object({
      address_line_1 = optional(string)
      address_line_2 = optional(string)
      city           = optional(string)
      contact_type   = optional(string)
      country_code   = optional(string)
      email          = optional(string)
      extra_param = optional(list(object({
        name  = string
        value = string
      })))
      fax               = optional(string)
      first_name        = optional(string)
      last_name         = optional(string)
      organization_name = optional(string)
      phone_number      = optional(string)
      state             = optional(string)
      zip_code          = optional(string)
    })))
  }))
}

