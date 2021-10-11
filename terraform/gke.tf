resource "google_container_cluster" "primary" {
  name             = "gke-autopilot"
  location         = "europe-central2"
  enable_autopilot = true
  network          = google_compute_network.vpc_network.name
  # subnetwork       = google_compute_subnetwork.subnetwork_1.name
  private_cluster_config {
    enable_private_nodes    = true
    master_ipv4_cidr_block  = "192.168.0.0/28"
    enable_private_endpoint = false
  }
  vertical_pod_autoscaling {
    enabled = true
  }
  ip_allocation_policy {
    cluster_ipv4_cidr_block  = "10.21.128.0/17"
    services_ipv4_cidr_block = "10.22.0.0/22"
  }
}
