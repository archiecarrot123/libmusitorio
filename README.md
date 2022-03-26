# Musitorio
Factorio library mod that adds a function for addition of music, and, arguably
more importantly, adds an option to remove the base game music.

## Using the autogeneration script
The `autogen.sh` script is used to automatically generate a music mod from a
folder containing music.
Usage:
    autogen.sh input-folder project-name
Where `input-folder` is the folder containing the music and optionally a
thumbnail, and `project-name` is the name of the mod, which will be
concatendated on to "musitorio-" to form the name of the folder and the name of
the mod in `info.json`.
