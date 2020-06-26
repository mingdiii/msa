# msa

# 작업할 폴더 만들기
```
$ mkdir 0626
```

# 이동
```
$ cd 0626
```

# Nginx 이미지 빌드
```
$ docker build --tag 32111666a/nginx2 .
Sending build context to Docker daemon  2.048kB
Step 1/4 : FROM ubuntu
 ---> 74435f89ab78
Step 2/4 : RUN apt update
 ---> Using cache
 ---> eb931b50a26b
Step 3/4 : RUN apt install -y nginx
 ---> Using cache
 ---> c85ee3d46cd4
Step 4/4 : CMD ["nginx", "-g", "daemon off;"]
 ---> Running in e2d778cb8782
Removing intermediate container e2d778cb8782
 ---> f6877000af9c
Successfully built f6877000af9c
Successfully tagged 32111666a/nginx2:latest
SECURITY WARNING: You are building a Docker image from Windows against a non-Windows Docker host. All files and directories added to build context will have '-rwxr-xr-x' permissions. It is recommended to double check and reset permissions for sensitive files and directories.
```

# run 해보기
```
$ winpty docker run -it --name a1 -p 8888:80 32111666a/nginx2
꺼지면,,
$ docker start a1
a1
```

# dockerhub push 
```
$ docker push 32111666a/nginx2
The push refers to repository [docker.io/32111666a/nginx2]
b610bb59d31f: Preparing
eac9e57e9128: Preparing
05f3b67ed530: Preparing
ec1817c93e7c: Preparing
9e97312b63ff: Preparing
e1c75a5e0bfa: Preparing
e1c75a5e0bfa: Waiting
eac9e57e9128: Mounted from 32111666a/nginx
ec1817c93e7c: Mounted from 32111666a/nginx
05f3b67ed530: Mounted from 32111666a/nginx
9e97312b63ff: Mounted from 32111666a/nginx
b610bb59d31f: Mounted from 32111666a/nginx
e1c75a5e0bfa: Mounted from 32111666a/nginx
latest: digest: sha256:f4c2e582ff6039d5cadabc5ced845a441c6dd283bb40d301ecd92cd7521f45b4 size: 1576
```
# Git clone
```
user@DESKTOP-14530KF MINGW64 ~/0626
$ git clone https://github.com/mingdiii/msa.git
Cloning into 'msa'...
remote: Enumerating objects: 3, done.
remote: Counting objects: 100% (3/3), done.
remote: Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
Receiving objects: 100% (3/3), done.
```
# git clone repository로 이동 및 도커파일 옮겨놓기
```
$ cd msa
$ mv ../Dockerfile .
user@DESKTOP-14530KF MINGW64 ~/0626/msa (master)
$ ls
Dockerfile  README.md
```

# git commint 
```
$ git add -A
$ git commit -m "test"
[master 7c9a629] test
 1 file changed, 4 insertions(+)
 create mode 100644 Dockerfile

$ git push
Enumerating objects: 4, done.
Counting objects: 100% (4/4), done.
Delta compression using up to 8 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 341 bytes | 341.00 KiB/s, done.
Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
To https://github.com/mingdiii/msa.git
   04c265c..7c9a629  master -> master

```


# 3번 문제 k8s.sh 파일
'''
kubectl run k8s --image=32111666a/nginx2 --port=80
kubectl.exe get po
kubectl scale deployment k8s --replicas=20
'''
