module "eks" {
    source  = "terraform-aws-modules/eks/aws"
    version = "~> 19.0"
    cluster_name = "myapp-eks-cluster"
    cluster_version = "1.27"

    cluster_endpoint_public_access  = true

    vpc_id = "vpc-073a176c9982bb6b3"
    subnet_ids = ["subnet-09e5086cb5732ef92", "subnet-0c560d4762e677007", "subnet-012bf135fc92de1b3", "subnet-09ed9c8d387893fe4", "subnet-07be01196f968b01d"]

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