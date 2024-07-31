# fuseki

![Version: 0.0.5](https://img.shields.io/badge/Version-0.0.5-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v3.3.1](https://img.shields.io/badge/AppVersion-v3.3.1-informational?style=flat-square)

Fuseki with GeoSPARQL support

**Homepage:** <https://github.com/zazuko/fuseki-geosparql>

## Installation

```sh
helm repo add zazuko https://charts.zazuko.com
helm install fuseki zazuko/fuseki
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
| config.adminPassword | string | `"admin"` | adminPassword is the password for the admin user |
| config.disableOtel | bool | `true` | disableOtel tells if OpenTelemetry should be disabled |
| config.javaOpts | string | `"-Xmx2048m -Xms2048m"` | javaOpts is the Java options to use |
| extraEnv | list | `[]` | extraEnv is a list of extra environment variables to set |
| fullnameOverride | string | `""` | fullnameOverride overrides the full name of the chart |
| image.pullPolicy | string | `"IfNotPresent"` | pullPolicy is the policy to use when pulling the image |
| image.repository | string | `"ghcr.io/zazuko/fuseki-geosparql"` | repository is the Docker image to use |
| image.tag | string | `""` | tag is used to overrides the image tag whose default is the chart appVersion |
| imagePullSecrets | list | `[]` | imagePullSecrets used to pull the Docker image |
| ingress.annotations | object | `{}` | annotations to add to the Ingress |
| ingress.className | string | `""` | className is the ingress class to use |
| ingress.enabled | bool | `false` | enabled allows you to enable or disable the Ingress |
| ingress.hosts | list | `[]` | hosts is the list of hostnames to be exposed |
| ingress.tls | list | `[]` | tls is the list of TLS configuration |
| livenessProbe | object | `{"httpGet":{"path":"/$/ping","port":"http"}}` | livenessProbe is a health check to determine if the container is still running |
| nameOverride | string | `""` | nameOverride overrides the chart name |
| nodeSelector | object | `{}` | nodeSelector to use |
| podAnnotations | object | `{}` | podAnnotations to use |
| podLabels | object | `{}` | podLabels to use |
| podSecurityContext.fsGroup | int | `1000` | fsGroup is the group ID to run the container as |
| podSecurityContext.runAsGroup | int | `1000` | runAsGroup is the group ID to run the container as |
| podSecurityContext.runAsNonRoot | bool | `true` | runAsNonRoot tells if the container should run as a non-root user |
| podSecurityContext.runAsUser | int | `1000` | runAsUser is the user ID to run the container as |
| readinessProbe | object | `{"httpGet":{"path":"/$/ping","port":"http"}}` | readinessProbe is a health check to determine if the container is ready to serve traffic |
| replicaCount | int | `1` | replicaCount is the number of replicas to deploy |
| resources | object | `{}` | resources to request for the pod |
| securityContext.allowPrivilegeEscalation | bool | `false` | allowPrivilegeEscalation tells if the container can request to allow privilege escalation |
| securityContext.capabilities | object | `{}` | capabilities to add/drop |
| securityContext.privileged | bool | `false` | privileged tells if the container is privileged |
| securityContext.readOnlyRootFilesystem | bool | `false` | readOnlyRootFilesystem tells if the container should have a read-only root filesystem |
| securityContext.runAsNonRoot | bool | `true` | runAsNonRoot tells if the container should run as a non-root user |
| securityContext.runAsUser | int | `1000` | runAsUser is the user ID to run the container as |
| securityContext.seLinuxOptions | object | `{}` | seLinuxOptions to add |
| service.port | int | `3030` | port is the port the service will listen on |
| service.type | string | `"ClusterIP"` | type is the type of service to create |
| serviceAccount.annotations | object | `{}` | annotations to add to the service account |
| serviceAccount.automount | bool | `true` | automount tells if the service account should be automounted |
| serviceAccount.create | bool | `false` | create tells if a service account should be created |
| serviceAccount.name | string | `""` | name is the name of the service account to use |
| storage.accessMode | string | `"ReadWriteOnce"` | accessMode is the access mode to use |
| storage.enabled | bool | `true` | enabled tells if the storage should be enabled |
| storage.existingClaim | string | `""` | existingClaim is the name of an existing PVC to use |
| storage.mountPath | string | `"/fuseki/databases/ds/"` | mountPath is the path to mount the storage |
| storage.size | string | `"10Gi"` | size is the size of the storage to use |
| storage.storageClass | string | `""` | storageClass is the storage class to use |
| tolerations | list | `[]` | tolerations to use |
| updateStrategy.type | string | `"RollingUpdate"` | type is the type of update strategy to use |
| volumeMounts | list | `[]` | volume mounts to use |
| volumes | list | `[]` | volumes to mount on the output Deployment definition |

