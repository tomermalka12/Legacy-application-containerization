import docker
 
list_running_containers():
for c in client.containers.list():
 print(f"Name: {c.name}, Status: {c.status}")

container = client.containers.run("nginx", detach=True)
print(container.logs().decode()[:200])
container.stop()
container.remove()

