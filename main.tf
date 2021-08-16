variable "foo" {
  type = string
  default = "{\"boop\":\"beep\"}"
}

variable "bar" {
  type = string
  default = "honk"
}

variable "baz" {
  type = string
  default = "[1,2,3,4]"
}

resource "null_resource" "none" {
  triggers = sensitive({
    foo = var.foo
    bar = var.bar
    baz = var.baz
  })
}
