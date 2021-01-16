pipeline{
    agent any
    
    stages{
        stage('Terraform'){
			steps{
				sh 'cd ./env/dev'
				sh 'terraform init'
				sh 'terraform plan -auto-approve'
				sh 'terraform apply - auto-approve'
				}
		}
    }
}