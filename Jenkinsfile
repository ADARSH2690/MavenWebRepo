def tomcatWeb = 'C:\\Users\\Adarsh\\apache-tomcat-7.0.105\\webapps'
def tomcatBin = 'C:\\Users\\Adarsh\\apache-tomcat-7.0.105\\bin'

pipeline {

    agent any

    tools {
        maven 'apache-maven-3.6.3'
		  }
		  
    stages {
	
	      stage ("Print variable") 
		  {
           steps {
              echo "My tomcatWebvariable is ${tomcatWeb}"
			  echo "My tomcatBinvariable is ${tomcatBin}"
                }
		  }
	
	
	
	    stage ("VERSION")
		   {
		   steps {
		      bat 'mvn --version'
			     }
		   }
		   
		stage ("Clean and package")
           {
		   steps {
			  bat 'mvn clean package'
			     }    
		   }
		   
		stage ("DEPLOY to Tomcat")
		   { 
		   steps {
		       bat 'mvn tomcat:deploy'
			     }
				 
		   }
        stage ("Deployment Done") 
		  {
           steps {
              echo "Deploy OK"
			  
                }
		  }	
		  stage ("Docker Lifecycle")
			{
			  steps {
					bat 'docker build --tag=mymavenwebapp-2507 .'
					bat 'docker tag mymavenwebapp-2507 adarsh2602/test100:mymavenwebapp-2507-v1'
					bat 'docker login'
					bat 'docker push adarsh2602/test100:mymavenwebapp-2507-v1'
			  
                    }
			
			
			}
				 
	}
}
