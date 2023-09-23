// the properties (replace your data with my data)

region              = "us-east-1"

protect_termination = true
 
instance_type       = "t2.micro"
 
ami_type            = "ami-0989fb15ce71ba39e"

monitoring          = true

ssh_key_name        = "vpn-ec2-key-2023"
 
subnet_id           = "subnet-fb3394a022"
 
security_groups_id  = "sg-225f300e1"

bash_script         = "serverside-script.sh"

machines_name       = ["machine_1","machine_2", "machine_3"] # add or remove names to define the number of the instances that Terraform will creates

ebs_condition       = true

ebs_size            = 512
