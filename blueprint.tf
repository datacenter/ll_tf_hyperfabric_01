locals {
  fabric_name = "${var.fabric_name_prefix}${var.seat_id}"
}

resource "hyperfabric_fabric" "fabric1" {
  name        = local.fabric_name
  description = "This fabric is created by terraform"
}

resource "hyperfabric_node" "node1" {
  fabric_id  = hyperfabric_fabric.fabric1.id
  name       = "leaf1"
  model_name = var.leaf_model_name
  roles      = ["LEAF"]
}

resource "hyperfabric_node" "node2" {
  fabric_id  = hyperfabric_fabric.fabric1.id
  name       = "leaf2"
  model_name = var.leaf_model_name
  roles      = ["LEAF"]
}

resource "hyperfabric_connection" "node1_node2_31" {
  fabric_id = hyperfabric_fabric.fabric1.id
  local = {
    node_id   = hyperfabric_node.node1.node_id
    port_name = var.connection_interface_1
  }
  remote = {
    node_id   = hyperfabric_node.node2.node_id
    port_name = var.connection_interface_1
  }
}

resource "hyperfabric_connection" "node1_node2_32" {
  fabric_id = hyperfabric_fabric.fabric1.id
  local = {
    node_id   = hyperfabric_node.node1.node_id
    port_name = var.connection_interface_2
  }
  remote = {
    node_id   = hyperfabric_node.node2.node_id
    port_name = var.connection_interface_2
  }
}

