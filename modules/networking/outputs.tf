output "vpc_id" {
    value = aws_vpc.demo.id
}

output "subnet" {
    value = aws_subnet.demo.*.id
}