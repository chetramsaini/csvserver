Setup is completed, I pull both docker images which were suggested in this assignment.

➜  assignment$ docker pull infracloudio/csvserver:latest
➜  assignment$ docker pull prom/prometheus:v2.22.0

➜  assignment$ docker images
REPOSITORY               TAG       IMAGE ID       CREATED        SIZE
docker/getting-started   latest    3ba8f2ff0727   10 days ago    27.9MB
infracloudio/csvserver   latest    8cb989ef80b5   2 weeks ago    237MB
prom/prometheus          v2.22.0   7adf5a25557b   5 months ago   168MB
➜  assignment$  

➜  assignment$ docker start infracloudio/csvserver

➜  assignment$ docker ps
CONTAINER ID   IMAGE                           COMMAND                  CREATED          STATUS         PORTS      NAMES
e4175304f1e9   prom/prometheus:v2.22.0         "/bin/prometheus --c…"   18 minutes ago   Up 5 seconds   9090/tcp   angry_carver
2f86b3552173   infracloudio/csvserver:latest   "/bin/sh"                3 hours ago      Up 3 minutes   9300/tcp   frosty_ride
➜  assignment$
➜  assignment$ docker exec -it 2f86b3552173 /bin/sh

sh-4.4# ls -la
total 9344
drwxr-xr-x 1 root root    4096 Mar 29 10:15 .
drwxr-xr-x 1 root root    4096 Mar 29 07:48 ..
-rwxrwxr-x 1 root root 8290304 Mar 10 14:35 csvserver
-rwxr-xr-x 1 root root      79 Mar 29 09:36 gencsv.sh
-rwxr-xr-x 1 root root      83 Mar 29 09:38 gencsv1.sh
-rw-r--r-- 1 root root      87 Mar 29 09:37 inputFile
-rw-r--r-- 1 root root 1254720 Mar 29 09:39 inputFile1
-rw-r--r-- 1 root root       0 Mar 29 10:15 inputdata

sh-4.4# cat gencsv_10.sh
#!/bin/bash
RANDOM=$$
for i in `seq 10`
do
        echo $((i++)), $RANDOM
done
sh-4.4# 

sh-4.4# cat gencsv_1m.sh
#!/bin/bash
RANDOM=$$
for i in `seq 100000`
do
        echo $((i++)), $RANDOM
done
sh-4.4# 

sh-4.4# cat inputFile_1m
1, 30456
2, 5073
3, 7486
4, 27633
5, 7350
6, 2127
7, 11459
8, 20384
9, 19208
10, 13803
sh-4.4#  

1, 3029
2, 23482
3, 16086
4, 4237
5, 8742
6, 2688
7, 16808
8, 13995
9, 14044
10, 26832
11, 26230
12, 2825
13, 22602
14, 13197
15, 28635
16, 5769
17, 630
18, 6528
19, 15520
20, 926
...
...
99975, 8319
99976, 644
99977, 24989
99978, 25038
99979, 11838
99980, 30010
99981, 28739
99982, 14272
99983, 24530
99984, 4465
99985, 25963
99986, 13410
99987, 3820
99988, 29830
99989, 26618
99990, 15154
99991, 13382
99992, 12746
99993, 19889
99994, 6080
99995, 12856
99996, 7917
99997, 3370
99998, 19957
99999, 11546
100000, 31528
sh-4.4# 


