#!groovy

pipeline {
        agent none

        stages {
                stage('C3 Deploy to Unit') {
                agent any
                        when { expression { params.DEPLOYMENT_ENVIRONMENT == "unit" }
                        }
                        steps {sh './c3deployunit.sh ${JOB_NAME} ${BUILD_NUMBER}'
                        }

                                        }
                stage('C3 Deploy to Development') {
                agent any
                        when { expression { params.DEPLOYMENT_ENVIRONMENT == "dev" }
                        }
                        steps {sh './c3deploydev.sh ${JOB_NAME} ${BUILD_NUMBER}'
                        }

                                        }
                }
                stage('C3 Deploy to QA') {
                agent any
                        when { expression { params.DEPLOYMENT_ENVIRONMENT == "qa" }
                        }
                        steps {sh './c3deployqa.sh ${JOB_NAME} ${BUILD_NUMBER}'
                        }

                                        }
                }
                stage('C3 Deploy to Stage') {
                agent any
                        when { expression { params.DEPLOYMENT_ENVIRONMENT == "stage" }
                        }
                        steps {sh './c3deploystage.sh ${JOB_NAME} ${BUILD_NUMBER}'
                        }

                                        }
                }
                stage('C3 Deploy to Production') {
                agent any
                        when { expression { params.DEPLOYMENT_ENVIRONMENT == "prod" }
                        }
                        steps {sh './c3deployprod.sh ${JOB_NAME} ${BUILD_NUMBER}'
                        }

                                        }
                }
        }

