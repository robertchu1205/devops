* https://artifacthub.io/packages/helm/dandydev-charts/redis-ha
* `helm repo add dandydev https://dandydeveloper.github.io/charts`
* `kubectl create namespace redis`
* `helm install redis -f values.yaml dandydev/redis-ha --namespace redis`
* 安装的版本是 `4.12.15`

* https://artifacthub.io/packages/helm/dandydev-charts/redis-ha
* `helm repo add dandydev https://dandydeveloper.github.io/charts`
* `helm install <app-name> -f values.yaml dandydev/redis-ha --namespace <your-namespace>`
* 安装完留意下安装版本，如果有影响就指定版本安装


* `external-service.yaml` 是在开发的程序部署的 namespace 里建一个 service，link 到 redis namespace 的 service，从而可以跨 namespace 访问 redis