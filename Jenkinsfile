#!groovy

pipeline {
  agent none
  stages {
    stage('C3 Deploy') {
      agent any
      steps {
	sh 'job_name=${JOB_NAME}'
        sh './c3deploy.sh job_name'
      }
    }    
  }
}
