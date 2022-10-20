provider "aws" {
  region     = "eu-central-1"
}

resource "aws_eks_cluster" "example" {
  name     = "example"
  role_arn = ""

  vpc_config {
    subnet_ids = ["a", "b", "c"]
 }

}

output "endpoint" {
  value = aws_eks_cluster.example.endpoint
}

output "kubeconfig-certificate-authority-data" {
  value = aws_eks_cluster.example.certificate_authority[0].data
}