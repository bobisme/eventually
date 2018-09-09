create-migration:
	docker run --rm \
	  --volume "$(PWD)/migrations:/migrations" \
	  --network host \
	  --workdir=/migrations \
	  migrate/migrate \
	  create -ext sql -seq $(name)
