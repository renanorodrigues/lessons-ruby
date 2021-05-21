# Purpose of the repository

Created to store as lessons learned from the language and to have as a future reference. It also contains tests and codes from other programmers as a study.

# Required settings
- Linux distribution if you want to test. Ubuntu for example.
- Docker in system. https://docs.docker.com/get-docker/
- Docker Compose if you want. https://docs.docker.com/compose/install/

# If you want to test the exercises through the docker compose

1. Build this image
```
docker-compose build
```
2. Run the container with shell
```
docker-compose run app sh
```
3. Execute any scripts in ruby!
```
ruby <script.rb>
```
4. Or test via docker by entering the folder where the exercise is. Run the following command in terminal:
```
docker run -it --rm --name <my-running-script> -v "$PWD":/usr/src/myapp -w /usr/src/myapp ruby:2.7-alpine ruby <your-daemon-or-script.rb>
```