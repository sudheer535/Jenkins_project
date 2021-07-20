pipeline{
    agent {
        label 'Linux'
    }
    stages{
        stage('git-checkout'){
            steps{
                 git credentialsId: 'NewGitHub', url: 'https://github.com/sudheer535/Jenkins_project.git'
            }
        }
        stage('Docker Build'){
            steps{
                sh 'docker build -t sudheer:v1 .'
            }
        }


    }

}
