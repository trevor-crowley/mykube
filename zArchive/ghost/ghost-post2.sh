helm upgrade my-ghost stable/ghost --set service.type=LoadBalancer,ghostHost=$APP_HOST,ghostPassword=$APP_PASSWORD,mariadb.mariadbRootPassword=$DATABASE_ROOT_PASSWORD,mariadb.db.password=$APP_DATABASE_PASSWORD

