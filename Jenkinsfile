pipeline {
    agent any

    stages {
        stage('Clone Git Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/segunofe/Website-Containerization-using-Docker.git'
            }
        }
        
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t webapp:${BUILD_NUMBER} .'
            }
            
        }
        
        stage('Deploying Application') {
            steps {
                sh 'docker run --rm -d -p 8081:8000 --name webapp_ctr1 webapp:${BUILD_NUMBER}'
            }
        }

    }
}
