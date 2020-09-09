pipeline {
     agent any
     stages {
         stage('Build') {
              steps {
                  sh 'echo "Just HTML"'
              }
        }
         stage('HTML Lint') {
              steps {
                  sh 'tidy -q -e *.html'
              }
        }
        stage('Build Docker Image') {
              steps {
                  sh 'docker build -t final .'
              }
         }
         stage('Deploying') {
              steps{
                  echo 'Deploying to AWS'
                  withAWS(credentials: 'aws-static', region: 'eu-central-1') {
                      sh "aws eks --region eu-central-1 update-kubeconfig --name udacity"
                      sh 'kubectl apply -f deployment.yaml'
                  }
              }
        }
    }
}