# jtupdate

This repository is dedicated to the update script(s) that download cores for MiSTer from any external sources. The primary intent is to use it with the [JT binary repositoty](https://github.com/jotego/jtbin/) but it is open to link to more sources of content.

The update scripts could be made to work with other upcoming FPGA platforms too. There is no specific limit to the target FPGA or the content source.

## Mission

Ideally the scripts should make user life nice:

-download required RBF files
-download required MRA files
-do not break user's system
-be open to independent content providers
-be open to configuration files
-be open to user-customized folder schemes
-listen to user requests

Although the repository starts far from these targets, hopefully we'll get there.

## Branching

As this is a critical script for users, it is vital to prevent file corruption. To that purpose there will be two branches

* *master*, the currently stable and recommended one
* *test*, the one where new features are tested.

Pull requests should go to the *test* branch.

## Final Statement

Contributions are more than welcome as I am more involved now in pure core development and am not the best suited person for this task.

Thank you
Jotego
