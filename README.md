# TechStockPricesModelingProject

## Build the Image
### docker build -t pynb_devenv:0.0.2 .

## Run the Container
### docker run -v /home/notebooks -p 8888:8888 --name pynb_devcontainer_new pynb_devenv:0.0.2

## Disclaimer
### You may need to specify the container file location as follows: [absolute_path]:/home/notebooks
### You may name the image and container whatever you please. 
