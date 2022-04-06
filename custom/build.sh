version="6.0.2"

script_dir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

cd ${script_dir}/../Dockerfiles/build-base/ubuntu/  && bash build.sh $version && \
cd ${script_dir}/../Dockerfiles/build-mysql/ubuntu/ && bash build.sh $version && \
cd ${script_dir}/../Dockerfiles/agent2/ubuntu/      && bash build.sh $version && \
cd ${script_dir}/../

echo "Docker Zabbix images:"
docker images | grep -i zabbix | sort
