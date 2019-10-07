# Changelog

# [0.7.0](https://github.com/saltstack-formulas/apt-cacher-formula/compare/v0.6.0...v0.7.0) (2019-10-07)


### Bug Fixes

* **states:** fix template lookup in apt-cacher/ng/client/config ([1b288c2](https://github.com/saltstack-formulas/apt-cacher-formula/commit/1b288c2))
* **states:** rename states in a more consistent way ([d1b56c2](https://github.com/saltstack-formulas/apt-cacher-formula/commit/d1b56c2))
* **tofs:** rename default config files ([a20a724](https://github.com/saltstack-formulas/apt-cacher-formula/commit/a20a724))


### Code Refactoring

* **states:** split client.sls and server.sls in sub-states ([566e38d](https://github.com/saltstack-formulas/apt-cacher-formula/commit/566e38d))


### Continuous Integration

* **kitchen:** change `log_level` to `debug` instead of `info` ([ca98247](https://github.com/saltstack-formulas/apt-cacher-formula/commit/ca98247))
* **kitchen:** install required packages to bootstrapped `opensuse` [skip ci] ([b4d6d97](https://github.com/saltstack-formulas/apt-cacher-formula/commit/b4d6d97))
* **kitchen:** use bootstrapped `opensuse` images until `2019.2.2` [skip ci] ([652706f](https://github.com/saltstack-formulas/apt-cacher-formula/commit/652706f))
* **platform:** add `arch-base-latest` (commented out for now) [skip ci] ([cdf6b50](https://github.com/saltstack-formulas/apt-cacher-formula/commit/cdf6b50))


### Documentation

* **pillar:** add pillar example for TOFS pattern ([d08ed97](https://github.com/saltstack-formulas/apt-cacher-formula/commit/d08ed97))


### Features

* **map:** sync map.jinja with template-formula ([2b4c4d5](https://github.com/saltstack-formulas/apt-cacher-formula/commit/2b4c4d5))
* **tofs:** add tofs pattern ([1a7dd94](https://github.com/saltstack-formulas/apt-cacher-formula/commit/1a7dd94))


### Tests

* **inpsec:** test apt-cacher client config ([81bb9db](https://github.com/saltstack-formulas/apt-cacher-formula/commit/81bb9db))
* **inspec:** check that apt-cacher-ng port is opened ([19acc34](https://github.com/saltstack-formulas/apt-cacher-formula/commit/19acc34))

# [0.6.0](https://github.com/saltstack-formulas/apt-cacher-formula/compare/v0.5.0...v0.6.0) (2019-09-20)


### Continuous Integration

* **kitchen:** add Kitchen tests ([265aa5a](https://github.com/saltstack-formulas/apt-cacher-formula/commit/265aa5a))


### Features

* **semantic-release:** add semantic-release ([03bf55c](https://github.com/saltstack-formulas/apt-cacher-formula/commit/03bf55c))
