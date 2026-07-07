# Terraform vs GCP

## What does Terraform and GCP do hand-in-hand

    - terraform init: provider - piece of code that Terraform uses to talk to GCP

### What is .terraform.lock.hcl

    .terraform.lock.hcl does NOT give anyone GCP access

    If someone forks your repository and gets:

    .terraform.lock.hcl
    main.tf
    variables.tf

    they only get your Terraform configuration and provider version information.

    They do not get:

    Your GCP account access
    Your service account permissions
    Your billing account
    Your Cloud Storage bucket access
    Your BigQuery data

    because those require credentials.
