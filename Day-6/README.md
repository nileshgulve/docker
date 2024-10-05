# Day 6: Docker Swarm

## Overview
Docker Swarm is a container orchestration tool, just like Kubernetes, that allows you to manage a cluster of Docker engines. In this tutorial, you will learn how to create a Docker Swarm cluster, deploy a service using Swarm, and scale your services with Docker Swarm.

## Topics Covered
- What is Docker Swarm
- Creating a Docker Swarm cluster
- Deploying a service to the Swarm
- Scaling services in Docker Swarm
- Stack Deployment with Docker Swarm

---

## What is Docker Swarm?
Docker Swarm enables you to manage multiple Docker hosts as a single, large cluster. It is natively integrated into Docker, and you can easily switch between single-host (standalone) Docker and Swarm mode using `docker swarm` commands.

Swarm has built-in load balancing and service discovery, making it easier to manage containers at scale.

---

## Step 1: Initialize Docker Swarm

### Initialize Swarm on a Node
To create a Docker Swarm, you first need to initialize the Swarm on one machine, which will act as the Swarm Manager.

1. **Initialize the Swarm Manager**:
   ```bash
   docker swarm init
   ```

2. After running this command, you will see an output similar to:
   ```
   Swarm initialized: current node (xxxxxx) is now a manager.
   To add a worker to this swarm, run the following command:
       docker swarm join --token <TOKEN> <MANAGER_IP>:<PORT>
   ```

### Adding Worker Nodes
To add other nodes (workers) to the Swarm, run the following command on the other machines you want to join as worker nodes. Use the token and IP address from the output of `docker swarm init`.

```bash
docker swarm join --token <TOKEN> <MANAGER_IP>:<PORT>
```

---

## Step 2: Deploying Services in Swarm Mode

Once your Swarm cluster is initialized, you can deploy services across the Swarm nodes.

### Create a Simple Service
Let’s deploy an Nginx service on the Swarm.

1. **Deploy Nginx service**:
   ```bash
   docker service create --name my_nginx --publish published=80,target=80 --replicas=3 nginx
   ```

2. **Check the status of the service**:
   ```bash
   docker service ls
   ```

3. **List the tasks (containers) of the service**:
   ```bash
   docker service ps my_nginx
   ```

4. **Check running containers on each node**:
   ```bash
   docker ps
   ```

The `--replicas=3` flag tells Docker to ensure that there are always 3 running instances (containers) of the Nginx service, distributed across the Swarm nodes.

---

## Step 3: Scaling Services

You can scale services easily with Docker Swarm.

1. **Scale the Nginx service to 5 replicas**:
   ```bash
   docker service scale my_nginx=5
   ```

2. **Check the updated status**:
   ```bash
   docker service ls
   ```

Docker Swarm will automatically distribute the containers across the available nodes in the cluster.

---

## Step 4: Stack Deployment in Docker Swarm

A Docker stack allows you to define multiple services and their configurations in a single file (usually `docker-compose.yml` or `stack.yml`). This file is then used to deploy the services in Swarm mode.

Here is an example stack file that deploys an Nginx web server and a Redis cache:

### Stack File (`stack.yml`)

### Deploy the Stack

1. **Deploy the stack using Docker Swarm**:
   ```bash
   docker stack deploy -c stack.yml mystack
   ```

2. **List the running stacks**:
   ```bash
   docker stack ls
   ```

3. **View the services in the stack**:
   ```bash
   docker stack services mystack
   ```

4. **Remove the stack**:
   ```bash
   docker stack rm mystack
   ```

---

## Step 5: Managing the Swarm

### View the Nodes in the Swarm
To see the nodes in your Swarm cluster, run:

```bash
docker node ls
```

### Drain a Node (Maintenance Mode)
If you need to put a node in maintenance mode, run:

```bash
docker node update --availability drain <node_id>
```

When a node is drained, no new tasks will be assigned to it, and existing tasks will be rescheduled on other nodes.

### Promote or Demote Nodes
You can promote worker nodes to managers or demote managers to workers using the following commands:

1. **Promote a worker to a manager**:
   ```bash
   docker node promote <node_id>
   ```

2. **Demote a manager to a worker**:
   ```bash
   docker node demote <node_id>
   ```

---
