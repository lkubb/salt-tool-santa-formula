Available states
----------------

The following states are found in this formula:

.. contents::
   :local:


``tool_santa``
~~~~~~~~~~~~~~
*Meta-state*.

Performs all operations described in this formula according to the specified configuration.


``tool_santa.package``
~~~~~~~~~~~~~~~~~~~~~~
Installs the Santa package only.


``tool_santa.config``
~~~~~~~~~~~~~~~~~~~~~
Manages the Santa package configuration by

* managing/serializing the config file

Has a dependency on `tool_santa.package`_.


``tool_santa.config.file``
~~~~~~~~~~~~~~~~~~~~~~~~~~
Manages the Santa package configuration.
Has a dependency on `tool_santa.package`_.


``tool_santa.clean``
~~~~~~~~~~~~~~~~~~~~
*Meta-state*.

Removes `santa`. Configuration profile removal needs to be performed manually.


``tool_santa.package.clean``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Removes the Santa package.


