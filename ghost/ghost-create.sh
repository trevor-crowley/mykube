helm install --name my-ghost \
	  --set ghostUsername=admin,ghostPassword=Password1234,mariadb.mariadbRootPassword=secretpassword \
	      stable/ghost
