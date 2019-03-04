terraform {
{{- if eq .stack.provider "aws" }}
  backend "s3" {
    bucket = "{{ .kapp.vars.terraform.state.bucket }}"
    key    = "{{ .kapp.vars.terraform.state.path }}/{{ .kapp.id }}"
    kms_key_id = "{{ .kapp.vars.terraform.state.kms_key_id }}"
    region = "{{ .stack.region }}"
  }
{{- else }}
  backend "local" {
    path = "terraform.tfstate"
  }
{{- end }}
}
