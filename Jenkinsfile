pipeline{
	agent any

	stages{
		stage('checkout'){
			steps{	
				sh "Brnach name ${params.Branch_name}"
				echo "Cloning repo from github"
				checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Rohit2k00/Spring-app.git']])
			}
		}

                stage('Clean'){ 
                        steps{  
				sh "sleep ${params.Sleep_time}"
                                echo "Clean the env"
                                sh 'mvn clean package -DskipTests=true'
				sh 'mvn test'
                        }
                }
	}
}
