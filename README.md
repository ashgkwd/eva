# Eva

> super smart bot from the future

# Setup

- Install `docker` and `docker-compose`
- Run `./first-run.sh`
- Add following lines to your bash alias

```shell
export PS1='\u \w $(__git_ps1 "\[\033[01;34m\]%s \[\033[00m\]")$ '
function d() {
docker exec -i -t $1 /bin/bash -c 'export TERM=xterm; /bin/bash'
}
```

- Comment out two lines from docker-compose.yml for bundle installation
```yml
		...
        image: litaio/lita
        #command:
        #    tail -f /dev/null
        ports:
        ...
```

- Now let's install gems. Everytime when Gemfile is changed, we need to run boxes without command of docker-compose.yml
```shell
docker-compose up eva # running in non daemon to see progress
```

- Once installation is done. Uncomment those two lines in docker-compose.yml

# Run

- Start boxes `docker-compose up -d eva`
- Get inside box for command line `d li`
- To sun lita cli (inside docker) `bundle exec lita`. You should see `Lita > ` command prompt.
