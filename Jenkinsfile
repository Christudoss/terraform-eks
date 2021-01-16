pipeline{
    agent any
    
    stages{
        stage('Terraform'){
			steps{
				sh terraform init
				sh terraform plan -auto-approve
				sh terraform apply - auto-approve
				}
		}
    }
}