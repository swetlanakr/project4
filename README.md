[![CircleCI](https://circleci.com/gh/swetlanakr/project4/tree/main.svg?style=svg)](https://circleci.com/gh/swetlanakr/project4/tree/main)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Requsted Files

* requirements.txt: dependencies to be installed.
* app.py: The python API starter source code.
* Dockerfile: definition of the container content.
* Makefile: the definition of the helper commands.
* output_txt_files: requested outputs are available in the this directory.  docker_out.txt and kubernetes_out.txt are the requested files

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
python3 -m virtualenv --python=<path-to-Python3.7> .devops
* Activate the environment
source .devops/bin/activate
* Run `make install` to install the necessary dependencies
* Run `make lint`to run lint checks on the project code
* Install hadolint if necessary
* Install minikube

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  
    * Complete Dockerfile
    * Complete and execute run_docker.sh by "./run_docker.sh"
    * Test it by making a prediction: "./make_prediction.sh". Please be aware to use an extra terminal for this command!
    * Upload docker image by completing upload_docker.sh and executing it with "./make_prediction.sh"


### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally by starting Minikube with the command "Minikube start --vm-driver=none" 
* Check if a cluster is running with "kubectl config view"
* execute the file "run_kubernetes.sh" to get it running 
* Make a prediction
