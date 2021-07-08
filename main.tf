variable "foo" {
  type = string
  default = jsonencode({
    boop = "beep"
  })
}

resource "null_resource" "none" {
  triggers = {
    foo = var.foo
  }
}
