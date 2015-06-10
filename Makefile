
ifeq ($(TARGET),rhel7)
	OS := rhel7
else
	OS := centos7
endif

ifeq ($(VERSION), 5.5)
	VERSION := 5.5
else
	VERSION :=
endif

.PHONY: build
build:
	SKIP_SQUASH=$(SKIP_SQUASH) hack/build.sh $(OS) $(VERSION)


.PHONY: test
test:
	SKIP_SQUASH=1 TEST_MODE=true hack/build.sh $(OS) $(VERSION)

