### https://github.com/chatwoot/chatwoot
### https://www.chatwoot.com/docs/self-hosted/deployment/docker/ 

# setting up the env
you need to run below commands to setup the db
```
docker compose -f chatwoot.yml run --rm rails bundle exec rails db:chatwoot_prepare
```

Then, you are ready to run the app
```
docker compose -f chatwoot.yml up -d
```