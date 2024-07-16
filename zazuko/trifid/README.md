# trifid

![Version: 0.1.2](https://img.shields.io/badge/Version-0.1.2-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v5.0.6](https://img.shields.io/badge/AppVersion-v5.0.6-informational?style=flat-square)

Lightweight Linked Data Server and Proxy

**Homepage:** <https://github.com/zazuko/trifid>

## Installation

```sh
helm repo add zazuko https://charts.zazuko.com
helm install trifid zazuko/trifid
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | affinity to use |
| autoscaling.enabled | bool | `false` | enabled allows you to enable or disable autoscaling |
| autoscaling.maxReplicas | int | `100` | maxReplicas is the maximum number of replicas that will be set when autoscaling is enabled |
| autoscaling.minReplicas | int | `1` | minReplicas is the minimum number of replicas that will be set when autoscaling is enabled |
| autoscaling.targetCPUUtilizationPercentage | int | `80` | targetCPUUtilizationPercentage is the target average CPU utilization across all pods |
| autoscaling.targetMemoryUtilizationPercentage | int | `80` | targetMemoryUtilizationPercentage is the target average memory utilization across all pods |
| config.file | string | `""` | file is the path to the Trifid configuration file |
| dataset.baseUrl | string | `""` | baseUrl is the base URL for the dataset |
| extraEnv | list | `[]` | extraEnv is a list of extra environment variables to set |
| fullnameOverride | string | `""` | fullnameOverride overrides the full name of the chart |
| image.pullPolicy | string | `"IfNotPresent"` | pullPolicy is the policy to use when pulling the image |
| image.repository | string | `"ghcr.io/zazuko/trifid"` | repository is the Docker image to use |
| image.tag | string | `""` | tag is used to overrides the image tag whose default is the chart appVersion |
| imagePullSecrets | list | `[]` | imagePullSecrets used to pull the Docker image |
| ingress.annotations | object | `{}` | annotations to add to the Ingress |
| ingress.className | string | `""` | className is the ingress class to use |
| ingress.enabled | bool | `false` | enabled allows you to enable or disable the Ingress |
| ingress.hosts | list | `[{"host":"trifid-example.local","paths":[{"path":"/","pathType":"ImplementationSpecific"}]}]` | hosts is the list of hostnames to be exposed |
| ingress.tls | list | `[]` | tls is the list of TLS configuration |
| livenessProbe | object | `{"httpGet":{"path":"/healthz","port":"http"}}` | livenessProbe is a health check to determine if the container is still running |
| nameOverride | string | `""` | nameOverride overrides the chart name |
| nodeSelector | object | `{}` | nodeSelector to use |
| podAnnotations | object | `{}` | podAnnotations to use |
| podLabels | object | `{}` | podLabels to use |
| podSecurityContext | object | `{}` | podSecurityContext to use |
| readinessProbe | object | `{"httpGet":{"path":"/healthz","port":"http"}}` | readinessProbe is a health check to determine if the container is ready to serve traffic |
| replicaCount | int | `1` | replicaCount is the number of replicas to deploy |
| resources | object | `{}` | resources to request for the pod |
| securityContext.capabilities | object | `{}` | capabilities to add/drop |
| securityContext.readOnlyRootFilesystem | bool | `true` | readOnlyRootFilesystem tells if the container should have a read-only root filesystem |
| securityContext.runAsNonRoot | bool | `true` | runAsNonRoot tells if the container should run as a non-root user |
| securityContext.runAsUser | int | `1000` | runAsUser is the user ID to run the container as |
| service.port | int | `8080` | port is the port the service will listen on |
| service.type | string | `"ClusterIP"` | type is the type of service to create |
| serviceAccount.annotations | object | `{}` | annotations to add to the service account |
| serviceAccount.automount | bool | `true` | automount tells if the service account should be automounted |
| serviceAccount.create | bool | `false` | create tells if a service account should be created |
| serviceAccount.name | string | `""` | name is the name of the service account to use |
| sparql.endpoint | string | `"http://example.com/query"` | endpoint is the URL of the SPARQL endpoint (required) |
| sparql.password | string | `""` | password for the SPARQL endpoint |
| sparql.username | string | `""` | username for the SPARQL endpoint |
| tolerations | list | `[]` | tolerations to use |
| volumeMounts | list | `[]` | volume mounts to use |
| volumes | list | `[]` | volumes to mount on the output Deployment definition |

