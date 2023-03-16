# WolframServer
Custom server using WolframKernel and Jupyter to create an online Mathematica experience at no cost.

# Requirements
* The WolframKernel installation script
* Docker
* A reverse proxy (we use nginx, although any would be possible e.g. caddy)

# How it Works
Each time a user logs in, a new docker instance will be loaded specifcally for that user. This docker instance will contain an installation of WolframKernel with the Jupyter interface developed by WolframResearch. An externally setup reverse proxy, nginx in our case, will route each user to the correct docker instance.

* The base docker image is stored in dockerhub under ahilty/wolf-dh:wolfram_base

# Setup Instructions
1. Pull base docker image from ahilty/wolf-dh:wolfram_base
2. Follow instructions in instruction.txt