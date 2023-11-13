pipeline{
    agent any
        environment {
        DOCKERHUB_CREDENTIALS = credentials('docker-hub-login')
    }
    tools{
        maven 'Maven'
    }
    stages{
        stage('Build Maven') {
            steps{
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/jpate605/jpDevOPS_Lab_02']])
                sh 'mvn clean install'
            }
        }
        stage('Build docker image') {
            steps{
                script{
                    sh 'docker build -t jigneshpatelstudent/devops-lab03 .'
                }
            }
        }
        stage('Docker Login') {
            steps{
                script{
                    sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'


                }
            }
        }
        stage('Docker Push image') {
            steps {
                sh 'docker push jigneshpatelstudent/devops-lab03'
           }
        }
    }
}