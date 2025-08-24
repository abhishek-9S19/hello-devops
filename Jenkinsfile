pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                git branch: 'main', url: 'https://github.com/abhishek-9S19/hello-devops.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t hello-devops .'
            }
        }

        stage('Run Docker Container') {
            steps {
                // Stop old container if running
                sh 'docker rm -f hello-app || true'
                
                // Run new container
                sh 'docker run -d -p 8080:80 --name hello-app hello-devops'
            }
        }
    }
}

