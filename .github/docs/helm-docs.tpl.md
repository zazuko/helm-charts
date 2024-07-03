{{ template "chart.header" . }}

{{ template "chart.deprecationWarning" . }}

{{ template "chart.badgesSection" . }}

{{ template "chart.description" . }}

{{ template "chart.homepageLine" . }}

## Installation

```bash
helm repo add zazuko https://charts.zazuko.com
helm install {{ template "chart.name" . }} zazuko/{{ template "chart.name" . }}
```

{{ template "chart.valuesSection" . }}

{{ template "chart.maintainersSection" . }}

{{ template "chart.sourcesSection" . }}

{{ template "chart.requirementsSection" . }}

{{ template "chart.sourcesSection" . }}

{{ template "chart.requirementsSection" . }}
