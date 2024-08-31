default:
	git pull  #(Jenkins Automatically pull the code)
	terraform init
	terraform apply -auto-approve

apply:
    terraform init
    terraform apply -auto-approve