# Purpose of the repository

Created to store as lessons learned from the language and to have as a future reference. It also contains tests and codes from other programmers as a study.

# To test the exercises via container

1. Build this image
```
docker build -t <your-image-name-ruby>
```
2. Run the container with shell
```
docker run --rm -it <your-image-name-ruby> sh
```
3. Execute any scripts in ruby!
```
ruby <script.rb>
```