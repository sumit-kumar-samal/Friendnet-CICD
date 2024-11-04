pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'echo building'
                sh 'pip3 install -r requirements.txt'
            }
        }
        stage('Test') {
            steps {
                sh 'echo testing'
                sh 'python3 manage.py test'
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo deploying'
                sh 'ssh -v aditya@44.204.68.222 -o StrictHostKeyChecking=no "bash /home/aditya/friendnet-CICD/scripts/deploy.sh"'
            }
        }
    }
}
