pipeline{
    agent{label 'worker-node'}
    stages{
        stage('clean worksspace & checkout') {
            steps{
                cleanWs()
                checkout scm
            }
        }
        stage('build docker image') {
            steps{
                sh 'docker --version'
                sh 'docker build -t docker-image:${BUILD_NUMBER} .'
                sh 'docker images'
            }
        }
        stage('creating docker-container') {
            steps{
                sh 'docker run -itd --name new-container-${BUILD_NUMBER} docker-image:${BUILD_NUMBER}'
                sh  'docker ps -a'
                sh 'docker ps'
            }
        }    
    }
}