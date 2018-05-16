#!groovy

pipeline {
  agent none
  stages {
    stage('Maven Install') {
      agent {
        docker {
          image 'maven:3.5.0'
        }
      }
      steps {
        sh 'mvn clean install'
      }
    }
    stage('Docker Build') {
      agent any
      steps {
        sh 'docker build -t jomerz/spring-petclinic-1:latest .'
      }
    }
    stage('Docker Push') {
      agent any
      steps {
        withCredentials([usernamePassword(credentialsId: 'dockerHub', passwordVariable: 'dockerHubPassword', usernameVariable: 'dockerHubUser')]) {
          sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
          sh 'docker push jomerz/spring-petclinic-1:latest'
        }
      }
    }
    stage('C3 Deploy to Unit') {
                agent any
                        when { expression { params.DEPLOYMENT_ENVIRONMENT == "unit" }
                        }
                        steps {sh './c3deploy.sh ${JOB_NAME} ${BUILD_NUMBER} ${DEPLOYMENT_ENVIRONMENT}'
                        }

                                        }
                stage('C3 Deploy to Development') {
                agent any
                        when { expression { params.DEPLOYMENT_ENVIRONMENT == "dev" }
                        }
                        steps {sh './c3deploydev.sh ${JOB_NAME} ${BUILD_NUMBER} ${DEPLOYMENT_ENVIRONMENT}'
                        }

                                        }
                stage('C3 Deploy to QA') {
                agent any
                        when { expression { params.DEPLOYMENT_ENVIRONMENT == "qa" }
                        }
                        steps {sh './c3deployqa.sh ${JOB_NAME} ${BUILD_NUMBER} ${DEPLOYMENT_ENVIRONMENT}'
                        }

                                        }
                stage('C3 Deploy to Stage') {
                agent any
                        when { expression { params.DEPLOYMENT_ENVIRONMENT == "stage" }
                        }
                        steps {sh './c3deploystage.sh ${JOB_NAME} ${BUILD_NUMBER} ${DEPLOYMENT_ENVIRONMENT}'
                        }

                                        }
                stage('C3 Deploy to Production') {
                agent any
                        when { expression { params.DEPLOYMENT_ENVIRONMENT == "prod" }
                        }
                        steps {sh './c3deployprod.sh ${JOB_NAME} ${BUILD_NUMBER} ${DEPLOYMENT_ENVIRONMENT}'
                        }

                                        }
  }
}
