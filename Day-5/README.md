
### **Day 5: Multi-Stage Builds**

#### **What is a Multi-Stage Build?**
Multi-stage builds allow you to create smaller, more efficient Docker images by using multiple `FROM` statements in the Dockerfile. This helps reduce the image size by excluding unnecessary build dependencies from the final image.

#### **Example: Multi-Stage Dockerfile for Go App**

1. **Multi-Stage Dockerfile**:

2. **Build and Run the Image**:
   ```bash
   docker build -t my-go-app .
   docker run -p 8080:8080 my-go-app
   ```

---

### **Pushing to a Docker Repository**

Once you've created a Docker image, you can push it to a Docker repository like Docker Hub or any private registry.

1. **Tag the Image**:
   ```bash
   docker tag my-go-app <your-dockerhub-username>/my-go-app:latest
   ```

2. **Log in to Docker Hub**:
   ```bash
   docker login
   ```

3. **Push the Image**:
   ```bash
   docker push <your-dockerhub-username>/my-go-app:latest
   ```

Now your Docker image is available in the Docker Hub registry for others to use!
