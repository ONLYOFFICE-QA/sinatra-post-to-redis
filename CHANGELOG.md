# Change log

## master (unreleased)

### New Features

* Add `ruby-3.0` to CI
* Add `ruby-3.1` in CI
* Add check of branch test coverage to CI
* Add `GitHub Action` task to push image to Docker Hub
* Add docker base image `dependabot` check
* Add check to CI that container can be run
* Add `yamllint` check in CI

### Fixes

* Fix missing `markdownlint` config
* Fix missing `webrick` dependency
* Fix `markdownlint` failure because of old `nodejs` in CI

### Changes

* Remove `ruby-2.5`, `ruby-2.6`, `ruby-2.7` from CI since it's EOLed
* Check `dependabot` at 8:00 Moscow time daily

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
