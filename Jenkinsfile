#!groovy

pipeline {
        agent none

        stages {
                stage('C3 Deploy to Dev') {
                agent any
                        when { expression { params.DEPLOYMENT_ENVIRONMENT == "dev" }
                        }
                        steps {sh './c3deploydev.sh ${JOB_NAME} ${BUILD_NUMBER}'
                        }

                                }
                }
		stage('C3 Deploy to qa') {
                agent any
                        when { expression { params.DEPLOYMENT_ENVIRONMENT == "qa" }
                        }
                        steps {sh './c3deployqa.sh ${JOB_NAME} ${BUILD_NUMBER}'
                        }

                                }
                }
        }
