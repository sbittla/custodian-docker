eval 'AWS_ACCESS_KEY_ID=$1 AWS_SECRET_ACCESS_KEY=$2  custodian run --region us-east-1  -s . /custodian-policies/$3'

if [ "$#" -eq 3 ]; then
  eval 'AWS_ACCESS_KEY_ID=$1 AWS_SECRET_ACCESS_KEY=$2  custodian run --region us-east-1  -s . /custodian-policies/$3'
else
  echo "pass three arguments to the shell script as: custodian-run.sh <AWS_ACCESS_KEY_ID> <AWS_SECRET_ACCESS_KEY> <Policy file name>"
fi
