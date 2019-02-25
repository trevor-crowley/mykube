export APP_HOST=$(kubectl get svc --namespace default my-ghost --template "{{ range (index .status.loadBalancer.ingress 0) }}{{ . }}{{ end }}")
export APP_PASSWORD=$(kubectl get secret --namespace default my-ghost -o jsonpath="{.data.ghost-password}" | base64 --decode)
export DATABASE_ROOT_PASSWORD=$(kubectl get secret --namespace default my-ghost-mariadb -o jsonpath="{.data.mariadb-root-password}" | base64 --decode)
export APP_DATABASE_PASSWORD=$(kubectl get secret --namespace default my-ghost-mariadb -o jsonpath="{.data.mariadb-password}" | base64 --decode)


