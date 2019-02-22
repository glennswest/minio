chcon -Rt svirt_sandbox_file_t /root/.mc
docker run -it -v /root/.mc:/root/.mc --entrypoint=/bin/sh minio/mc 

