resource "aws_vpc" "tdvpc" {
   cidr_block = var.tdvpcidr
}

resource "aws_subnet" "prisub" {
   vpc_id = "tdvpc"
   cidr_block = var.subpricidr
   tags {
     Name = "prisub"
   }
}