# ose-install

Base examples at:

https://github.com/openshift/openshift-ansible

# Syncing groups

```
$ cd ose-install
$ oc adm groups sync --whitelist=ldap-config-whitelist.txt --sync-config=ldap-config.yaml --confirm
group/portalapp
group/paymentapp
group/ocp-production
group/ocp-platform
```