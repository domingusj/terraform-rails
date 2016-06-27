variable "region" {
  default = "us-central1"
}

variable "region_zone" {
  default = "us-central1-f"
}

variable "project_name" {
  description = "The ID of the Google Cloud project"
  default = "jenkins-rails"
}

variable "credentials_file_path" {
  description = "Path to the JSON file used to describe your account credentials"
  default = "~/.gcloud/Terraform.json"
}

variable "public_key_path" {
  description = "Path to file containing public key"
  default = "~/.ssh/gcloud_id_rsa.pub"
}

variable "private_key_path" {
  description = "Path to file containing private key"
  default = "~/.ssh/gcloud_id_rsa"
}

variable "web_install_script_src_path" {
  description = "Path to install script within this repository"
  default = "scripts/web-install.sh"
}

variable "web_install_script_dest_path" {
  description = "Path to put the install script on each destination resource"
  default = "/tmp/web-install.sh"
}

variable "jenkins_install_script_src_path" {
  description = "Path to install script within this repository"
  default = "scripts/jenkins-install.sh"
}

variable "jenkins_install_script_dest_path" {
  description = "Path to put the install script on each destination resource"
  default = "/tmp/jenkins-install.sh"
}
