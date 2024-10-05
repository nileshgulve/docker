### **Day 3: Docker Volumes and Networking (`Day-3/README.md`)**

### **Day 3: Docker Volumes and Networking**

#### **Docker Volumes**
Volumes allow you to persist data outside the lifecycle of a container. Useful when you need to store data that should be available after the container stops or restarts.

1. **Create a Volume**:
   ```bash
   docker volume create my-volume
   ```

2. **Use a Volume with a Container**:
   ```bash
   docker run -d --name mycontainer -v my-volume:/data nginx
   ```

3. **Inspect a Volume**:
   ```bash
   docker volume inspect my-volume
   ```

4. **Remove a Volume**:
   ```bash
   docker volume rm my-volume
   ```

#### **Docker Networking**
Docker allows containers to communicate with each other through networking.

1. **List Networks**:
   ```bash
   docker network ls
   ```

2. **Create a Custom Network**:
   ```bash
   docker network create my-network
   ```

3. **Run a Container in a Custom Network**:
   ```bash
   docker run -d --name container1 --network my-network nginx
   docker run -d --name container2 --network my-network nginx
   ```

4. **Inspect a Network**:
   ```bash
   docker network inspect my-network
   ```

5. **Remove a Network**:
   ```bash
   docker network rm my-network
   ```

### Next Step:
Go to [Day 4: Docker-Compose](../Day-4/README.md)
```
