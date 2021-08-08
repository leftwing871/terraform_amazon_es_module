# elasticsearch
resource "aws_elasticsearch_domain" "elasticsearch_domain" {
  domain_name           = var.aws_elasticsearch_domain_name
  elasticsearch_version = var.aws_elasticsearch_version

  cluster_config {
    instance_type = var.aws_elasticsearch_instance_type
  }

  vpc_options {
    subnet_ids = var.aws_elasticsearch_vpc_options_subnet_ids
    security_group_ids = var.aws_elasticsearch_vpc_options_security_group_ids
  }

  ebs_options {
    ebs_enabled = var.aws_elasticsearch_ebs_options_ebs_enabled
    volume_size = var.aws_elasticsearch_ebs_volume_size
  }

  snapshot_options {
    automated_snapshot_start_hour = 23
  }

  tags = {
    Domain = "TestDomain"
  }
}
