kind create cluster --name kind-1 --config k8s/kind/cluster-config.yaml
kubectl apply -f k8s/manifests/k8s/backend-deployment.yaml
kubectl apply -f k8s/manifests/k8s/backend-service.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml
kubectl apply -f k8s/manifests/k8s/backend-ingress.yaml