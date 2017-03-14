

StartApp:
	@docker stack deploy -c deploy/cicd/docker-compose.yml jenkins-cd

Gogs_build:
	@docker build -t registry.aliyuncs.com/hydsoft/ddc-cicd-gogs:latest gogs --rm --no-cache
