resource "google_container_cluster" "gke-cluster" {
  name               = "gke-dev"
  network            = "default"
  # Deploy one node only per region
  # TODO: Figure out how to do non-regional cluster deploy
  initial_node_count = 1
}
