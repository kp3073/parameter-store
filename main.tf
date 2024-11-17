resource "aws_ssm_parameter" "parameter" {
  count = length(var.parameter)
  name      = var.parameter[count.index].name
  type      = var.parameter[count.index].type
  value     = var.parameter[count.index].value
  overwrite = true
  key_id    = "arn:aws:kms:us-east-1:471112727668:key/619416f9-8535-4dfd-b4d4-9d429aada3e7"
}


variable "parameter" {
  default = [
    { name = "prod.rds.master_username", value = "expenseprod", type = "String" },
    { name = "prod.rds.master_password", value = "expenseprod1234", type = "SecureString" },
    { name = "prod.expense.frontend.backend_url", value = "http://backend-prod.aligntune.online/", type = "String" },
    {
      name = "prod.rds.endpoint", value = "aurora-cluster-dev.cluster-cjmks6wgq3k7.us-east-1.rds.amazonaws.com",
      type = "String"
    },
    { name = "prod.frontend.app_version", value = "1.0.8", type = "String" },
    { name = "prod.backend.app_version", value = "1.0.2", type = "String" },
    #dev environment
    { name = "dev.expense.frontend.backend_url", value = "http://backend-dev.aligntune.online/", type = "String" },
    #     {name="dev.rds.endpoint",value = "aurora-cluster-dev.cluster-cjmks6wgq3k7.us-east-1.rds.amazonaws.com",type = "String"},
    #common env
    { name = "jenkins_password", value = "Canada1991$", type = "SecureString" },
    { name = "artifactory_username", value = "admin", type = "String" },
    { name = "artifactory_password", value = "Canada1991$", type = "SecureString" },
    { name = "ssh_username", value = "centos", type = "String" },
    { name = "ssh_password", value = "DevOps321", type = "SecureString" },

    ##RoboShop Project Parameters DEV environment
    { name = "dev.roboshop.frontend.catalogue_url", value = "http://catalogue-dev.aligntune.online/", type = "String" },
    { name = "dev.roboshop.frontend.user_url", value = "http://user-dev.aligntune.online/", type = "String" },
    { name = "dev.roboshop.frontend.cart_url", value = "http://cart-dev.aligntune.online/", type = "String" },
    { name = "dev.roboshop.frontend.shipping_url", value = "http://shipping-dev.aligntune.online/", type = "String" },
    { name = "dev.roboshop.frontend.payment_url", value = "http://payment-dev.aligntune.online/", type = "String" }

  ]
}
