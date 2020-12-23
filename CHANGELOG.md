# Change log

## master (unreleased)

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
