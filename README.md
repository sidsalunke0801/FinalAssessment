# FinalAssignment
I have created 3 workspaces dev, test and prod and it's respective tfvars

To run the code environmentwise, use below commands
For DEV
terraform workspace select dev
terraform apply -var-file dev.tfvars

For TEST
terraform workspace select test
terraform apply -var-file test.tfvars

For PROD
terraform workspace select prod
terraform apply -var-file prod.tfvars