.. _readme:

Santa Formula
=============

Manages Santa in the user environment.

.. contents:: **Table of Contents**
   :depth: 1

Usage
-----
Applying ``tool_santa`` will make sure ``santa`` is configured as specified.

Dependencies
~~~~~~~~~~~~
If you want to apply configuration, this formula needs to be able to install profiles (``.mobileconfig``). Default Salt does not entail that functionality and Apple has heavily limited the automatic installation of these profiles outside from MDM in the last years (especially since macOS 10.14 Mojave). I adapted a semi-automatic workaround inside a custom execution module and state called `macprofile` found in [tool_macos](https://github.com/salt/salt-tool-macos-formula). You will still need to manually approve the installation of the profile within 30 seconds.

Configuration
-------------

This formula
~~~~~~~~~~~~
The general configuration structure is in line with all other formulae from the `tool` suite, for details see :ref:`toolsuite`. An example pillar is provided, see :ref:`pillar.example`. Note that you do not need to specify everything by pillar. Often, it's much easier and less resource-heavy to use the ``parameters/<grain>/<value>.yaml`` files for non-sensitive settings. The underlying logic is explained in :ref:`map.jinja`.

User-specific
^^^^^^^^^^^^^
There is none currently: Even though this formula is namespaced in ``tool``, it is a system-wide package and does not need per-user configuration.

Formula-specific
^^^^^^^^^^^^^^^^

.. code-block:: yaml

  tool_santa:

      # Sets configuration values, will be installed as System Profile.
      # See official docs for details: https://santa.dev/deployment/configuration.html
    config:
      ClientMode: 1

Development
-----------

Contributing to this repo
~~~~~~~~~~~~~~~~~~~~~~~~~

Commit messages
^^^^^^^^^^^^^^^

Commit message formatting is significant.

Please see `How to contribute <https://github.com/saltstack-formulas/.github/blob/master/CONTRIBUTING.rst>`_ for more details.

pre-commit
^^^^^^^^^^

`pre-commit <https://pre-commit.com/>`_ is configured for this formula, which you may optionally use to ease the steps involved in submitting your changes.
First install  the ``pre-commit`` package manager using the appropriate `method <https://pre-commit.com/#installation>`_, then run ``bin/install-hooks`` and
now ``pre-commit`` will run automatically on each ``git commit``.

.. code-block:: console

  $ bin/install-hooks
  pre-commit installed at .git/hooks/pre-commit
  pre-commit installed at .git/hooks/commit-msg

State documentation
~~~~~~~~~~~~~~~~~~~
There is a script that semi-autodocuments available states: ``bin/slsdoc``.

If a ``.sls`` file begins with a Jinja comment, it will dump that into the docs. It can be configured differently depending on the formula. See the script source code for details currently.

This means if you feel a state should be documented, make sure to write a comment explaining it.

References
----------
* https://santa.dev/deployment/configuration.html
