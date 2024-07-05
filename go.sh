curl -fsSL https://get.docker.com/ | sh
docker -v  
systemctl restart docker && systemctl enable docker && systemctl status docker
curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && chmod +x /usr/local/bin/docker-compose && docker-compose --version && systemctl restart docker && systemctl enable  docker

mkdir -p /mnt/nfs_mount/prometheus
mkdir -p /mnt/nfs_mount/grafana

chown -R 472:472 /mnt/nfs_mount/grafana

cp .prometheus.yml /mnt/nfs_mount/prometheus/
docker-compoe up -d
