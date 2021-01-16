pipeline{
    agent any
    
    stages{
        stage "Terraform" {
        sh terraform init
        sh terraform plan -auto-approve
        sh terraform apply - auto-approve
		}
    }
}