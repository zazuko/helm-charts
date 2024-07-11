# trifid

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v5.0.4](https://img.shields.io/badge/AppVersion-v5.0.4-informational?style=flat-square)

Zazuko Trifid

**Homepage:** <https://github.com/zazuko/trifid>

## Installation

```sh
helm repo add zazuko https://charts.zazuko.com
helm install trifid zazuko/trifid
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| autoscaling.enabled | bool | `false` |  |
| autoscaling.maxReplicas | int | `100` |  |
| autoscaling.minReplicas | int | `1` |  |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| config.file | string | `""` | Override the path to the Trifid configuration file |
| dataset.baseUrl | string | `""` | Base URL for the dataset |
| extraEnv | list | `[]` | Additional environment variables to set |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` | Configure the imagePullPolicy, values could be: `Always`, `IfNotPresent`, `Never` |
| image.repository | string | `"ghcr.io/zazuko/trifid"` | Docker image used to deploy the Trifid instance |
| image.tag | string | `""` | Overrides the image tag whose default is the chart appVersion. |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.className | string | `""` |  |
| ingress.enabled | bool | `false` | Enable Ingress |
| ingress.hosts[0].host | string | `"trifid-example.local"` |  |
| ingress.hosts[0].paths[0].path | string | `"/"` |  |
| ingress.hosts[0].paths[0].pathType | string | `"ImplementationSpecific"` |  |
| ingress.tls | list | `[]` |  |
| livenessProbe.httpGet.path | string | `"/healthz"` |  |
| livenessProbe.httpGet.port | string | `"http"` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podLabels | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| readinessProbe.httpGet.path | string | `"/healthz"` |  |
| readinessProbe.httpGet.port | string | `"http"` |  |
| replicaCount | int | `1` | Number of replicas |
| resources | object | `{}` |  |
| securityContext.capabilities | object | `{}` | Capabilities to add/drop |
| securityContext.readOnlyRootFilesystem | bool | `true` | Is the filesystem read-only? |
| securityContext.runAsNonRoot | bool | `true` | Run the container as a non-root user? |
| securityContext.runAsUser | int | `1000` | User ID to run the container as |
| service.port | int | `8080` | Port where Trifid is exposed |
| service.type | string | `"ClusterIP"` | Type of service to create (`ClusterIP`, `NodePort`, `LoadBalancer`, or `ExternalName`) |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.automount | bool | `true` |  |
| serviceAccount.create | bool | `false` |  |
| serviceAccount.name | string | `""` |  |
| sparql.endpoint | string | `""` | URL of the SPARQL endpoint (required) |
| sparql.password | string | `""` | Password for the SPARQL endpoint |
| sparql.username | string | `""` | Username for the SPARQL endpoint |
| tolerations | list | `[]` |  |
| volumeMounts | list | `[]` |  |
| volumes | list | `[]` |  |

