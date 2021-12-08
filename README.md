# sky-docker-images
Sky docker images is the repo for the docker files from Sky TV-APPS.

## Before start

You need to have docker installed on your computer. https://www.docker.com/
## Work with it

The terminal is your friend, whatever system you are working at. So knowlegde is required and assumed

1. Clone the repo
2. Go to any of the images (contained on directories)

## Updating an image

Check the `Dockerfile` on the directory/image you want to change and do whatever you need.

## Building and pushing

You will need the TOKEN to connect to `ghcr.io` and be logged on the docker container registry of GitHub.

`docker login  ghrc.io -u YOUR_USERNAME --password GITHUB_TOKEN`

After a succesfully login, you need to build and push the new image (assuming you change something):

`./build-push.sh` this will build and push as latest version.
`./build-push.sh 1.0.0` this will build and push as version `1.0.0` and latest.

More information: https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-container-registry

## Pulling image

`./pull.sh` will pull the latest version.
`./pull.sh 5.0.0` will pull the version `5.0.0`.