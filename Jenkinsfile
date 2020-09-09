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
    }
}