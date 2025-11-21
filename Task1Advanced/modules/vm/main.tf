terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}

data "yandex_compute_image" "ubuntu" {
  family = var.image_family
}

resource "yandex_compute_disk" "vm_disk" {
  name     = "${var.vm_name}-disk"
  type     = var.vm_disk_type
  zone     = var.zone
  image_id = data.yandex_compute_image.ubuntu.image_id
  size     = var.vm_disk_size
}

resource "yandex_compute_instance" "vm" {
  name        = var.vm_name
  platform_id = var.platform_id
  zone        = var.zone

  resources {
    cores  = var.vm_cores
    memory = var.vm_memory
    core_fraction = var.vm_core_fraction 
  }

  boot_disk {
    disk_id = yandex_compute_disk.vm_disk.id
  }

  network_interface {
    subnet_id = var.subnet_id
    nat       = var.nat
  }

  metadata = {
    ssh-keys = "ubuntu:${var.ssh_public_key}"
  }

  scheduling_policy {
    preemptible = var.environment == "dev" ? true : false
  }

  lifecycle {
    create_before_destroy = true
  }
}
