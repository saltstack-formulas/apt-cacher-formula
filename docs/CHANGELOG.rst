
Changelog
=========

`0.7.3 <https://github.com/saltstack-formulas/apt-cacher-formula/compare/v0.7.2...v0.7.3>`_ (2020-09-10)
------------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **libtofs:** “files_switch” mess up the variable exported by “map.jinja” [skip ci] (\ `4066d80 <https://github.com/saltstack-formulas/apt-cacher-formula/commit/4066d805981741010e62062876af4514d54d90ca>`_\ )
* **release.config.js:** use full commit hash in commit link [skip ci] (\ `73ec594 <https://github.com/saltstack-formulas/apt-cacher-formula/commit/73ec5941a6bc03a35b5aa8f27aa2052201094b31>`_\ )
* **state:** restart service when configuration has changed (\ `e098871 <https://github.com/saltstack-formulas/apt-cacher-formula/commit/e098871f0b6b6641fbfda93aaef7b8bfb8a48e99>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **gemfile:** restrict ``train`` gem version until upstream fix [skip ci] (\ `5bc20e2 <https://github.com/saltstack-formulas/apt-cacher-formula/commit/5bc20e22f481461ebd761f9fa5078fd10396af58>`_\ )
* **gemfile.lock:** add to repo with updated ``Gemfile`` [skip ci] (\ `e0ff2cb <https://github.com/saltstack-formulas/apt-cacher-formula/commit/e0ff2cbf4f2763a48de68aac5ec456680a2c7646>`_\ )
* **kitchen:** avoid using bootstrap for ``master`` instances [skip ci] (\ `f545de1 <https://github.com/saltstack-formulas/apt-cacher-formula/commit/f545de171b82456c1819551bb7a4fcfa341dd83c>`_\ )
* **kitchen:** use ``debian-10-master-py3`` instead of ``develop`` [skip ci] (\ `7930d3f <https://github.com/saltstack-formulas/apt-cacher-formula/commit/7930d3f72b788c7647d13a846b9f25f33b8c86d5>`_\ )
* **kitchen:** use ``develop`` image until ``master`` is ready (\ ``amazonlinux``\ ) [skip ci] (\ `2e218d5 <https://github.com/saltstack-formulas/apt-cacher-formula/commit/2e218d579f84f94d49866fc9dcf5eb2e61d5a30e>`_\ )
* **kitchen:** use ``saltimages`` Docker Hub where available [skip ci] (\ `9ad588a <https://github.com/saltstack-formulas/apt-cacher-formula/commit/9ad588af9443df96467e43c223e9ad9086cb4063>`_\ )
* **kitchen+travis:** remove ``master-py2-arch-base-latest`` [skip ci] (\ `cfa5a6c <https://github.com/saltstack-formulas/apt-cacher-formula/commit/cfa5a6c9093b8b83ef3f3a8f9b26f546ac85b359>`_\ )
* **kitchen+travis:** upgrade matrix after ``2019.2.2`` release [skip ci] (\ `91797a7 <https://github.com/saltstack-formulas/apt-cacher-formula/commit/91797a738d789df4c94d74d378d9d1d63fdd614e>`_\ )
* **travis:** add notifications => zulip [skip ci] (\ `072885a <https://github.com/saltstack-formulas/apt-cacher-formula/commit/072885a6d116b4e4a6d1809a86e05e8038ecb8a5>`_\ )
* **travis:** apply changes from build config validation [skip ci] (\ `542aa80 <https://github.com/saltstack-formulas/apt-cacher-formula/commit/542aa80edb54e64279a8fd468ed091bb3126a472>`_\ )
* **travis:** opt-in to ``dpl v2`` to complete build config validation [skip ci] (\ `e93070a <https://github.com/saltstack-formulas/apt-cacher-formula/commit/e93070afbbf06562ff887a17c38e62a5ca4f99f1>`_\ )
* **travis:** quote pathspecs used with ``git ls-files`` [skip ci] (\ `195d7b4 <https://github.com/saltstack-formulas/apt-cacher-formula/commit/195d7b41228f22ccd32dac90847be16dd325e3ef>`_\ )
* **travis:** run ``shellcheck`` during lint job [skip ci] (\ `5832b4d <https://github.com/saltstack-formulas/apt-cacher-formula/commit/5832b4d8e815db994511e769e2768345e6d38e77>`_\ )
* **travis:** update ``salt-lint`` config for ``v0.0.10`` [skip ci] (\ `6eba0cd <https://github.com/saltstack-formulas/apt-cacher-formula/commit/6eba0cdf387de1a91d099badd138e1c957b36537>`_\ )
* **travis:** use ``major.minor`` for ``semantic-release`` version [skip ci] (\ `46c4dd8 <https://github.com/saltstack-formulas/apt-cacher-formula/commit/46c4dd80ad1e0165358cb017e521f009783755f3>`_\ )
* **travis:** use build config validation (beta) [skip ci] (\ `419960a <https://github.com/saltstack-formulas/apt-cacher-formula/commit/419960acbaac44081577c8c466ac29832ad2001d>`_\ )
* **workflows/commitlint:** add to repo [skip ci] (\ `293fd13 <https://github.com/saltstack-formulas/apt-cacher-formula/commit/293fd132b010f33a4022fbc461bb548fa5c3218b>`_\ )

Documentation
^^^^^^^^^^^^^


* **contributing:** remove to use org-level file instead [skip ci] (\ `a5d1626 <https://github.com/saltstack-formulas/apt-cacher-formula/commit/a5d1626ea9a0776b3b5d235e9cefa50fb90c1461>`_\ )
* **readme:** update link to ``CONTRIBUTING`` [skip ci] (\ `5359eca <https://github.com/saltstack-formulas/apt-cacher-formula/commit/5359eca150d95fbbc6be60911c60fb51e09a52b2>`_\ )

Performance Improvements
^^^^^^^^^^^^^^^^^^^^^^^^


* **travis:** improve ``salt-lint`` invocation [skip ci] (\ `f06b160 <https://github.com/saltstack-formulas/apt-cacher-formula/commit/f06b1607e972d2d7473fbcf03bfd535493ab2853>`_\ )

Styles
^^^^^^


* **libtofs.jinja:** use Black-inspired Jinja formatting [skip ci] (\ `80c59cd <https://github.com/saltstack-formulas/apt-cacher-formula/commit/80c59cdb926b74be3ac68c1829425f0b9ac5a249>`_\ )

`0.7.2 <https://github.com/saltstack-formulas/apt-cacher-formula/compare/v0.7.1...v0.7.2>`_ (2019-10-12)
------------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **rubocop:** add fixes using ``rubocop --safe-auto-correct`` (\ ` <https://github.com/saltstack-formulas/apt-cacher-formula/commit/e8c455f>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* merge travis matrix, add ``salt-lint`` & ``rubocop`` to ``lint`` job (\ ` <https://github.com/saltstack-formulas/apt-cacher-formula/commit/d44e3c6>`_\ )
* **travis:** merge ``rubocop`` linter into main ``lint`` job (\ ` <https://github.com/saltstack-formulas/apt-cacher-formula/commit/22a91f7>`_\ )

`0.7.1 <https://github.com/saltstack-formulas/apt-cacher-formula/compare/v0.7.0...v0.7.1>`_ (2019-10-10)
------------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **map.jinja:** fix ``salt-lint`` errors (\ ` <https://github.com/saltstack-formulas/apt-cacher-formula/commit/abba9c1>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* merge travis matrix, add ``salt-lint`` & ``rubocop`` to ``lint`` job (\ ` <https://github.com/saltstack-formulas/apt-cacher-formula/commit/8913f37>`_\ )

`0.7.0 <https://github.com/saltstack-formulas/apt-cacher-formula/compare/v0.6.0...v0.7.0>`_ (2019-10-07)
------------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **states:** fix template lookup in apt-cacher/ng/client/config (\ `1b288c2 <https://github.com/saltstack-formulas/apt-cacher-formula/commit/1b288c2>`_\ )
* **states:** rename states in a more consistent way (\ `d1b56c2 <https://github.com/saltstack-formulas/apt-cacher-formula/commit/d1b56c2>`_\ )
* **tofs:** rename default config files (\ `a20a724 <https://github.com/saltstack-formulas/apt-cacher-formula/commit/a20a724>`_\ )

Code Refactoring
^^^^^^^^^^^^^^^^


* **states:** split client.sls and server.sls in sub-states (\ `566e38d <https://github.com/saltstack-formulas/apt-cacher-formula/commit/566e38d>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **kitchen:** change ``log_level`` to ``debug`` instead of ``info`` (\ `ca98247 <https://github.com/saltstack-formulas/apt-cacher-formula/commit/ca98247>`_\ )
* **kitchen:** install required packages to bootstrapped ``opensuse`` [skip ci] (\ `b4d6d97 <https://github.com/saltstack-formulas/apt-cacher-formula/commit/b4d6d97>`_\ )
* **kitchen:** use bootstrapped ``opensuse`` images until ``2019.2.2`` [skip ci] (\ `652706f <https://github.com/saltstack-formulas/apt-cacher-formula/commit/652706f>`_\ )
* **platform:** add ``arch-base-latest`` (commented out for now) [skip ci] (\ `cdf6b50 <https://github.com/saltstack-formulas/apt-cacher-formula/commit/cdf6b50>`_\ )

Documentation
^^^^^^^^^^^^^


* **pillar:** add pillar example for TOFS pattern (\ `d08ed97 <https://github.com/saltstack-formulas/apt-cacher-formula/commit/d08ed97>`_\ )

Features
^^^^^^^^


* **map:** sync map.jinja with template-formula (\ `2b4c4d5 <https://github.com/saltstack-formulas/apt-cacher-formula/commit/2b4c4d5>`_\ )
* **tofs:** add tofs pattern (\ `1a7dd94 <https://github.com/saltstack-formulas/apt-cacher-formula/commit/1a7dd94>`_\ )

Tests
^^^^^


* **inpsec:** test apt-cacher client config (\ `81bb9db <https://github.com/saltstack-formulas/apt-cacher-formula/commit/81bb9db>`_\ )
* **inspec:** check that apt-cacher-ng port is opened (\ `19acc34 <https://github.com/saltstack-formulas/apt-cacher-formula/commit/19acc34>`_\ )

`0.6.0 <https://github.com/saltstack-formulas/apt-cacher-formula/compare/v0.5.0...v0.6.0>`_ (2019-09-20)
------------------------------------------------------------------------------------------------------------

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **kitchen:** add Kitchen tests (\ `265aa5a <https://github.com/saltstack-formulas/apt-cacher-formula/commit/265aa5a>`_\ )

Features
^^^^^^^^


* **semantic-release:** add semantic-release (\ `03bf55c <https://github.com/saltstack-formulas/apt-cacher-formula/commit/03bf55c>`_\ )
