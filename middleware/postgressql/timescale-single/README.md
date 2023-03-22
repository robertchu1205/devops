- [admin guide](https://github.com/timescale/timescaledb-kubernetes/blob/v0.8.2/charts/timescaledb-single/admin-guide.md)
- [values template](https://github.com/timescale/timescaledb-kubernetes/blob/v0.8.2/charts/timescaledb-single/values.yaml)
- [image source](https://hub.docker.com/r/timescaledev/timescaledb-ha)

- secret credentials include
  - PATRONI_REPLICATION_PASSWORD
  - PATRONI_SUPERUSER_PASSWORD
  - PATRONI_admin_PASSWORD

helm install -n timescaledb my-release timescale/timescaledb-single --set image.tag=pg12.4-ts1.7.2-p0