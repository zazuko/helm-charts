# Helm Charts

This repository contains the Helm charts for deploying some of the apps we maintain on Kubernetes.

## Usage

To use the charts, you need to add the Zazuko Helm repository:

```sh
helm repo add zazuko https://charts.zazuko.com
```

## Development

Make sure to run the following command to make sure that the charts are valid:

```sh
helm lint zazuko/*
```

And that one to generate/update the README file for each chart:

```sh
./scripts/docs.sh
```

To preview a chart, you can use the following command:

```sh
CHART_NAME=trifid
helm template "zazuko/${CHART_NAME}" --values "zazuko/${CHART_NAME}/values.yaml"
```

To install a chart, you can use the following command:

```sh
CHART_NAME=trifid
helm install "${CHART_NAME}-release" "zazuko/${CHART_NAME}" --values "zazuko/${CHART_NAME}/values.yaml" # --namespace default
```

And to update the chart, you can use the following command:

```sh
CHART_NAME=trifid
helm upgrade "${CHART_NAME}-release" "zazuko/${CHART_NAME}" --values "zazuko/${CHART_NAME}/values.yaml" # --namespace default
```

To uninstall a chart, you can use the following command:

```sh
CHART_NAME=trifid
helm uninstall "${CHART_NAME}-release" # --namespace default
```
