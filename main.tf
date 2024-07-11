resource "aws_ssm_parameter" "parameter" {
  count = length(var.parameter)
  name  = var.parameter[count.index].name
  type  = var.parameter[count.index].type
  value = var.parameter[count.index].value
}


variable "parameter" {
default = [{name="prod.rds.master_username",value = "expense", type = "string"},
    {name="prod.rds.master_password",value = "expense1234", type = "SecureString"},
    {name="expense.frontend.backend_url",value = "internal-dev-private-757772481.us-east-1.elb.amazonaws.com", type = "String"},
    {name="prod.rds.endpoint",value = "aurora-cluster-prod.cluster-cjmks6wgq3k7.us-east-1.rds.amazonaws.com",type = "string"}]
}
