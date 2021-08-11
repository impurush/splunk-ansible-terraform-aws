resource "aws_instance" "splunk_server" {
    ami = "ami-0df612970f825f04c"
    instance_type = "t2.micro"
}

resource "aws_s3_bucket" "splunk_server_storage"{
    bucket = "splunk_server_storage_purush"
    acl    = "private"

    tags{
      name = "Splunk Binaries"
      Environment = "Dev"
    }
}
