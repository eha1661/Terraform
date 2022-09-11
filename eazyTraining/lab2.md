
### Lab 2 : Deplpoy a Dynamic Infrastructure

Create an EC2 instance with a public addresse IP and a security group
Make sure to make infrastracture dynamic using varibales ( tag )

Steps:
* create a ec2 that has the followig specs:
    * latest version of Amazon Linux OS
    * N. Virginia (us-east-1)
    * tag ec2-lab1
    * inclue lab-key.pem into the VM
* Create an Elastic IP adresse 
* Create a security group 
* associate the EIP and SG to the EC2 instance


### Notes
[Variable Definition & Variable Precedence Official doc](https://www.terraform.io/language/values/variables#variables-on-the-command-line)