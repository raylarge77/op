# op

# Code examples for OPG DevOps pre interview test
The code  in this repository are for the OPG pre-interview test Q2.

To begin, configure your AWS API keys:
```
aws configure
```

Then, run the playbook:
```
ansible-playbook deploy-hellonode.yml
```

You can see the application is listening on port 8000 of the EC2 instance IP. You can find the EC2 instance IP under "PLAY RECAP" of the Ansible playbook output.

Finally, terminate the EC2 instance:
```
ansible-playbook -e server_count=0 deploy-hellonode.yml
```
