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
