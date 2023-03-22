helm uninstall -n dm-stg stg
# kubectl delete ns dm-stg
# kubectl create ns dm-stg
kubectl delete service -n dm-stg -l app=stg-timescaledb
kubectl delete persistentvolumeclaims -n dm-stg -l app=stg-timescaledb
kubectl apply -k /deploy/backup
helm repo add timescale 'https://charts.timescale.com'
helm upgrade --install -n dm-stg dm-stg --values /deploy/values.yaml timescale/timescaledb-single --version 0.10.0
kubectl apply -k /deploy/service