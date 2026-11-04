locals {
    common_tags = {
        project=var.project
        environment= var.environment
        Terraform ="true"

    }
    az_names = slice(data.aws_availability_zones.available.names, 0, 2)
}
  /*  when a user opens they can easily understand for which it is created 
   the naming convention is good (imp)
   *this tag is repeating because of that we assigned
   common_tags and being identified as local.common_tags */

