pipeline {
  agent {
    kubernetes {
      label 'terraform'
      yamlFile 'pod-template.yml'
    }
  }
  stages {
    stage('Terraform') {
      steps {
        container('terraform'){
          sh '''
          terraform init
          terraform plan -out saved_plan
          '''
        }
      }
    }
    stage('Apply Terraform') {
        input {
            message "Do you want to apply the Terraform plan?"
            ok "Apply it!"
        }
        steps {
            container('terraform') {
                sh '''
                terraform apply -input=false saved_plan
                '''
            }
        }
    }
  }
}
