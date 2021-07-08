variable "foo" {
  type = string
  default = "{\"boop\":\"beep\"}"
}

resource "null_resource" "none" {
  triggers = {
    foo = var.foo
  }
}
