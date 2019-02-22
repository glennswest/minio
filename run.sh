source keys.sh 
docker kill minio.${SVCDOMAIN}
docker rm minio.${SVCDOMAIN}
chcon -Rt svirt_sandbox_file_t /data/minio.${SVCDOMAIN}
docker run  -d -p 9000:9000 --net=host -e "MINIO_ACCESS_KEY=${MINIO_ACCESS_KEY}" -e "MINIO_SECRET_KEY=${MINIO_SECRET_KEY}" --name minio.${SVCDOMAIN} -v /data/minio.${SVCDOMAIN}:/data -v /data/minio.${SVCDOMAIN}/config:/root/.minio minio/minio server /data
