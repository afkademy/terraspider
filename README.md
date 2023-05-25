# TerraSpider
TerraSpider is a set of terraform configuration files that helps to setup an `AWS infrastructure`, namely:
- 1 VPC
- 1 internet gateway
- x number of private subnets (variable: num_private_subnets)
- x number of public subnets (variable: num_public_subnets)
- 2 route tables (1 public and 1 private)
- corresponding route table associations (private to private and public to public)


## Getting Started

Clone the current repository by running

```ngular2html
git clone https://github.com/afkademy/terraspider.git
```
Change your current directory.

```ngular2html
cd terraspider
```

Initialize terraform. 

```ngular2html
terraform init
```
If you do not have terraform installed, follow the [installation guide](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)


To check the terraform config files, run:
```ngular2html
terraform validate
```

You can also run the following command if you want to check the plan:
```ngular2html
terraform plan
```

Finally to create your insfrastructure on [aws](https://aws.amazonaws.com) run:
```ngular2html
terraform apply -var-file=vars/dev.tfvars
```

## Setting Variables

To change your infrastructure variables, open the file located in:

> vars/dev.tfvars

and make the changes as desired.


## Destroying the infrastructure

To destroy the infrastructure, run the command:
```ngular2html
terraform destroy
```

## Acknowledgements
I would like to acknowledge the following open source resourses/libraries used in this project.
- [VS Code](https://code.visualstudio.com/)
- [terraform by Harshicorp](https://www.terraform.io/)
- [Github](https://github.com)

## License 
MIT License
