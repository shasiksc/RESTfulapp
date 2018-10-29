# restfulapp

Drone.yml builds and push the docker image to docker registry(here it is Artifactory Resgstry). Whenever there is PR created on this repo with the webhoon to local drone(jenkins alternate) platform.

//-----Retrieve All Users----------------------------//

http://localhost:8080/user/

    [{"id":1,"name":"RedMart"},{"id":2,"name":"Ravi"},{"id":3,"name":"Shashank"},{"id":4,"name":"Shasi"}]]
//------Retrieve Single User-------------------------//

http://localhost:8080/user/1

    {"id":1,"name":"RedMart"}


//-------------------health-------------------------//

http://localhost:8080/health

    {"status":"UP"}

//-------------------Create a User-------------------//

/user/ POST

//-------------------Update a User-------------------//
/user/id PUT

//-------------------Delete a User-------------------//
/user/id DELETE


# Backend
Currently the app is using local list. Same can be reused with local mongoDB and a DB connection being established

# Deploy Steps
Spinnaker pipeline is created which is integrated with K8's environment running on Openstack or GoogleCloud.

pipeline picks the image repo path configured in pipeline from Artifactory and deploys the app into specific namespace assigned to the app with a highlander strategy.(On request, can provide the pipeline json format)

# Metrics
The base image of the pod contains prometheus configuration to pull the data from /metrics and logstash is configured to ship the data through Kafka topics to Elastic DB and visualize through Kibana.

# Alternate Approach(non container based/VM Based deployment)

The same Drone.yml will build the app and push the .jar to artifactory path.

Redhat Package Manager is used to build the image on top of Base image(with Centos and needed tools for telemetry) in one more Git Repo and the RPM is pushed to Artifactory.

The package would be then configured in spinnaker pipeline to pick and deploy into an assigned google project.
