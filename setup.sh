 import docker
 
 list_running_containers():
 for c in client.containers.list():
 print(f"Name: {c.name}, Status: {c.status}")
