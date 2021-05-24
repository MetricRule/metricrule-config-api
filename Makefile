all: go-proto

.PHONY: go-proto
go-proto:
	@protoc -I=proto --go_out=proto \
	--go_opt=module=github.com/metricrule-config-api/proto \
	proto/metric_configuration.proto
