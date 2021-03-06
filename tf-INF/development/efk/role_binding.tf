{
  "apiVersion" = "rbac.authorization.k8s.io/v1"
  "kind" = "ClusterRoleBinding"
  "metadata" = {
    "name" = "elastic-operator"
  }
  "roleRef" = {
    "apiGroup" = "rbac.authorization.k8s.io"
    "kind" = "ClusterRole"
    "name" = "elastic-operator"
  }
  "subjects" = [
    {
      "kind" = "ServiceAccount"
      "name" = "elastic-operator"
      "namespace" = "elastic-system"
    },
  ]
}
