deployment=$1

docker pull a32111666/nginx2
                   

kubectl run k8s --image=32111666a/nginx2 --port=80


kubectl expose deployment/nginx --type="NodePort" --port 80 32111666a/nginx2

     
kubectl scale deployment k8s --replicas=20


kubectl.exe get po 
