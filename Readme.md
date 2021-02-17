minikube start

minikube dashboard

Postgres Kube

https://severalnines.com/database-blog/using-kubernetes-deploy-postgresql

cd dblayer

kubectl create -f postgres-configmap.yaml
kubectl create -f postgres-storage.yaml
kubectl create -f postgres-deployment.yaml
kubectl create -f postgres-service.yaml

kubectl get svc postgres

(Remember to get the minikube IP from http://127.0.0.1:56650/api/v1/namespaces/kubernetes-dashboard/services/http:kubernetes-dashboard:/proxy/#/node/minikube?namespace=default)

$ psql -h localhost -U postgresadmin1 --password -p 31070 postgresdb
Password for user postgresadmin1:
psql (10.4)
Type "help" for help.

postgresdb=#
