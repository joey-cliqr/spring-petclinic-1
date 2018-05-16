#!groovy

pipeline {
	agent none
	
	stages {	
		stage('C3 Deploy') {
		agent any
			when { expression { params.DEPLOYMENT_ENVIRONMENT="dev" }
			{
			steps {sh './c3deploy.sh ${JOB_NAME} ${BUILD_NUMBER}'
			}

			when { expression { params.DEPLOYMENT_ENVIRONMENT="qa" }
			{
		        steps {sh './c3deploy.sh ${JOB_NAME} ${BUILD_NUMBER}'
			}

	      }
	}    
  }
}
