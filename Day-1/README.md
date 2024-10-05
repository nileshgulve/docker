### **Day 1: Introduction to Docker, Docker Images, and Containers**

#### **What is Docker?**
Docker is an open-source platform designed to automate the deployment, scaling, and management of applications. Docker packages applications into containers — standardized executable components that combine application source code with the OS libraries and dependencies required to run that code in any environment.

#### **Key Concepts:**
- **Docker Images**: Read-only templates used to create containers. They contain the application and all its dependencies.
- **Docker Containers**: Running instances of Docker images that can execute isolated processes.

#### **Docker Installation**
- Install Docker from the [official Docker documentation](https://docs.docker.com/get-docker/).

#### **Basic Docker Commands:**
1. **Check Docker Version**:
   ```bash
   docker --version
   ```

2. **Pull an Image from Docker Hub**:
   ```bash
   docker pull <image_name>
   ```
   Example: Pulling an Nginx image
   ```bash
   docker pull nginx
   ```

3. **Run a Container**:
   ```bash
   docker run <image_name>
   ```
   Example: Running Nginx
   ```bash
   docker run nginx
   ```

4. **List Running Containers**:
   ```bash
   docker ps
   ```

5. **List All Containers (Running & Stopped)**:
   ```bash
   docker ps -a
   ```

6. **Stop a Running Container**:
   ```bash
   docker stop <container_id>
   ```

7. **Remove a Stopped Container**:
   ```bash
   docker rm <container_id>
   ```

8. **Remove an Image**:
   ```bash
   docker rmi <image_name>
   ```

9. **Check Logs of a Container**:
   ```bash
   docker logs <container_id>
   ```
**[Example Script](./example.sh)**

