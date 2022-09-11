

### Lab 1
Create an EC2 instance on aws using Terraform

requirements:
- secret key and secret access key 
- create a keypair ssh (lab-key.pem)

Steps:
* create a ec2 that has the followig specs:
    * VM centos7-minimal-v20190919.0.0 (ami-0083662ba17882949)
    * N. Virginia (us-east-1)
    * tag ec2-lab1
    * inclue lab-key.pem into the VM




#### commands 

``` bash
terraform init

terraform plan

terraform apply

terraform apply
```

### note 
Instead of using Hard-coded credentials. we use Environment Variables instead.
``` bash 
$ export AWS_ACCESS_KEY_ID="anaccesskey"
$ export AWS_SECRET_ACCESS_KEY="asecretkey"
```
Other options are described in the official doc [link](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)


### resources
[Terraform - aws get started](https://learn.hashicorp.com/tutorials/terraform/infrastructure-as-code?in=terraform/aws-get-started)