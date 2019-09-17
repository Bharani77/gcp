docker build -t bharanidharan/app:latest -t bharanidharan/app:$SHA .
docker push bharanidharan/app:latest
docker push bharanidharan/app:$SHA
kubectl apply -f k8s
kubectl set image deployments/server-deployment server=bharanidharan/app:$SHA
