VPC Module
The objective of this module is to create reusable, maintainable, and consistent AWS networking infrastructure that can be consumed by multiple Terraform root projects.

                        AWS Cloud
                           |
                        VPC
                    10.0.0.0/16
                           |
          +----------------+----------------+
          |                |                |
      Public Subnets   Private Subnets  Database Subnets
          |                |                |
          |                |                |
         IGW             NAT Gateway      Isolated/
          |                |              Private Routing
          |                |
       Internet         Internet
                           |
                    Elastic IP
                           
          VPC Peering (Optional)
                   |
              Default VPC



Tf files Responsibility

data.tf
    Retrieves AWS Availability Zones and Default VPC information

locals.tf
    Defines common tags and Availability Zone names

variables.tf
    Defines configurable module inputs

vpc.tf
    Creates VPC, subnets, gateways, route tables, and routing

peering.tf
    Configures optional VPC Peering and related routing

outputs.tf
    Exposes VPC ID and subnet IDs

