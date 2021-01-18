[ ! "$(docker ps -a | grep practice-opscenter)" ] && \
  docker run -e DS_LICENSE=accept -d -p 8888:8888 --name practice-opscenter datastax/dse-opscenter:6.8.4 && \

[ ! "$(docker ps -a | grep my-dse)" ] && \
  docker run -e DS_LICENSE=accept --link practice-opscenter:opscenter --name my-dse -d datastax/dse-server:6.8.3-ubi7-1 && \

[ ! "$(docker ps -a | grep my-dse2)" ] && \
  docker run -e DS_LICENSE=accept --link practice-opscenter:opscenter --name my-dse2 -d datastax/dse-server:6.8.3-ubi7-1 && \

# echo "success...?"
# never got this to work
