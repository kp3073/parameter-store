resource "aws_ssm_parameter" "parameter" {
  count = length(var.parameter)
  name      = var.parameter[count.index].name
  type      = var.parameter[count.index].type
  value     = var.parameter[count.index].value
  overwrite = true
}


variable "parameter" {
  default = [
    { name = "prod.rds.master_username", value = "expenseprod", type = "String" },
    { name = "prod.rds.master_password", value = "expenseprod1234", type = "SecureString" },
    { name = "prod.expense.frontend.backend_url", value = "http://backend-prod.aligntune.online/", type = "String" },
    {
      name = "prod.rds.endpoint", value = "aurora-cluster-prod.cluster-cjmks6wgq3k7.us-east-1.rds.amazonaws.com",
      type = "String"
    },
    {
      name = "prod.rds.endpoint", value = "aurora-cluster-prod.cluster-cjmks6wgq3k7.us-east-1.rds.amazonaws.com",
      type = "String"
    },

    #dev environment
    { name = "dev.expense.frontend.backend_url", value = "http://backend-dev.aligntune.online/", type = "String" },
    ##{name="dev.rds.endpoint",value = "aurora-cluster-dev.cluster-cjmks6wgq3k7.us-east-1.rds.amazonaws.com",type = "String"},
    #common env
    { name = "jenkins_password", value = "Canada1991$", type = "SecureString" }
  ]
}
