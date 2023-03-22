# helm uninstall -n dm-dev dm-dev
# kubectl delete ns dm-dev
# kubectl create ns dm-dev
# # kubectl delete service -n dm-dev -l app=dm-dev-timescaledb
# # kubectl delete persistentvolumeclaims -n dm-dev -l app=dm-dev-timescaledb
# kubectl apply -k /deploy/ha/backup 
# helm repo add timescale 'https://charts.timescale.com'
# helm upgrade --install -n dm-dev dm-dev --values /deploy/ha/values.yaml timescale/timescaledb-single
# kubectl apply -k /deploy/ha/service

if [ "$1" = true ]; then
  /tmp/kubectl patch cronjobs -n dm-dev prd-pgdata-restore -p '{"spec" : {"suspend" : true }}'
else
  /tmp/kubectl patch cronjobs -n dm-dev prd-pgdata-restore -p '{"spec" : {"suspend" : false }}'
fi