terraform {
{{- if eq .stack.provider "aws" }}
  backend "s3" {
    bucket = "{{ .terraform.state.bucket }}"
    key    = "{{ .terraform.state.path }}/{{ .kapp.id }}/terraform.tfstate"
    region = "{{ .stack.region }}"
  }
{{- else }}
  backend "local" {
    path = "terraform.tfstate"
  }
{{- end }}
}
