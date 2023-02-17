# Introduction

A builder theme for October CMS v3.2 based on Bootstrap 5 to speed up website creation. It uses October CMS's Tailor Feature to create re-usable content throughout the site

## Theme Philosophy
This theme is meant to be themed. It provides a lot of options out of the box for building content, but also leaves part of the elements simple to theme at your discretion. The general idea behind it is that you can quickly build out a structure and import styles from a bootstrap theme without doing too much work. 

### Prerequisites

To get started with this theme, you'll need the following

* October CMS v3.x
* A knowledge of [Tailor](https://docs.octobercms.com/3.x/tailor/introduction.html)
* Some knowledge of PHP

#### Plugin Dependencies

This theme depends on the following plugins:

* [Artistro08.TailorStarterCompanion](https://octobercms.com/plugin/artistro08-tailorstartercompanion)
  * For Order Email management with the Shop Feature
  * For Email Notifications with the Form Feature

### Get Started

Install the theme and dependencies via `artisan`:

```bash
php artisan theme:install Artistro08.TailorStarterTheme
```

> All theme dependencies should be installed automatically

Once installed, run the seeding function for the theme:

```bash
php artisan theme:seed artistro08-tailorstartertheme --root
```

This will initialize the Tailor structure, so you can add content.

> **Note**
>
> This theme automatically creates a child theme. The directory name is `artistro08-tailorstarter-child`. Use that theme to make edits to the code. To learn more info about child themes, check [here](https://docs.octobercms.com/3.x/cms/themes/child-themes.html). Whenever you make changes to the theme in the editor, it copies the data and puts it in the child theme.

Once you've seeded the theme, head over to the content settings in the backend and select the Homepage. Optionally, fill out the Site Name field as well. Find this at `/[backend_url]/tailor/globals/content_settings` where `[backend_url]` is your backend URI set in your .env

## Documentation 
Documentation can be found [here](https://artistro08.gitbook.io/tailor-starter-documentation/) 

#### Contributing

If you would like to contribute to this theme, please submit a pull request to the develop branch. Any help is welcome!

## License

MIT License

Copyright (c) 2022 Devin Green

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
