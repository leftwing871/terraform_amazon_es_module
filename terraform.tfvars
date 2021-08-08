# Credentials Profile
profile = "default"

region = "ap-northeast-2"

tags = {
  Account = "terraform"
}

aws_elasticsearch_domain_name = "dev-es"
aws_elasticsearch_vpc_options_subnet_ids = ["subnet-08dad213f405de79f"]
aws_elasticsearch_vpc_options_security_group_ids = ["sg-07c5e039c81dda51d"]
aws_elasticsearch_version = "7.10"
aws_elasticsearch_instance_type = "c5.xlarge.elasticsearch"
aws_elasticsearch_ebs_options_ebs_enabled = true
aws_elasticsearch_ebs_volume_size = 100

