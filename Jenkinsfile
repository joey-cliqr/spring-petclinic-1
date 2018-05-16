#!groovy

pipeline {
  agent none
  parameters {
        choice(
            choices: 'unit\dev\qa\stage\prod',
            description: '',
            name: 'DEPLOYment_ENVIRONMENT')
    }
  stages {
     stage('C3 Deploy') {
      agent any
      when {
	expression { params.DEPLOYMENT_ENVIRONMENT="dev"){
	steps {
	  sh './c3deploy.sh ${JOB_NAME} ${BUILD_NUMBER}'
      	}
      }else{
	echo "Not dev"
      }
    }    
  }
}
