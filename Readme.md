# Tech Challenge

First notes about your solution:

- It has to solve the described problem, considering all the requirements.

- Take your time, there is no hard timebox for this challenge, but it usually is developed around two hours. We do not consider the time you take to polish your submission's documentation to be part of the challenge's time limit.

- You can use the tools of your choice to solve the challenge, as long as you provide instructions on executing and testing it. Nevertheless, using tools related to the position you are applying for is a good idea.

- The final solution does not have to be perfect, but you need to be able to explain how things could be improved.

- We want you to make your own choices, and we expect you to be able to explain them or any assumptions you made.

- You can make those explanations in the comments.

- We may ask you to show the solution during the interview on your screen and walk us through it.

# Submission

Once you are done, please share your git repository with your solution and required instructions.

Please do not fork or share your solution as a public repository.

# Problem Description

Shypple has requested a Student intern to create a catalog microservice. The student was able to come up with a skeleton service.
However, now the student has raised a request to the SRE team to help them deploy and run their solution in the GKE.

The student also does not have experience with Docker, so the application only runs locally from their IDE currently. 

_**Your goal is to help them dockerizing the apps, and after that, make it deployable to Kubernetes.**_

# Application behavior
There is one application

## catalog-service (python)
The catalog service application is written in python and exposes a few endpoints.
You can find the api docs on '{{domain}}/docs' or '{{domain}}/redoc'

Instructions to run the application:
```
pip install -r requirements.txt
uvicorn main:app --reload
```

### Support
Currently, the student has been using the [docker-compose.yml file](support/docker-compose.yml) to launch Redis locally to test their app

# Requested Solution

The management has requested you to help the student to deploy their app to the cloud for demo purposes and later on for production capacity

## For Demo purpose
You are required to: 

1. Dockerize the app
2. Implement the Kubernetes object definitions for the app; can be in any format, not neccessarily plain manifests.
   1. Feel free to use local installations like minikube or docker-desktop K8s for testing. Assume that a managed GKE cluster will be used for actual deployment.
   2. Application must not accept connections unless it is fully started
   3. When not responsive, the application should automatically be restarted.
   4. The application deployment must be configurable for the following environments: development (default), staging, and production, which can have different resource allocations or configurations per environment.
   5. Make sure that the connection string for Redis that the app use is made available to the deployed app on Kubernetes
   6. The connection string should be external to the app
   7. Make sure to go through the code and provide any other config that the app may need to run
   
3. Keeping in mind that we'll later move on to managed solutions for Redis for demo purposes
   1. Provide deployment definitions for deploying Redis to the same K8s cluster
   2. If possible, add dependencies on the application where the app waits for Redis pods to be up
   

**Most importantly, please provide exact instructions to follow so that we can deploy and test your solution on either a local Kubernetes or any managed Kubernetes cluster.**

## For Production purposes

Once the app is demoed, the idea is to deploy it on GCP
You are requested to design the architecture on how these apps should be deployed on GCP and using which GCP services.
This is required to understand all GCP services would be required for deploying this app.

You are required to:
1. Design an architecture for deploying the app on GCP describing which GCP services will be used and how they'll interact with each other
   1. You are not limited to only using Kubernetes, please feel free to come up with the best possible choice of services that you see fit in this scenario
   2. Please design the architecture in a way where you can show the scalability of each service, especially the `catalog-service`
2. You are only required to design the architecture, not implement it; please feel free to use any tool you see fit for creating the architecture design, upload that design to the repository, and let us know which tool you used to build that design
   1. One of many free tools we can recommend is draw.io: https://app.diagrams.net/
   2. You can upload the XML from drawio with your solution.


# Final Note

Use the opportunity to show your skills, especially if you are applying as a Senior Engineer. Simplicity is beauty.

Good luck!

