# terraform-eks
This one creates EKS resources using terraform. It works fine when run from a Jenkins server hosted on an EC2 instance. Ensure the EC2 has the required role associated with it. You will require few IAM, EKS and networking related polcies for this to work. You can create a separate a terraform template for that.

You can also integrate this with your CI/CD build project using multiple git repo support. You may have to create groovy script to run them as a single pipeline project. Using 'dir' is one option. There could be more. The kube.config created in this can be copied to your local machine and subsequent deployment steps can be invoked too, all in a single pipeline. 
