#!groovy

pipeline {
  agent none
  stages {
     stage('C3 Deploy') {
      agent any
      if (env.deployment_environment="Test"){
	steps {
	  sh './c3deploy.sh ${JOB_NAME} ${BUILD_NUMBER}'
      	}
      }else{
	echo "Not Test"
      }
    }    
  }
}
