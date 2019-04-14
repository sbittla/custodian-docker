# Build executable docker for running AWS Custodian commands

To learn custodian, here is the documentation https://www.capitalone.io/docs/quickstart/index.html

Clone the git repository in your local host.<br/>
If you want to build the docker from your local host run the command from the git project folder

** docker build -t custodian-docker . **


## To Run the Custodian command from localhost after building the docker
```
docker run -d Dockerfile_Custodian:latest 'AWS_ACCESS_KEY_ID=**** AWS_SECRET_ACCESS_KEY=**** custodian run --region us-west-2 --dryrun -s . /custodian-policies/tag-absent-policy.yml'
```

## If you want run using the prebuilt docker, then run the below command  
** docker pull sbittla002/custodian-docker:latest **

### To run the docker with AWS Access Key and Secret Keys.
```
docker run -d sbittla002/custodian-docker:latest 'AWS_ACCESS_KEY_ID=**** AWS_SECRET_ACCESS_KEY=**** custodian run --region us-west-2 --dryrun -s . /custodian-policies/tag-absent-policy.yml'
```