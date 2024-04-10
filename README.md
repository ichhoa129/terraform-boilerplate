# Terraform Project Template

This repository serves as a boilerplate for organizing Terraform configurations. It provides a structured layout for managing infrastructure as code (IaC) using Terraform.

## Project Structure
```
|-- environments
| |-- dev
| | |-- backend.tf
| | |-- main.tf
| | |-- outputs.tf
| | |-- provider.tf
| | |-- README.md
| | |-- terraform.tfvars
| | |-- variables.tf
| | |-- versions.tf
| |-- stg
| | |-- backend.tf
| | |-- main.tf
| | |-- outputs.tf
| | |-- provider.tf
| | |-- README.md
| | |-- terraform.tfvars
| | |-- variables.tf
| | |-- versions.tf
|-- modules
| |-- s3
| | |-- main.tf
| | |-- outputs.tf
| | |-- variables.tf
| |-- security-group
| | |-- main.tf
| | |-- outputs.tf
| | |-- variables.tf
| |-- vpc
| | |-- main.tf
| | |-- outputs.tf
| | |-- variables.tf

```


## Explanation

### `modules/`
This directory contains reusable Terraform modules. Each module is a collection of Terraform configurations for a specific piece of infrastructure or resource.

- **s3**: Contains configurations for creating an Amazon S3 bucket.
- **security-group**: Contains configurations for creating a security group.
- **vpc**: Contains configurations for creating a Virtual Private Cloud (VPC).

### `environments/`
This directory contains environments where the infrastructure will be deployed.

- **dev**: Development environment configurations.
  - **backend.tf**: Configuration for Terraform backend (e.g., state storage).
  - **main.tf**: Main Terraform configuration for the dev environment.
  - **outputs.tf**: Outputs from the dev environment.
  - **provider.tf**: Provider configuration (e.g., AWS provider).
  - **README.md**: Readme file specific to the dev environment.
  - **terraform.tfvars**: Terraform variable definitions for the dev environment.
  - **variables.tf**: Variable definitions used in the dev environment.
  - **versions.tf**: Terraform version constraints for the dev environment.
- **stg**: Staging environment configurations (similar structure to dev).


## Commands
```bash
terraform plan -var-file="dev.tfvars"
terraform apply -var-file="dev.tfvars"
```


## Usage

To use this Terraform project, follow these steps:

1. **Install Terraform**: If Terraform is not already installed, download and install it from the [official website](https://www.terraform.io/downloads.html).

2. **Prepare AWS Credentials**: Ensure you have AWS credentials configured either through environment variables or AWS CLI configuration.

3. **Initialize Terraform**: Navigate to the environment directory (e.g., `environments/dev`) and run `terraform init` to initialize the environment.

4. **Review Variables**: Review the `terraform.tfvars` file in the environment directory to ensure all necessary variables are defined.

5. **Plan Infrastructure**: Run `terraform plan` to see what Terraform will do when you apply the configuration.

6. **Apply Changes**: If the plan looks good, apply the changes by running `terraform apply`.

7. **Verify Deployment**: After Terraform applies the changes, verify that the infrastructure has been deployed as expected.

8. **Clean Up**: To clean up the infrastructure, run `terraform destroy` after you're finished.
