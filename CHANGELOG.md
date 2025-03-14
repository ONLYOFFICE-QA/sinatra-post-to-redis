# Change log

## master (unreleased)

### New Features

* Use `ruby-3.4` as application base
* Add check of branch test coverage to CI
* Add `GitHub Action` task to push image to Docker Hub
* Add docker base image `dependabot` check
* Add check to CI that container can be run
* Add `yamllint` check in CI
* Add `dependabot` check for `GitHub Actions`

### Fixes

* Fix missing `markdownlint` config
* Fix missing `webrick` dependency
* Fix `markdownlint` failure because of old `nodejs` in CI
* Run `rubocop` in CI through `bundle exec`

### Changes

* Check `dependabot` at 8:00 Moscow time daily
* Fix `rubocop-rspec-2.27.0` cop `RSpec/Rails/HttpStatus` warnings.
* Migrate to `sinatra-4.1`
* Update rubocop config file to support v3 of `rubocop-rspec`

## 1.0.0 (2020-12-23)

### New features

* Use `alpine` as base image
* Use `bundle config` to not install extra gems
* Use Github Actions instead of TravisCI
* Add `yard` as development dependency
* Add `dependabot` config
* Add support of `rubocop-performance` and `rubocop-rspec`

### Fixes

* Do not call `bash` in Dockerfile CMD

### Changes

* Remove usage of `codecov`
* Drop ruby 2.4 support, since it's EOLed
* Allow failures on `ruby-head` in CI
