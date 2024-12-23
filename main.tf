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
	{
	  name = "dev.roboshop.frontend.catalogue_url", value = "http://catalogue-dev.aligntune.online:8080/",
	  type = "String"
	},
	{ name = "dev.roboshop.frontend.user_url", value = "http://user-dev.aligntune.online:8080/", type = "String" },
	{ name = "dev.roboshop.frontend.cart_url", value = "http://cart-dev.aligntune.online:8080/", type = "String" },
	{
	  name = "dev.roboshop.frontend.shipping_url", value = "http://shipping-dev.aligntune.online:8080/", type = "String"
	},
	{
	  name = "dev.roboshop.frontend.payment_url", value = "http://payment-dev.aligntune.online:8080/", type = "String"
	},

	#Catalogue parameter

	{
	  name = "dev.roboshop.catalogue.MONGO_URL", value = "mongodb://mongodb-dev.aligntune.online:27017/catalogue",
	  type = "String"
	},
	{ name = "dev.roboshop.catalogue.mongodb_ENDPOINT", value = "mongodb-dev.aligntune.online", type = "String" },

	#user Parameter
	{ name = "dev.roboshop.user.REDIS_HOST", value = "redis-dev.aligntune.online", type = "String" },
	{
	  name = "dev.roboshop.user.MONGO_URL", value = "mongodb://mongodb-dev.aligntune.online:27017/users",
	  type = "String"
	},

	# Cart parameter
	{ name = "dev.roboshop.cart.REDIS_HOST", value = "redis-dev.aligntune.online", type = "String" },
	{ name = "dev.roboshop.cart.CATALOGUE_HOST", value = "catalogue-dev.aligntune.online", type = "String" },
	{ name = "dev.roboshop.cart.CATALOGUE_port", value = "8080", type = "String" },

	#Password parameter
	{ name = "dev.roboshop.mysql.DB_PASS", value = "RoboShop@1", type = "SecureString" },
	{ name = "dev.roboshop.rabbitmq.MQ_PASS", value = "roboshop123", type = "SecureString" },
	{ name = "dev.roboshop.payment.AMQP_PASSS", value = "roboshop123", type = "SecureString" },


	#Shipping parameter
	{ name = "dev.roboshop.shipping.DB_HOST", value = "mysql-dev.aligntune.online", type = "String" },
	{ name = "dev.roboshop.shipping.DB_USERNAME", value = "root", type = "String" },
	{ name = "dev.roboshop.shipping.CART_ENDPOINT", value = "cart:80", type = "String" },
	{ name = "dev.roboshop.shipping.CART_Server", value = "cart-dev.aligntune.online:8080", type = "String" },


	#payment Parameter and Dispatch using Same parameters
	{ name = "dev.roboshop.payment.CART_HOST", value = "cart-dev.aligntune.online", type = "String" },
	{ name = "dev.roboshop.payment.USER_HOST", value = "user-dev.aligntune.online", type = "String" },
	{ name = "dev.roboshop.payment.AMQP_HOST", value = "rabbitmq-dev.aligntune.online", type = "String" },
	{ name = "dev.roboshop.payment.AMQP_USER", value = "roboshop", type = "String" },

	{ name = "dev.roboshop.rds.master_username", value = "mysqldev", type = "String" },
	{ name = "dev.roboshop.rds.master_password", value = "RoboShop234", type = "SecureString" }
	##misceallaneous
  ]
}
