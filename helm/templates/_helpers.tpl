{{- define "hello-world-deployment.name" -}}
hello-world
{{- end -}}

{{- define "hello-world-deployment.fullname" -}}
{{ .Release.Name }}-hello-world
{{- end -}}

{{- define "hello-world-deployment.labels" -}}
app.kubernetes.io/name: {{ include "hello-world-deployment.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
