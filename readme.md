# MuroChat

MuroChat an open-source LLM chat application 
![alt text](https://assets-global.website-files.com/6284902eb19fedf2a8cf76d2/658408d52a3a9e1f705c59ad_MuroChat%20announcement%20(1).jpg "Muro LLM Chat")

## MuroChat
We're excited to introduce MuroChat — an open-source LLM chat application designed for enterprises. 

Our employees wanted to use ChatGPT for tasks like generating code, creating content, writing emails, and other day-to-day tasks. However, we were concerned about the risks involved in terms of protecting our intellectual property and personal data. To address this, we decided to develop our own chat application that would allow us to keep complete control over our data. With this unique approach, sensitive information remained secure within our company, shielding our IP and personal data from potential leaks.

During the development of MuroChat, we realized that many other companies faced similar challenges with their internal chat applications. We recognized that providing an open-source solution would not only address our own concerns but also empower other organizations to bootstrap and develop their secure chat applications. By sharing MuroChat under the permissive MIT license, we welcome developers and enterprises to contribute to its growth and evolution. Together, we can shape the future of secure communication.


### Key Features
- Sensitive Data Redaction with a message firewall.
- Okta Integration for user management.
- Flexible LLM Integration for any open-source or premium models.
- User-Centric Design to manage, pin, share, and bookmark chats.
- Real-Time Admin Oversight for chat monitoring and access control.

### Why MuroChat?
- Focused on Data Privacy with a security-first approach.
- Developer Freedom to choose and customize LLMs and data models.
- Community-Centric Updates for continuous platform enhancement.

### For Employees, By Employees 
- We want to empower every employee to be the best at what they do by leveraging AI without breaking the security fabric of the company. 
- MuroChat is highly modular and open for all to innovate.

## Repositories
- Installation Package: https://github.com/Privado-Inc/MuroChat
- Frontend Package: https://github.com/Privado-Inc/MuroChat-UI
- Backend Package: https://github.com/Privado-Inc/MuroChat-Backend

## Docker Images
- Frontend Package: public.ecr.aws/privado/murochat-ui:prod
- Backend Package: public.ecr.aws/privado/murochat-backend:prod

Above images are released from the `main` branch of respective repositoires. For Backend, https://github.com/Privado-Inc/MuroChat-Backend and frontned, https://github.com/Privado-Inc/MuroChat-UI

## Installation Guides

This installation package provides you with an easy way to quickly install the application. Below are folders containing different sets of installation packages:
- The `ubuntu` folder contains the scripts required to install MuroChat on Ubuntu. Check out the [readme](https://github.com/Privado-Inc/MuroChat/blob/main/ubuntu/readme.md) for more details.
- The `aws-cloudformation` folder: *Soon, we are going to release a CloudFormation template for the AWS environment, which will install the application on AWS quickly.*


## Product Images
![alt text](https://github.com/Privado-Inc/MuroChat/blob/main/images/datafirewall1.png "Muro DataFirewall 2")

![alt text](https://github.com/Privado-Inc/MuroChat/blob/main/images/chatList.png "Muro Chat List Page")
![alt text](https://github.com/Privado-Inc/MuroChat/blob/main/images/share.png "Muro Chat Share Page")
![alt text](https://github.com/Privado-Inc/MuroChat/blob/main/images/okta.png "Muro Chat Onboarding Page")

