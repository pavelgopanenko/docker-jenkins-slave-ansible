NAME = pavelgopanenko/jenkins-slave-ansible
VERSION = latest
IMAGE = $(NAME):$(VERSION)

.PHONY: all

all:
	$(MAKE) image
	$(MAKE) push

image:
	docker build -t $(IMAGE) ./

push:
	docker tag -f $(IMAGE) $(REGISTRY)/$(IMAGE)
	docker push $(REGISTRY)/$(IMAGE)
