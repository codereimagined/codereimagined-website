aws cloudformation update-stack \
  --stack-name CodeReimaginedWebsite \
  --template-body file://templates/main.yaml \
  --parameters ParameterKey=DomainName,ParameterValue=codereimagined.com \
               ParameterKey=SubDomain,ParameterValue=www \
               ParameterKey=HostedZoneId,ParameterValue=Z04459842AKUPNLFRWG1F \
               ParameterKey=CreateApex,ParameterValue=yes
