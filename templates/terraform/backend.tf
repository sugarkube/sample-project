terraform {
{{- if eq .stack.provider "aws" }}
  backend "s3" {
    bucket = "{{ .terraform.state.bucket }}"
    key    = "{{ .terraform.state.key }}"
    region = "{{ .stack.region }}"
    encrypt = true
  }
{{- else }}
  backend "local" {
    path = "terraform.tfstate"
  }
{{- end }}
}
