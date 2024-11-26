resource "aws_instance" "name" {
        ami = "ami-063d43db0594b521b"  # Replace with a valid AMI ID for your region
        instance_type = "t2.micro"
        key_name= "Terra"  # Optional if you created a key pair above
}