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
                      sh "kubectl config use-context arn:aws:eks:eu-central-1:762638497418:cluster/udacity"
                      sh "kubectl set image deployments/capstone-project-cloud-devops capstone-project-cloud-devops=sabbir33/capstone-project-cloud-devops:latest"
                      sh "kubectl apply -f deployment.yml"
                      sh "kubectl get nodes"
                      sh "kubectl get deployment"
                      sh "kubectl get pod -o wide"
                      sh "kubectl get service/final"
                  }
              }
        }
    }
}