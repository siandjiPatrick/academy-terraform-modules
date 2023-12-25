## Requirements

No requirements.

## Providers

The following providers are used by this module:

- google

## Modules

No modules.

## Resources

The following resources are used by this module:

- https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address[google_compute_address.test_ip] (resource)
- https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall[google_compute_firewall.allow_http_icmp_ssh] (resource)
- https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance[google_compute_instance.vm-instance1] (resource)
- https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network[google_compute_network.auto-vpc_network] (resource)
- https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork[google_compute_subnetwork.network-with-private-secondary-ip-ranges] (resource)

## Required Inputs

The following input variables are required:

- instance_name

Description: n/a

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

- machine_type

Description: n/a

Type: `string`

Default: `"n1-standard-1"`

## Outputs

No outputs.
