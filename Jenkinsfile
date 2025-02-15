pipeline{
	agent any

      stages {
        stage('Checkout') {
          steps {
            echo "Branch name: ${params.Branch_name}"
            echo "Cloning repo from GitHub"
            checkout scmGit(branches: [[name: "${params.Branch_name}"]], 
                            extensions: [], 
                            userRemoteConfigs: [[url: 'https://github.com/Rohit2k00/Spring-app.git']])
        
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
