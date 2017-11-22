#!/bin/bash
oc adm policy add-role-to-group admin portalapp -n portalapp-dev
oc adm policy add-role-to-group admin portalapp -n portalapp-test
oc adm policy add-role-to-group admin paymentapp -n portalapp-dev
oc adm policy add-role-to-group admin paymentapp -n portalapp-test
oc adm policy add-role-to-group admin ocp-production -n portalapp-prod
oc adm policy add-role-to-group admin ocp-production -n paymentapp-prod
oc adm policy add-cluster-role-to-group cluster-admin ocp-platform