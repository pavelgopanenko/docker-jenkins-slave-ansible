# Ansible-нода для Jenkins

Основана на [`csanchez/jenkins-swarm-slave`](https://registry.hub.docker.com/u/csanchez/jenkins-swarm-slave/)

Регистрируется через плагин [swarm](https://wiki.jenkins-ci.org/display/JENKINS/Swarm+Plugin)

# Использование

    docker run --rm --link jenkins:jenkins pavelgopanenko/jenkins-slave-ansible -username jenkins -password jenkins -executors 1

Прилинкованный контейнер `--link jenkins:jenkins` будет считаться мастером
