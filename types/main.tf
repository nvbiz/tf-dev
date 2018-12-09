data "linode_instance_type" "default" {
    id = "g6-standard-pim(p)"
    class = "nanode"
    price = "$NAN_PRIX"
}

data "linode_instance_type" "big-one" {
    id = "g4-standard"
    class = "standard"
    label = "yellow"
}
