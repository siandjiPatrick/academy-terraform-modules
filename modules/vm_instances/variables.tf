variable "instance_name"{
  type = string
}

variable "machine_type"{
  type = string
  default = "e2-micro"
}


variable "startup_scrip" {
  type = string 
}