pipeline {
    agent {label 'jenkins-docker-slave'}
    stages {
        stage("Run app on Docker"){
            agent{
                docker{
                    image 'node:12-alpine'
                }
            }
            steps{
                withEnv(["HOME=${env.WORKSPACE}"]) {
                    sh 'npm install --production'
                }   
            }
        }
    }
}
