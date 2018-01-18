mkdir -p /srv/nfs/user-vols/pv-nexus-3

echo "/srv/nfs/user-vols/pv-nexus-3 *(rw,root_squash)" >> /etc/exports.d/openshift-uservols.exports
chown -R nfsnobody.nfsnobody  /srv/nfs
chmod -R 777 /srv/nfs