# Icons

## Introduction

The Icons entry type uses Bootstrap Icons SVG Code. The point of this entry type is to have a general set of icons to use throughout the theme. To view an example of this, check out the `social_menu.yaml` blueprint file.

This theme has seed data for the Bootstrap Icons library. The last generated icon set was `v1.10.3`.&#x20;

## **Updating the icon set**

You can update the icon set by using the `update_icons.sh` script in the `scripts` directory. Here's how:

* Download the icons from [icons.getbootstrap.com](https://icons.getbootstrap.com).
* Unzip the icons
* Place the script inside the unzipped folder (alongside the SVGs).
* run the script `./update_icons.sh` once you verify the script is safe.
  * you may need to mark the script as executable.
* Grab the generated `bootstrap-icons.json` file and import it via Tailor
  * rename to `icons.json`
  * drop it in the `seeds/data` folder to replace the current icons&#x20;

This script will run under Ubuntu 18.04+ but other versions are not tested. Use at your own risk.

## Adding New Icons

By default, the `icon_svg` field is disabled. You'll need to enable this field to add your SVG code for the icon. To keep it consistent with the current icons, you'll need to do the following:

* Create the icon in a 16px by 16px canvas
* Add a `bi` class to the SVG root element
* set the `width` and `height` attributes of the SVG root element to `16`
* add a `fill` attribute to the SVG root element with the value `currentColor`

