 pipeline {
    agent any

    environment{     
        DOCKER_PASS = credentials('dockerhub-pass')  
        DOCKER_ID = credentials('dockerhub-id') 

    }

    stages {
        stage('Build'){
            steps{
                sh './pipeline/build.sh'
            }
        }

        stage('Test') {
            steps {
                sh './pipeline/test.sh'
                }
                 post {
                     always {
                         junit 'target/surefire-reports/*.xml'
                     }
                 }
        }

        stage('Build dockerfile'){
            steps{
                sh 'ls'
                sh './pipeline/compose.sh'
            }
        }

        stage('push dockerfile to Dockerhub'){
            steps{
            sh './pipeline/push.sh'
            }
        }

        stage('deploy image'){
            steps{
            sh './pipeline/deploy.sh'
        }
    }
     
     
    }
 }
