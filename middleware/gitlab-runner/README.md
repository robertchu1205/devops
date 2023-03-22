## helm
- helm install gitlab-runner -f values.yaml gitlab/gitlab-runner
- helm search repo -l gitlab/gitlab-runner (search available versions)
- values referred from https://gitlab.com/gitlab-org/charts/gitlab-runner/-/blob/0-35-0-stable/values.yaml
- question1: **Cannot connect to the Docker daemon at unix:///var/run/docker.sock**
  - refer https://www.alibabacloud.com/help/zh/doc-detail/106968.htm to solve
  - answer: because runtime is not docker