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
                sh 'ls'
                }
                 post {
                    //  always {
                    //      junit './demo/target/surefire-reports/TEST-com.example.demo.DemoApplicationTests.xml'
                    //  }
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
