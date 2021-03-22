# Wiremock using Docker

In this project contains the structure of mocked APIs used in UI automated tests or manual testing when third-party systems are down.

## Technology

This project use the framework [Wiremock](http://wiremock.org/docs/) used as [Docker](https://hub.docker.com/r/rodolpheche/wiremock).

## Project structure

The project has the following structure:
  
  ```
      ├──[project_name]
      │  ├──stubs
      │  │  ├──__files
      │  │  │  └──[json_body_files]
      │  │  ├──mappings
      │  │  │  └──[json_api_files]
  ```

## Running with Docker
Download and install [Docker](https://www.docker.com/products/docker-desktop).

### Build
```sh
$ docker build -t YOUR_IMAGE_NAME .
```
### Run http
```sh
$ docker run -it --rm -p 8080:8080 YOUR_IMAGE_NAME
```

### Run https
```sh
$ docker run -it --rm -p 8443:8443 YOUR_IMAGE_NAME --https-port 8443 --verbose
```
> **NOTE 1:** Replace **YOUR_IMAGE_NAME**.

> **NOTE 2:** Using mock for **Android** must be https.

### Some Docker command line
| Command line | Explanation |
| ------ | ------ |
| docker system prune -a | Clear all dependecies |
| docker ps -a | List all running and stopped containers |
| docker rm ID_CONTAINER | Remove a container |
| docker stop ID_CONTAINER | Stop a container |
| docker imagens | List all imagens |
| docker rmi ID_IMAGE | Remove an imagem |
| docker exec -it ID_CONTAINER bash | Login a container |

> **NOTE 1:** Use **docker ps -a** to show the ID_CONTAINER.

> **NOTE 2:** Use **docker images** to show the ID_IMAGE.