Heroku Plack::Builder Example
============================

Example PSGI app on Heroku.

## Development

1. Add dependencies to `cpanfile`
2. Install deps with `cpanm --installdeps .`
3. Run app in dev with `plackup -r`

## Deployment

1. Commit to git
2. Create heroku app with `heroku create --buildpack https://github.com/miyagawa/heroku-buildpack-perl` (first time only)
3. Deploy to heroku with `git push heroku master`

## Bonus: [CloudFoundry](http://www.cloudfoundry.com/)

Deploy to CloudFoundry with `cf push <appname> --buildpack=https://github.com/miyagawa/heroku-buildpack-perl.git`

## Bonus: [Dokku](https://github.com/progrium/dokku) on [Docker](http://docker.io)

Setup dokku and docker:

1. Install on ubuntu host with `wget -qO- https://raw.github.com/progrium/dokku/master/bootstrap.sh | sudo bash`
2. From development system, install ssh key on docker system with `cat ~/.ssh/id_rsa.pub | ssh root@<docker-host> "gitreceive upload-key <dev-username>"`

Deploy:

1. Commit to git
2. Add dokku remote with `git remote add dokku git@<docker-host>:<app-name>`
3. Deploy with `git push dokku master`
