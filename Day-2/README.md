### **Day 2: Dockerfile**

#### **What is a Dockerfile?**
A Dockerfile is a text document that contains all the commands to assemble a Docker image. It specifies the base image, dependencies, and steps to create a custom image.

#### **Example: Simple Dockerfile**
Create a `Dockerfile` to set up a Python application.

1. Create a file named `Dockerfile`:

2. **Build the Docker Image**:
   ```bash
   docker build -t my-python-app .
   ```

3. **Run the Container**:
   ```bash
   docker run -p 4000:80 my-python-app
   ``
### Next Step:
Go to [Day 3: Docker Volumes and Networking](../Day-3/README.md)
````
