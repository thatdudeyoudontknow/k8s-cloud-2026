{{- define "webstack.labels" -}}
app.kubernetes.io/name: web-stack
app.kubernetes.io/part-of: k8s-portfolio
app.kubernetes.io/managed-by: {{ .Release.Service }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end -}}
{{- define "webstack.component.labels" -}}
app.kubernetes.io/name: web-stack
app.kubernetes.io/part-of: k8s-portfolio
app.kubernetes.io/component: {{ . }}
{{- end -}}
