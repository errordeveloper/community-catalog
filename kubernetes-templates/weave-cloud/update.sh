#!/bin/sh -eux
curl -s 'cloud.weave.works/k8s.yaml?t=__WEAVE_CLOUD_SERVICE_TOKEN__&weave-scope-version=1.1.0' -o "./0/manifest.yaml"
gsed -i 's|__WEAVE_CLOUD_SERVICE_TOKEN__|\$\{WEAVE_CLOUD_SERVICE_TOKEN\}|g' "./0/manifest.yaml"
