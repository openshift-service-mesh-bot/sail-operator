VERSION = 3.0.0-tp.1
OPERATOR_NAME = servicemeshoperator3
HUB = quay.io/maistra-dev
CHANNELS = candidates
HELM_VALUES_FILE = ossm/values.yaml
VERSIONS_YAML_FILE = versions.yaml


.PHONY: vendor
vendor: ## Vendor dependencies.
	go mod vendor

.PHONY: gen ## Generate everything
gen: vendor