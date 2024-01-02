### Installation Guide for AWS Cloudformation

#### Download CloudFormation Template:
- Download the CloudFormation template from https://github.com/Privado-Inc/MuroChat/blob/main/aws-cloudformation/cloudformation.json
#### Update Account and Region:
- Open the downloaded CloudFormation template (cloudformation.json) in a text editor.
- Perform a search and replace for the existing AWS account ID (`325094797840`) with your own AWS account ID.
- Perform a search and replace for the existing region (`ap-southeast-1`) with the AWS region where you want to deploy the application.

#### Configure Secrets in AWS Secrets Manager:
- The application requires secrets stored in AWS Secrets Manager. Follow these steps:
    - Navigate to AWS Secrets Manager in the AWS Management Console.
    - Choose `Choose secret type -> Other type of secret -> Plaintext`.
    - Paste the content of secrets.json into the secret. Ensure that you fill in the values as per your infrastructure.
    - Once the secret is created, copy the ARN. It will be asked as an input at the time of stack creation. It is a parameterized value for the stack.

#### Verify CloudFormation Template:
- Before deploying the updated CloudFormation template, ensure the following:
    - There is no trace of the AWS account ID (`325094797840`) in the template.
    - There is no trace of the region (`ap-southeast-1`) if you are not deploying in that region.
    - Secrets are created in the secret manager and you have arn of it.

#### Deploy CloudFormation Template:
- Upload the modified CloudFormation template using the AWS CloudFormation console.
- During the stack creation process, you will be prompted to provide the Secret ARN. Please enter the ARN that you copied earlier.
- The deployment process may take 5-10 minutes to create the necessary infrastructure and start the application.


#### Access the Application:
- After deploying the CloudFormation template, you can find the hostname in the output section of the stack, which corresponds to the Application Load Balancer (ALB)
- Currently, it runs on HTTP, but you have the option to switch from ALB targets to use HTTPS. 

#### TODOs
- Update the CloudFormation template to make the AWS region and account ID parameterized. 
- Refactor the names of resources in the CloudFormation template to make them more descriptive. This enhances readability and clarity in understanding the purpose of each resource.
- Implement a separate CloudFormation template specifically for creating secrets in AWS Secrets Manager. This template can be utilized independently and referenced in the main stack, removing manual resource creation.
