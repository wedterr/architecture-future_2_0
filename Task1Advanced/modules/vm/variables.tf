variable "folder_id" {
  description = "ID папки в Yandex Cloud"
  type        = string
}

variable "vm_name" {
  description = "Имя виртуальной машины"
  type        = string
}

variable "vm_cores" {
  description = "Количество ядер процессора"
  type        = number
  default     = 2
}

variable "vm_memory" {
  description = "Объём оперативной памяти в ГБ"
  type        = number
  default     = 4
}

variable "vm_core_fraction" {
  description = "% Производительности ядра процессора"
  type        = number
  default     = 20
}

variable "vm_disk_size" {
  description = "Размер подключаемого диска в ГБ"
  type        = number
  default     = 20
}

variable "vm_disk_type" {
  description = "Тип диска (network-hdd, network-ssd, local-ssd)"
  type        = string
  default     = "network-ssd"
}

variable "subnet_id" {
  description = "ID подсети для подключения ВМ"
  type        = string
}

variable "ssh_public_key" {
  description = "Публичный SSH-ключ для доступа к ВМ"
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
  description = "ID платформы (standard-v1, standard-v2, standard-v3)"
  type        = string
  default     = "standard-v1"
}

variable "nat" {
  description = "Включить NAT для доступа в интернет"
  type        = bool
  default     = true
}

variable "environment" {
  description = "Окружение (dev, stage, prod)"
  type        = string
}
