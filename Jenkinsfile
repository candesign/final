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
         stage('Push Docker Image') {
              steps {
                  withDockerRegistry([url: "", credentialsId: "docker-hub"]) {
                      sh "docker tag final candesign/final"
                      sh 'docker push candesign/final'
                  }
              }
         }
    }
}