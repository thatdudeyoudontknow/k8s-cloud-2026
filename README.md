# Kubernetes Portfolio — Argo CD GitOps demonstration

This is a sanitized copy of the original Phase 9 Helm chart, deployed separately
in namespace `web-gitops` via Argo CD. The actual Phase 9 Helm release stays in
`web` on NodePort 30080. This GitOps example uses NodePort 30081.

**Git history:** initial commit sets `environment: gitops-v1` and one Apache replica.
The second commit sets `environment: gitops-v2` and two Apache replicas; Argo CD
reconciles this Git change automatically. The Apache Pod template includes an
environment annotation, so the change triggers a fresh rollout instead of
relying on a ConfigMap `subPath` update.

No cluster credentials, private keys, evidence archives or database passwords
are part of this repository. Automated Argo CD sync uses self-heal but no prune.
