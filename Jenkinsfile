pipeline{
    agent any
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
                    sh 'docker build -t firstdockerimage/devops-lab03 .'
                }
            }
        }
        stage('Push image to Hub'){
            steps{
                script{

                    withCredentials([string(credentialsId: 'dockerusername', variable: 'dockerhubusername'), string(credentialsId: 'dockerhub-pwd', variable: 'dockerhubpassword')]) {
                    sh 'docker login --username ${dockerhubusername} --password ${dockerhubpassword}'
                    }

                    sh 'docker push firstdockerimage/devops-lab03'
                }
            }
        }
    }
}