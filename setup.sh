minikube delete
minikube start --vm-driver=virtualbox
minikube addons enable metallb
eval $(minikube docker-env)
kubectl apply -f srcs/configmap.yaml

docker build -t nginx-img srcs/nginx
kubectl apply -f srcs/nginx/nginx.yaml

docker build -t mysql-img srcs/mysql
kubectl apply -f srcs/mysql/mysql.yaml

docker build -t pma-img srcs/phpmyadmin
kubectl apply -f srcs/phpmyadmin/pma.yaml

docker build -t ftps-img srcs/ftps
kubectl apply -f srcs/ftps/ftps.yaml

docker build -t wp-img srcs/wordpress
kubectl apply -f srcs/wordpress/wp.yaml

docker build -t influxtg-img srcs/influxtg
kubectl apply -f srcs/influxtg/influxtg.yaml

docker build -t grafana-img srcs/grafana
kubectl apply -f srcs/grafana/grafana.yaml