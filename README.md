# OpenWF-Registry

The OpenWF-Registry repository contains the OpenWF API and Extension
Registry, including specifications.

It is also used as a backing store for the web view of the registry at
https://www.khronos.org/registry/wf/ ; commits to the main branch of
this repository will be reflected there.

**NOTE**: as of 2021-07-21, the default branch of this repository has
been renamed from 'master' to 'main'.

In the past, the OpenWF registry was maintained in a public Subversion
repository. The history in that repository has not been imported to github,
but it is still available at
https://cvs.khronos.org/svn/repos/registry/trunk/public/wf/ .

Interesting files in this repository include:

* index.php - toplevel index page for the web view. This relies on PHP
  include files found elsewhere on www.khronos.org and so is not very useful
  in isolation.
* token_registry.txt - registry of enumerant values
* registry.tcl - registry of extension numbers
* api/ - OpenWF header files
* specs/ - OpenWF specification documents
* packages/ - OpenWF sample implementation code

## Reserving OpenWF Enumerant Ranges

OpenWF enumerants are documented in api/token_registry.txt . New ranges can
be allocated by reserving a range for vendor-specific enumerants, then
assigning values at will within that range. Allocations are made by
proposing a pull request to master modifying this file, following the
existing examples. Allocate ranges starting at the lowest free values
available (search for "Any_future_use") for vendor extensions"). Ranges are
not officially allocated until your pull request is *accepted* into master.
At that point you can use values from your assigned range for API
extensions.

## Adding Extension Specifications

Extension specification documents can be added by proposing a pull request
to master, adding the specification files under extensions/<vendor>/ . At
present there are no public extensions, although there are some private
vendor extensions that were never published.

* Allocate an extension number in registry.tcl (follow the existing
  extension examples, search for "Next free extension number", and use the
  lowest available extension number.
* Include that extension number in the extension specification document.
* Add a link from the extensions section of index.php to the extension
  document, using the specified extension number, so it shows up in the web
  view.

