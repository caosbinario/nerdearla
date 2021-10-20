# Instalar metalLB
kustomize build metalLB/ | kubectl apply -f -

# deploy load balancer
kubectl apply -f deploy-verde-lb.yml

# check load balancer
kubectl get svc

# Instalar ingress
# kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.0.1/deploy/static/provider/baremetal/deploy.yaml
kubectl apply -f ingress/ingress-nginx.yml

# check ingress
kubectl -n ingress-nginx get svc
kubectl get svc

# deploy ingress
kubectl apply -f deploy-amarillo-rojo-ingress.yml


