kubectl get secret --namespace default grafana -o jsonpath="{.data.admin-password}" | base64 --decode | pbcopy

export POD_NAME=$(kubectl get pods --namespace default -l "app=grafana,release=grafana" -o jsonpath="{.items[0].metadata.name}")

kubectl --namespace default port-forward $POD_NAME 3000

