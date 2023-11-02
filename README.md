# JOMACS-Terraform-Project
## Training Institution: JOMACS IT
### Author: Doreen Dela Agbedoe
### Date: 31/10/2023

# Terraform Project: Secure VPC Environment with Nginx Web Server

## Overview
This Terraform project deploys a secure VPC environment in AWS with an EC2 instance running an Nginx web server. The EC2 instance resides within a private subnet and is accessible to the outside world via a load balancer. Traffic to the EC2 instance is routed through a NAT gateway.

## Project Structure
1. Within this JOMACS-terraform-project repo is a source directory and this ReadMe.md file.
2. The source directory contains a modules directory and three files - *main.tf*, *provider.tf* and *output.tf* files.
3. The modules directory houses two sub-directories that contain two reusable modules named *vpc* and *ec2*
4. These two modules contain all the configuration files needed to provision the resources required. These files include - *vpc.tf, ec2.tf variable.tf, store.tf, data.tf, output.tf, providers.tf and script.sh*.
    
![terraform_structure](https://github.com/DelaDoreen/JOMACS-Terraform-Project/assets/142509085/8ccba2b3-2486-4c6c-9963-d8c71949adf3)


## Resources that will be deployed
In all, this configuration will provision 22 resources.
1. *VPC*
2. *Public Subnet 1*
3. *Public Subnet 2*
4. *Private Subnet*
5. *NAT Gateway*
6. *Internet Gateway*
7. *Load Balancer*
8. *Load Balancer Listener*
9. *Elastic IP (eip)*
10. *Target Group*
11. *Route Table Association 1*
12. *Route Table Association 2*
13. *Route Table 1*
14. *Route Table 2*
15. *Target Group Attachment*
16. *EC2 Instance*
17. *Instance Security Group 1*
18. *Load Balance Security Groups 2*
19. *SSM Parameter Store 1*
20. *SSM Parameter Store 2*
21. *SSM Parameter Store 3*
22. *SSM Parameter Store 4*

![provisioned_resources](https://github.com/DelaDoreen/JOMACS-Terraform-Project/assets/142509085/36dd76af-2295-49f9-aa64-96c8adc0f3cb)


## Cloud Architecture

## How to deploy the infrastructure.
1. *Fork or clone* the repository to your local environment.
2. Move into the cloned repository. Create a branch and switch to it.
3. Change directory to the *source* directory. This contains the *modules* directory, *main.tf*, *provider.tf* and *output.tf* files.
4. Go through the code and *read the comments* modifying the code as necessary (NB. terraform state files are stored in an already provisioned S3 bucket).
5. Run *terraform init* to initialize the terraform provider configuration.
6. Run *terraform validate*, *terraform plan* and *terraform apply* to have the resources created.
7. Run *terraform destroy* to destroy all resources after you have successfully provisioned the resources.

## Steps to validate the setup 
1. To validate this setup, copy and paste the load balancer dns name that is outputed after your resources have been created and are running into your browser address bar and hit enter.
2. You should get a display of **Congratulation! Doreen Dela. You have installed Nginx** - just like in the image below:

![proof_of_setup](https://github.com/DelaDoreen/JOMACS-Terraform-Project/assets/142509085/0690d705-ea61-442e-b144-fa5ae3ad9ee1)


## CI/CD - Deploying via GitHub Actions (Automation)
1. After going through the code, reading the comments and modifying the code as necessary in your github repo, commit your changes and push to main or the requisite branch. 
2. The first thing you'll need to do before your GitHub Actions can run is to add your AWS credentials to the repository. To do this you will need to follow these steps:

   a. Navigate to your repository and select the "Settings" tab.

   b. Once there you should see on the left a button labeled "Secret and Variables", click on that. From that dropdown menu, click on the "Actions" button.

   c. From the Actions panel that would open, click on the "New repository secret" button located on the right hand corner.

   d. Add your AWS_SECRET_ACCESS_KEY and click the "Add secret" button.

   e. Repeat *step d* and add your AWS_ACCESS_KEY_ID and click the "Add secret" button.
   
3. Subsequently select the "Actions" tab and select the requisite workflow. This should open up the workflow as shown below.
   
![githubactions_summary_test_success]

4. Clicking on the "Terraform" tab under the actions.yaml should open up a successful Terraform log file as shown below.


6. 


