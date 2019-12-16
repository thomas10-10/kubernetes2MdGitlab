#!/bin/bash
  
fileConf=~/.kube/test


for node in `kubectl --kubeconfig $fileConf get nodes  -o=custom-columns=NAME:.metadata.name | grep -v NAME`
do
        echo "<details><summary>node $node </summary>"
        echo "<p>"
        echo
        for namespace in `kubectl --kubeconfig $fileConf get pods  -o=custom-columns=NODE:.spec.nodeName,NAMESPACE:.metadata.namespace --all-namespaces | grep ^$node | awk '{ print $2 }' | sort -u `
        do
        echo "- <details><summary> pods namespace $namespace </summary> <p> "

                for pod in `kubectl --kubeconfig $fileConf get pods  -o=custom-columns=NODE:.spec.nodeName,NAME:.metadata.name --namespace $namespace  | grep -v NAME | grep ^$node | awk '{ print $2 }'`
                        do
                        echo "    ○ $pod"
                        done
                echo "    </p> </details>"
        done
        echo
        echo "</p>"
        echo "</details>"
        echo
done
