pipeline{
	agent any

	stages{
		stage('checkout'){
			steps{	
				echo "Cloning repo from github"
				checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Rohit2k00/Spring-app.git']])
			}
		}

                stage('Clean'){ 
                        steps{  
                                echo "Clean the env"
                                sh 'mvn clean package -DskipTests=true'
				sh 'mvn test'
                        }
                }
	}
}
