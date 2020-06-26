
docker pull a32111666/nginx2
                   

kubectl run k8s --image=32111666a/nginx2 --port=80


kubectl expose k8s/ngix2 --type="NodePort" --port 80 32111666a/nginx2 exposed

     
kubectl scale deployment k8s --replicas=20


kubectl.exe get po 
