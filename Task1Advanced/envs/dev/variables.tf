variable "yandex_token" {
  description = "OAuth токен для Yandex Cloud"
  type        = string
  sensitive   = true
}

variable "environment" {
  description = "Окружение (dev, stage, prod)"
  type        = string
}

variable "cloud_id" {
  description = "ID облака в Yandex Cloud"
  type        = string
}

variable "folder_id" {
  description = "ID папки в Yandex Cloud"
  type        = string
}

variable "vm_name" {
  description = "Имя виртуальной машины"
  type        = string
  default     = "dev-vm"
}

variable "vm_cores" {
  description = "Количество ядер процессора"
  type        = number
  default     = 2
}

variable "vm_core_fraction" {
  description = "% Производительности ядра процессора"
  type        = number
  default     = 20
}

variable "vm_memory" {
  description = "Объём оперативной памяти в ГБ"
  type        = number
  default     = 1
}

variable "vm_disk_size" {
  description = "Размер диска в ГБ"
  type        = number
  default     = 20
}

variable "vm_disk_type" {
  description = "Тип диска"
  type        = string
  default     = "network-ssd"
}

variable "subnet_id" {
  description = "ID подсети"
  type        = string
}

variable "ssh_public_key" {
  description = "Публичный SSH-ключ"
  type        = string
}

variable "image_family" {
  description = "Семейство образов ОС"
  type        = string
  default     = "ubuntu-2204-lts"
}

variable "zone" {
  description = "Зона доступности"
  type        = string
  default     = "ru-central1-b"
}

variable "platform_id" {
  description = "ID платформы"
  type        = string
  default     = "standard-v1"
}

variable "nat" {
  description = "Включить NAT"
  type        = bool
  default     = true
}
