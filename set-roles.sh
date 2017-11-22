#!/bin/bash
oc adm policy add-role-to-group admin portalapp -n portalapp-dev, portalapp-test
oc adm policy add-role-to-group admin paymentapp -n portalapp-dev, portalapp-test
oc adm policy add-role-to-group admin ocp-production -n portalapp-prod, paymentapp-prod
oc adm policy add-cluster-role-to-group cluster-admin ocp-platform