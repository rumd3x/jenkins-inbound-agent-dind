# jenkins-inbound-agent-dind
Jenkins Inbound Agent with preinstalled docker client.
Can be used to build docker images inside jenkins docker agents.

## About the image
This image is available prebuilt at DockerHub `edmur/jenkins-inbound-agent-dind:latest` and is kept updated with base image `jenkins/inbound-agent:latest` automatically, by buing rebuilt and pushed every day.

## ⚠️ Warning ⚠️
Docker in Docker is insecure and can compromise your host.
Only use this when you run trusted Jenkins jobs.

## Usage
The agent must run in privileged mode (`--privileged`) and must have `/var/run/docker.sock` mounted from the host (`-v /var/run/docker.sock:/var/run/docker.sock`).

