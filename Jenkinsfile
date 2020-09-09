pipeline {
     agent any
     stages {
         stage('Build') {
              steps {
                  sh 'echo It's just a simple HTML...'
              }
        }
         stage('HTML Lint') {
              steps {
                  sh 'tidy -q -e *.html'
              }
        }
    }
}