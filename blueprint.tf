locals {
  fabric_name = "${var.fabric_name_prefix}${var.seat_id}"
}

resource "hyperfabric_fabric" "fabric1" {
  name        = local.fabric_name
}
