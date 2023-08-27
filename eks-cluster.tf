module "eks" {
    source  = "terraform-aws-modules/eks/aws"
    version = "~> 19.0"
    cluster_name = "myapp-eks-cluster"
    cluster_version = "1.27"

    cluster_endpoint_public_access  = true

    vpc_id = "vpc-01b15407fe957f41c"
    subnet_ids = ["subnet-09f0ff906bfe06fd1", "subnet-0feec2e7f4231a524", "subnet-02c376b0bea7c2f67", "subnet-09edf24882a574017", "subnet-002743c2f72b47d25"]

    tags = {
        environment = "development"
        application = "myapp"
    }

    eks_managed_node_groups = {
        dev = {
            min_size = 1
            max_size = 3
            desired_size = 2

            instance_types = ["t2.medium"]
        }
    }
}
