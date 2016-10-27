```
oc get scc hostaccess -o json \
        | sed '/\"users\"/a \"system:serviceaccount:ci:nexus\",'  \
        | oc replace scc hostaccess -f -
```

