deployment=$1



#image
docker pull a32111666/nginx2
                   
# container 
kubectl run k8s --image=32111666a/nginx2 --port=80

# 20 port 
kubectl scale deployment k8s --replicas=20

# check
kubectl.exe get po 
