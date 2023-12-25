variable "instance_name"{
  type = string
}

variable "machine_type"{
  type = string
  default = "e2-micro"
}


variable "startup_scrip" {
  type = string
  default = <<EOT
    echo "das ist mein hostname: $HOSTNAME" > ~/my_hostname.txt
    EOT
  
  
}