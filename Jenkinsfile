 pipeline {
    agent any

    environment{     
        DOCKER_PASS = credentials('docker-pass')  
        DOCKER_ID = credentials('docker-id') 

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

        // stage('Build dockerfile'){
        //     steps{
        //     sh './pipeline/build_dockerfile.sh'
        //     }
        // }

        // stage('push dockerfile to Dockerhub'){
        //     steps{
        //     sh './pipeline/upload_image_nexus.sh'
        //     }
        // }
     
    }
 }
