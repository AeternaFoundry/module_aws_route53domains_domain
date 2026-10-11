resource "aws_route53domains_domain" "route53domains_domains" {
  for_each = var.route53domains_domains

  domain_name        = each.value.domain_name
  admin_privacy      = each.value.admin_privacy
  auto_renew         = each.value.auto_renew
  billing_privacy    = each.value.billing_privacy
  duration_in_years  = each.value.duration_in_years
  registrant_privacy = each.value.registrant_privacy
  tags               = each.value.tags
  tech_privacy       = each.value.tech_privacy
  transfer_lock      = each.value.transfer_lock

  dynamic "admin_contact" {
    for_each = each.value.admin_contact != null ? each.value.admin_contact : []
    content {
      address_line_1 = admin_contact.value.address_line_1
      address_line_2 = admin_contact.value.address_line_2
      city           = admin_contact.value.city
      contact_type   = admin_contact.value.contact_type
      country_code   = admin_contact.value.country_code
      email          = admin_contact.value.email
      dynamic "extra_param" {
        for_each = admin_contact.value.extra_param != null ? admin_contact.value.extra_param : []
        content {
          name  = extra_param.value.name
          value = extra_param.value.value
        }
      }
      fax               = admin_contact.value.fax
      first_name        = admin_contact.value.first_name
      last_name         = admin_contact.value.last_name
      organization_name = admin_contact.value.organization_name
      phone_number      = admin_contact.value.phone_number
      state             = admin_contact.value.state
      zip_code          = admin_contact.value.zip_code
    }
  }

  dynamic "billing_contact" {
    for_each = each.value.billing_contact != null ? each.value.billing_contact : []
    content {
      address_line_1 = billing_contact.value.address_line_1
      address_line_2 = billing_contact.value.address_line_2
      city           = billing_contact.value.city
      contact_type   = billing_contact.value.contact_type
      country_code   = billing_contact.value.country_code
      email          = billing_contact.value.email
      dynamic "extra_param" {
        for_each = billing_contact.value.extra_param != null ? billing_contact.value.extra_param : []
        content {
          name  = extra_param.value.name
          value = extra_param.value.value
        }
      }
      fax               = billing_contact.value.fax
      first_name        = billing_contact.value.first_name
      last_name         = billing_contact.value.last_name
      organization_name = billing_contact.value.organization_name
      phone_number      = billing_contact.value.phone_number
      state             = billing_contact.value.state
      zip_code          = billing_contact.value.zip_code
    }
  }

  dynamic "name_server" {
    for_each = each.value.name_server != null ? each.value.name_server : []
    content {
      glue_ips = name_server.value.glue_ips
      name     = name_server.value.name
    }
  }

  dynamic "registrant_contact" {
    for_each = each.value.registrant_contact != null ? each.value.registrant_contact : []
    content {
      address_line_1 = registrant_contact.value.address_line_1
      address_line_2 = registrant_contact.value.address_line_2
      city           = registrant_contact.value.city
      contact_type   = registrant_contact.value.contact_type
      country_code   = registrant_contact.value.country_code
      email          = registrant_contact.value.email
      dynamic "extra_param" {
        for_each = registrant_contact.value.extra_param != null ? registrant_contact.value.extra_param : []
        content {
          name  = extra_param.value.name
          value = extra_param.value.value
        }
      }
      fax               = registrant_contact.value.fax
      first_name        = registrant_contact.value.first_name
      last_name         = registrant_contact.value.last_name
      organization_name = registrant_contact.value.organization_name
      phone_number      = registrant_contact.value.phone_number
      state             = registrant_contact.value.state
      zip_code          = registrant_contact.value.zip_code
    }
  }

  dynamic "tech_contact" {
    for_each = each.value.tech_contact != null ? each.value.tech_contact : []
    content {
      address_line_1 = tech_contact.value.address_line_1
      address_line_2 = tech_contact.value.address_line_2
      city           = tech_contact.value.city
      contact_type   = tech_contact.value.contact_type
      country_code   = tech_contact.value.country_code
      email          = tech_contact.value.email
      dynamic "extra_param" {
        for_each = tech_contact.value.extra_param != null ? tech_contact.value.extra_param : []
        content {
          name  = extra_param.value.name
          value = extra_param.value.value
        }
      }
      fax               = tech_contact.value.fax
      first_name        = tech_contact.value.first_name
      last_name         = tech_contact.value.last_name
      organization_name = tech_contact.value.organization_name
      phone_number      = tech_contact.value.phone_number
      state             = tech_contact.value.state
      zip_code          = tech_contact.value.zip_code
    }
  }
}

