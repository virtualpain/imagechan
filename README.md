# Imagechan

Simple command to download all images from a single thread in 4chan.

Usage: `imagechan <threadurl>`

## Installation

Installation as simple as:

    $ gem install imagechan

## Upcoming Features

These are planned features, when it finished, I will release version 1.0.0.

* Download load of threads based on a text file provided. This will use `imagechan load filename`. In the file, There is should be a thread URLs with this format `boardURL|foldername`. Folder name can be empty. Each thread url are separated by new line.
* Catalog. This will create an index page in .imagechan folder that contains links to all downloaded images. Catalog per thread created automatically after download finished. And whole .imagechan catalog can be re/generated using `imagechan catalog`