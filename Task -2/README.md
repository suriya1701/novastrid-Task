1. This is a simple Node.js web application that is containerized using Docker.

2.  Prerequisites to install docker in the local machine 

-- Ensure Docker is installed on your local machine.

3. Clone or Download the Project

git clone <repository-url>
cd <project-directory>

4. Build the Docker Image 

--  docker build -t app-name .

5. Run the Docker container 

--  docker run -p 8080:8080 app-name
 
6. Access the Application in the web browser using this url 

-- http://localhost:8080 --- If you're using a remote instance, replace localhost with the instance's IP address. 
