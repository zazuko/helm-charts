# blueprint

![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v0.1.0](https://img.shields.io/badge/AppVersion-v0.1.0-informational?style=flat-square)

Zazuko Blueprint is an enterprise knowledge graph frontend and browser, designed to make RDF Knowledge Graphs accessible and customizable for domain users

**Homepage:** <https://github.com/zazuko/blueprint>

## Installation

```sh
helm repo add zazuko https://charts.zazuko.com
helm install blueprint zazuko/blueprint
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
| endpointUrl | string | `"http://example.com/query"` | endpointUrl is the SPARQL endpoint URL |
| extraEnv | list | `[]` | extraEnv is a list of extra environment variables to set |
| fullTextSearchDialect | string | `"fuseki"` | fullTextSearchDialect is the full text search dialect |
| fullnameOverride | string | `""` | fullnameOverride overrides the full name of the chart |
| fuseki.config.adminPassword | string | `"super-secret-password"` | adminPassword is the password for the admin user |
| fuseki.config.disableOtel | bool | `true` | disableOtel tells if OpenTelemetry should be disabled |
| fuseki.config.javaOpts | string | `"-Xmx2048m -Xms2048m"` | javaOpts is the Java options to use |
| fuseki.enabled | bool | `false` | enabled tells if a Fuseki instance should be deployed |
| fuseki.fullnameOverride | string | `"blueprint-fuseki"` | fullnameOverride overrides the full name of the chart # Make sure that this is unique within the namespace # If you are using the embedded Trifid, you should also update the `trifid.sparql.endpoint` field |
| fuseki.storage.accessMode | string | `"ReadWriteOnce"` | accessMode is the access mode to use |
| fuseki.storage.enabled | bool | `true` | enabled tells if the storage should be enabled |
| fuseki.storage.existingClaim | string | `""` | existingClaim is the name of an existing PVC to use |
| fuseki.storage.mountPath | string | `"/fuseki/databases/ds/"` | mountPath is the path to mount the storage |
| fuseki.storage.size | string | `"10Gi"` | size is the size of the storage to use |
| fuseki.storage.storageClass | string | `""` | storageClass is the storage class to use |
| graphExplorerUrl | string | `"http://example.com/graph-explorer/?resource"` | graphExplorerUrl is the Graph Explorer URL |
| image.pullPolicy | string | `"IfNotPresent"` | pullPolicy is the policy to use when pulling the image |
| image.repository | string | `"ghcr.io/zazuko/blueprint"` | repository is the Docker image to use |
| image.tag | string | `""` | tag is used to overrides the image tag whose default is the chart appVersion |
| imagePullSecrets | list | `[]` | imagePullSecrets used to pull the Docker image |
| ingress.annotations | object | `{}` | annotations to add to the Ingress |
| ingress.className | string | `""` | className is the ingress class to use |
| ingress.enabled | bool | `false` | enabled allows you to enable or disable the Ingress |
| ingress.hosts | list | `[]` | hosts is the list of hostnames to be exposed |
| ingress.tls | list | `[]` | tls is the list of TLS configuration |
| livenessProbe | object | `{"httpGet":{"path":"/","port":"http"}}` | livenessProbe is a health check to determine if the container is still running |
| nameOverride | string | `""` | nameOverride overrides the chart name |
| neptuneFtsEndpoint | string | `""` | neptuneFtsEndpoint (in case fullTextSearchDialect is "neptune") is the Neptune FTS endpoint |
| nodeSelector | object | `{}` | nodeSelector to use |
| podAnnotations | object | `{}` | podAnnotations to use |
| podLabels | object | `{}` | podLabels to use |
| podSecurityContext.fsGroup | int | `0` | fsGroup is the group ID to run the container as |
| podSecurityContext.runAsGroup | int | `0` | runAsGroup is the group ID to run the container as |
| podSecurityContext.runAsNonRoot | bool | `false` | runAsNonRoot tells if the container should run as a non-root user |
| podSecurityContext.runAsUser | int | `0` | runAsUser is the user ID to run the container as |
| readinessProbe | object | `{"httpGet":{"path":"/","port":"http"}}` | readinessProbe is a health check to determine if the container is ready to serve traffic |
| replicaCount | int | `1` | replicaCount is the number of replicas to deploy |
| resources | object | `{}` | resources to request for the pod |
| securityContext.allowPrivilegeEscalation | bool | `false` | allowPrivilegeEscalation tells if the container can request to allow privilege escalation |
| securityContext.capabilities | object | `{}` | capabilities to add/drop |
| securityContext.privileged | bool | `false` | privileged tells if the container is privileged |
| securityContext.readOnlyRootFilesystem | bool | `false` | readOnlyRootFilesystem tells if the container should have a read-only root filesystem |
| securityContext.runAsNonRoot | bool | `false` | runAsNonRoot tells if the container should run as a non-root user |
| securityContext.runAsUser | int | `0` | runAsUser is the user ID to run the container as |
| securityContext.seLinuxOptions | object | `{}` | seLinuxOptions to add |
| service.port | int | `80` | port is the port the service will listen on |
| service.type | string | `"ClusterIP"` | type is the type of service to create |
| serviceAccount.annotations | object | `{}` | annotations to add to the service account |
| serviceAccount.automount | bool | `true` | automount tells if the service account should be automounted |
| serviceAccount.create | bool | `false` | create tells if a service account should be created |
| serviceAccount.name | string | `""` | name is the name of the service account to use |
| sparqlConsoleUrl | string | `"http://example.com/sparql/#query"` | sparqlConsoleUrl is the SPARQL console URL |
| tolerations | list | `[]` | tolerations to use |
| trifid.config.file | string | `""` | file is the path to the Trifid configuration file |
| trifid.dataset.baseUrl | string | `""` | baseUrl is the base URL for the dataset |
| trifid.enabled | bool | `false` | enabled tells if a Trifid instance should be deployed |
| trifid.ingress.annotations | object | `{}` | annotations to add to the Ingress |
| trifid.ingress.className | string | `""` | className is the ingress class to use |
| trifid.ingress.enabled | bool | `false` | enabled allows you to enable or disable the Ingress |
| trifid.ingress.hosts | list | `[]` | hosts is the list of hostnames to be exposed |
| trifid.ingress.tls | list | `[]` | tls is the list of TLS configuration |
| trifid.sparql.endpoint | string | `"http://blueprint-fuseki:3030/query"` | endpoint is the URL of the SPARQL endpoint (required) |
| trifid.sparql.password | string | `""` | password for the SPARQL endpoint |
| trifid.sparql.username | string | `""` | username for the SPARQL endpoint |
| volumeMounts | list | `[]` | volume mounts to use |
| volumes | list | `[]` | volumes to mount on the output Deployment definition |

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.zazuko.com | fuseki | 0.0.5 |
| https://charts.zazuko.com | trifid | 0.1.7 |

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.zazuko.com | fuseki | 0.0.5 |
| https://charts.zazuko.com | trifid | 0.1.7 |
