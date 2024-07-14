# Zazuko Helm Charts

[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/zazuko)](https://artifacthub.io/packages/search?repo=zazuko)
[![Downloads](https://img.shields.io/github/downloads/zazuko/helm-charts/total)](https://github.com/zazuko/helm-charts/releases)

This repository contains the Helm charts for deploying some of the apps we maintain on Kubernetes.

## Usage

To use the charts, you need to add the Zazuko Helm repository using the following command:

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

_Optional:_ To sign the charts, you can use the following commands:

```sh
CHART_NAME=trifid
KEY_NAME='Name for your GPG key'
gpg --full-generate-key # Generate a new GPG key
gpg --output private.pgp --armor --export-secret-key "${KEY_NAME}" # Export the private key
cat private.pgp | gpg --dearmor --output private.gpg # Convert the private key to GPG
helm package --sign --key "${KEY_NAME}" --keyring private.pgp "zazuko/${CHART_NAME}" # Package and sign the chart
```
