terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
  
  backend "s3" {
    endpoints = {
      s3 = "https://storage.yandexcloud.net"
    }
    bucket = "tf-bucket-practicum-ep"
    region = "ru-central1"
    key    = "dev/env.tfstate" #"<путь_к_файлу_состояния_в_бакете>/<имя_файла_состояния>.tfstate"
    skip_region_validation      = true
    skip_credentials_validation = true
    skip_requesting_account_id  = true # Необходимая опция Terraform для версии 1.6.1 и старше.
    skip_s3_checksum            = true # Необходимая опция при описании бэкенда для Terraform версии 1.6.3 и старше.
  }
}

provider "yandex" {
  token     = var.yandex_token
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  zone      = var.zone
}

module "vm" {
  source = "../../modules/vm"

  vm_name          = var.vm_name
  vm_cores         = var.vm_cores
  vm_core_fraction = var.vm_core_fraction
  vm_memory        = var.vm_memory
  vm_disk_size     = var.vm_disk_size
  vm_disk_type     = var.vm_disk_type
  subnet_id        = var.subnet_id
  ssh_public_key   = var.ssh_public_key
  image_family     = var.image_family
  zone             = var.zone
  platform_id      = var.platform_id
  nat              = var.nat
  environment      = var.environment
  folder_id        = var.folder_id
}
