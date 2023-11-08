pipeline {
    agent any

    tools {
        jdk "JDK"
        maven "Maven"
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/jpate605/devOpsLab02.git']])
            }
        }

        stage('Build Maven') {
            steps {
                sh 'mvn clean install'
            }
        }

    }
}