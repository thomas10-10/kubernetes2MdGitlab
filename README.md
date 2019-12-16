# kubernetes2MdGitlab
output nods and pods to markdown gitlab format

# get start

```
add file conf to script
vim script.sh
chmod +x 
./script.sh
```

# output exemple :

<details><summary>node worker1 </summary>
<p>

- <details><summary> pods namespace cattle-prometheus </summary> <p> 
    ○ exporter-node-cluster-monitoring
    </p> </details>
- <details><summary> pods namespace cattle-system </summary> <p> 
    ○ cattle-node-agent
    </p> </details>
- <details><summary> pods namespace databases </summary> <p> 
    ○ rfs-redis
    </p> </details>
- <details><summary> pods namespace default </summary> <p> 
    ○ prod-apm-server
    ○ prod-es-master-1
    </p> </details>
- <details><summary> pods namespace istio-system </summary> <p> 
    ○ istio-galley
    ○ istio-ingressgateway
    ○ istio-ingressgateway
    ○ istio-telemetry
    </p> </details>
- <details><summary> pods namespace kube-system </summary> <p> 
    ○ canal
    ○ coredns
    ○ coredns-autoscaler
    </p> </details>

</p>
</details>

<details><summary>node worker2 </summary>
<p>

- <details><summary> pods namespace cattle-prometheus </summary> <p> 
    ○ exporter-kube-state-cluster-monitoring
    ○ exporter-node-cluster-monitoring
    ○ grafana-cluster-monitoring
    ○ prometheus-cluster-monitoring
    ○ prometheus-operator-monitoring-operator
    ○ pushgateway-prometheus-pushgateway
    </p> </details>
- <details><summary> pods namespace cattle-system </summary> <p> 
    ○ cattle-node
    </p> </details>
- <details><summary> pods namespace databases </summary> <p> 
    ○ redisoperator
    ○ rfs-redis
    </p> </details>
- <details><summary> pods namespace default </summary> <p> 
    ○ prod-es-master-2
    </p> </details>
- <details><summary> pods namespace istio-system </summary> <p> 
    ○ istio-citadel
    ○ istio-init-crd
    </p> </details>
- <details><summary> pods namespace kube-system </summary> <p> 
    ○ canal
    ○ coredns
    ○ metrics-server
    </p> </details>

</p>
</details>
