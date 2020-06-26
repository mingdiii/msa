deployment=$1


<<<<<<< HEAD
docker pull a32111666/nginx2
=======
docker pull 
>>>>>>> 7c15bfe9f063df449b54fffa37a069abf97f79c3

# container 
kubectl run k8s --image=32111666a/nginx2 --port=80

# 20 port 
kubectl scale deployment k8s --replicas=20

# check
kubectl.exe get po 
