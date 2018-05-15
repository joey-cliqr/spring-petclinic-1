#!groovy

pipeline {
  agent none
  stages {
    stage('C3 Deploy') {
      agent any
      steps {
        sh './c3deploy.sh ${JOB_NAME} ${BUILD_NUMBER}'
      }
    }    
  }
}
