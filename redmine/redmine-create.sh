helm install --name my-redmine  \
  --set redmineUsername=admin,redminePassword=password,mariadb.mariadbRootPassword=secretpassword \
    stable/redmine
