terraform {
{{- if eq .stack.provider "aws" }}
  backend "s3" {
    bucket = "{{ .terraform.state.bucket }}"
    key    = "{{ .terraform.state.path }}/{{ .kapp.id }}/terraform.tfstate"
    region = "{{ .stack.region }}"
    encrypt = true
//    kms_key_id = "{{ .outputs.prelaunch__terraform_bucket.terraform.bucket_encryption_key }}"
  }
{{- else }}
  backend "local" {
    path = "terraform.tfstate"
  }
{{- end }}
}
