# qlever

![Version: 0.2.3](https://img.shields.io/badge/Version-0.2.3-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v0.5.5](https://img.shields.io/badge/AppVersion-v0.5.5-informational?style=flat-square)

Very fast SPARQL Engine, which can handle very large knowledge graphs like the complete Wikidata, offers context-sensitive autocompletion for SPARQL queries, and allows combination with text search. It's faster than engines like Blazegraph or Virtuoso, especially for queries involving large result sets.

**Homepage:** <https://github.com/ad-freiburg/qlever>

## Installation

```sh
helm repo add zazuko https://charts.zazuko.com
helm install qlever zazuko/qlever
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| config.data.name | string | `"default"` |  |
| config.index.settings_json.ascii-prefixes-only | bool | `false` |  |
| config.index.settings_json.num-triples-per-batch | int | `100000` |  |
| config.runtime.system | string | `"native"` |  |
| config.server.access_token | string | `"default_random_access_token"` |  |
| config.server.cache_max_size | string | `"2G"` |  |
| config.server.endpoint | string | `"http://127.0.0.1:7001"` |  |
| config.server.host_name | string | `"127.0.0.1"` |  |
| config.server.memory_for_queries | string | `"5G"` |  |
| config.server.port | int | `7001` |  |
| config.server.timeout | string | `"30s"` |  |
| config.ui.ui_config | string | `"default"` |  |
| config.ui.ui_port | int | `7002` |  |
| fullnameOverride | string | `""` | fullnameOverride overrides the full name of the chart |
| nameOverride | string | `""` | nameOverride overrides the chart name |
| server.affinity | object | `{}` | affinity to use |
| server.extraEnv | list | `[]` | extraEnv is a list of extra environment variables to set |
| server.image.pullPolicy | string | `"IfNotPresent"` | pullPolicy is the policy to use when pulling the image |
| server.image.repository | string | `"ghcr.io/zazukoians/qlever-server"` | repository is the Docker image to use |
| server.image.tag | string | `""` | tag is used to overrides the image tag whose default is the chart appVersion |
| server.imagePullSecrets | list | `[]` | imagePullSecrets used to pull the Docker image |
| server.ingress.annotations | object | `{}` | annotations to add to the Ingress |
| server.ingress.className | string | `""` | className is the ingress class to use |
| server.ingress.enabled | bool | `false` | enabled allows you to enable or disable the Ingress |
| server.ingress.hosts | list | `[]` | hosts is the list of hostnames to be exposed |
| server.ingress.tls | list | `[]` | tls is the list of TLS configuration |
| server.livenessProbe | object | `{"tcpSocket":{"port":"http"}}` | livenessProbe is a health check to determine if the container is still running |
| server.nodeSelector | object | `{}` | nodeSelector to use |
| server.podAnnotations | object | `{}` | podAnnotations to use |
| server.podLabels | object | `{}` | podLabels to use |
| server.podSecurityContext.fsGroup | int | `0` | fsGroup is the group ID to run the container as |
| server.podSecurityContext.runAsGroup | int | `0` | runAsGroup is the group ID to run the container as |
| server.podSecurityContext.runAsNonRoot | bool | `true` | runAsNonRoot tells if the container should run as a non-root user |
| server.podSecurityContext.runAsUser | int | `65534` | runAsUser is the user ID to run the container as |
| server.readinessProbe | object | `{"tcpSocket":{"port":"http"}}` | readinessProbe is a health check to determine if the container is ready to serve traffic |
| server.replicaCount | int | `1` | replicaCount is the number of replicas to deploy |
| server.resources | object | `{}` | resources to request for the pod |
| server.securityContext.allowPrivilegeEscalation | bool | `false` | allowPrivilegeEscalation tells if the container can request to allow privilege escalation |
| server.securityContext.capabilities | object | `{}` | capabilities to add/drop |
| server.securityContext.privileged | bool | `false` | privileged tells if the container is privileged |
| server.securityContext.readOnlyRootFilesystem | bool | `false` | readOnlyRootFilesystem tells if the container should have a read-only root filesystem |
| server.securityContext.runAsNonRoot | bool | `true` | runAsNonRoot tells if the container should run as a non-root user |
| server.securityContext.runAsUser | int | `65534` | runAsUser is the user ID to run the container as |
| server.securityContext.seLinuxOptions | object | `{}` | seLinuxOptions to add |
| server.service.port | int | `7001` | port is the port the service will listen on |
| server.service.type | string | `"ClusterIP"` | type is the type of service to create |
| server.tolerations | list | `[]` | tolerations to use |
| server.volumeMounts | list | `[]` | volume mounts to use |
| server.volumes | list | `[]` | volumes to mount on the output Deployment definition |
| serviceAccount.annotations | object | `{}` | annotations to add to the service account |
| serviceAccount.automount | bool | `true` | automount tells if the service account should be automounted |
| serviceAccount.create | bool | `false` | create tells if a service account should be created |
| serviceAccount.name | string | `""` | name is the name of the service account to use |
| ui.affinity | object | `{}` | affinity to use |
| ui.extraEnv | list | `[]` | extraEnv is a list of extra environment variables to set |
| ui.image.pullPolicy | string | `"IfNotPresent"` | pullPolicy is the policy to use when pulling the image |
| ui.image.repository | string | `"ghcr.io/zazukoians/qlever-ui"` | repository is the Docker image to use |
| ui.image.tag | string | `""` | tag is used to overrides the image tag whose default is the chart appVersion |
| ui.imagePullSecrets | list | `[]` | imagePullSecrets used to pull the Docker image |
| ui.ingress.annotations | object | `{}` | annotations to add to the Ingress |
| ui.ingress.className | string | `""` | className is the ingress class to use |
| ui.ingress.enabled | bool | `false` | enabled allows you to enable or disable the Ingress |
| ui.ingress.hosts | list | `[]` | hosts is the list of hostnames to be exposed |
| ui.ingress.tls | list | `[]` | tls is the list of TLS configuration |
| ui.livenessProbe | object | `{"httpGet":{"path":"/","port":"http"}}` | livenessProbe is a health check to determine if the container is still running |
| ui.nodeSelector | object | `{}` | nodeSelector to use |
| ui.podAnnotations | object | `{}` | podAnnotations to use |
| ui.podLabels | object | `{}` | podLabels to use |
| ui.podSecurityContext.fsGroup | int | `0` | fsGroup is the group ID to run the container as |
| ui.podSecurityContext.runAsGroup | int | `0` | runAsGroup is the group ID to run the container as |
| ui.podSecurityContext.runAsNonRoot | bool | `true` | runAsNonRoot tells if the container should run as a non-root user |
| ui.podSecurityContext.runAsUser | int | `65534` | runAsUser is the user ID to run the container as |
| ui.readinessProbe | object | `{"httpGet":{"path":"/","port":"http"}}` | readinessProbe is a health check to determine if the container is ready to serve traffic |
| ui.replicaCount | int | `1` | replicaCount is the number of replicas to deploy |
| ui.resources | object | `{}` | resources to request for the pod |
| ui.securityContext.allowPrivilegeEscalation | bool | `false` | allowPrivilegeEscalation tells if the container can request to allow privilege escalation |
| ui.securityContext.capabilities | object | `{}` | capabilities to add/drop |
| ui.securityContext.privileged | bool | `false` | privileged tells if the container is privileged |
| ui.securityContext.readOnlyRootFilesystem | bool | `false` | readOnlyRootFilesystem tells if the container should have a read-only root filesystem |
| ui.securityContext.runAsNonRoot | bool | `true` | runAsNonRoot tells if the container should run as a non-root user |
| ui.securityContext.runAsUser | int | `65534` | runAsUser is the user ID to run the container as |
| ui.securityContext.seLinuxOptions | object | `{}` | seLinuxOptions to add |
| ui.service.port | int | `7002` | port is the port the service will listen on |
| ui.service.type | string | `"ClusterIP"` | type is the type of service to create |
| ui.tolerations | list | `[]` | tolerations to use |
| ui.volumeMounts | list | `[]` | volume mounts to use |
| ui.volumes | list | `[]` | volumes to mount on the output Deployment definition |

