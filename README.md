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

# To run

- Start boxes `docker-compose up -d eva`
- Get inside box for command line `d li`
- To sun lita cli (inside docker) `bundle exec lita`. You should see `Lita > ` command prompt.
