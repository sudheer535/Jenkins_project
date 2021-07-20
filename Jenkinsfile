pipeline{
    agent {
        label 'Linux'
    }
    environment {
            DOCKER_VERSION = gitVersion()
        }
    stages{
        stage('git-checkout'){
            steps{
                 git credentialsId: 'NewGitHub', url: 'https://github.com/sudheer535/Jenkins_project.git'
            }
        }
        stage('Docker Build'){
            steps{
                sh 'docker build -t sudheer535/premiumapp:${DOCKER_VERSION} .'
            }
        }
        stage('Docker_Push'){
            steps{
                withCredentials([string(credentialsId: 'Dockercred', variable: 'pwd')]) {
                    sh 'docker login -u sudheer535 -p ${pwd}'
                }
                sh 'docker push sudheer535/premiumapp:${DOCKER_VERSION}'
            }
        }


    }

}
def gitVersion(){
        def latestCommit = sh label: 'name', returnStdout: true, script: 'git rev-parse --short HEAD'
        return latestCommit
}
