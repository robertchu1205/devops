## Get kubeconfig
```sh
eks_cluster=cluster_name

aws eks update-kubeconfig --region ap-east-1 --name ${eks_cluster}
```

## Create token

```sh
kubectl -n kube-system create serviceaccount eks-cluster-admin

cat << EOF | kubectl apply -f -
apiVersion: rbac.authorization.k8s.io/v1
kind: ClusterRoleBinding
metadata:
  name: eks-cluster-admin
roleRef:
  apiGroup: rbac.authorization.k8s.io
  kind: ClusterRole
  name: cluster-admin
subjects:
- kind: ServiceAccount
  name: eks-cluster-admin
  namespace: kube-system
EOF

kubectl -n kube-system get serviceaccount eks-cluster-admin -o=jsonpath='{.secrets[0].name}'

## This is your service account token
kubectl get secret `kubectl -n kube-system get serviceaccount eks-cluster-admin -o=jsonpath='{.secrets[0].name}'` -n kube-system -o jsonpath={.data.token} | base64 -d

```

## Example of adding IAM role to eks management console
```sh
eks_cluster=cluster_name

eksctl create iamidentitymapping --cluster ${eks_cluster} --region=ap-east-1 --arn arn:aws:iam::328162702476:role/SystemAdministrator --group system:masters --username {{sessionName}}
```
