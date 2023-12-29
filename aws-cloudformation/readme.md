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
    - Once the secret is created, copy the ARN, which will look like `secretsmanager:arn:aws:secretsmanager:<REGION>:<ACCOUNT>:secret:<ID>`.
    - Search for the existing secret ARN (`secretsmanager:arn:aws:secretsmanager:ap-southeast-1:325094797840:secret:Muro/Dev-zo4WDx`) in the CloudFormation template and replace it with your generated ARN.

#### Verify CloudFormation Template:
- Before deploying the updated CloudFormation template, ensure the following:
    - There is no trace of the AWS account ID (`325094797840`) in the template.
    - There is no trace of the region (`ap-southeast-1`) if you are not deploying in that region.
    - There is no trace of the original secret ARN (`secretsmanager:arn:aws:secretsmanager:ap-southeast-1:325094797840:secret:Muro/Dev-zo4WDx`).

#### Deploy CloudFormation Template:
- Upload the modified CloudFormation template using the AWS CloudFormation console.
- The deployment process may take 5-10 minutes to create the necessary infrastructure and start the application.


#### Access the Application:
- Once the CloudFormation template is deployed, retrieve the domain name from the Application Load Balancer (ALB).
- Access the application by navigating to the ALB's domain in your web browser.


#### TODOs
- Update the CloudFormation template to make the AWS region and account ID parameterized. 
- Refactor the names of resources in the CloudFormation template to make them more descriptive. This enhances readability and clarity in understanding the purpose of each resource.
- Implement a separate CloudFormation template specifically for creating secrets in AWS Secrets Manager. This template can be utilized independently and referenced in the main stack, removing manual resource creation.
