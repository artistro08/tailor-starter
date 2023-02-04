---
description: Starter Theme for Tailor, an October CMS Feature
---

# Introduction

This theme supplies the user some simple starter templates to get started with October's Tailor Feature. It uses Bootstrap 5 to generate menus, general HTML content, and more.

### Prerequisites

To get started with this theme, you'll need the following

* October CMS v3.x
* A knowledge of [Tailor](https://docs.octobercms.com/3.x/tailor/introduction.html)
* Some knowledge of PHP

#### Plugin Dependencies

This theme depends on the following plugins:

* [Artistro08.TailorStarter](https://github.com/artistro08/tailor-starter-plugin)
  * For Order Email management with the [Shop Feature](broken-reference)
  * For Email Notifications with the [Forms Feature](broken-reference)

The theme will attempt to automatically install the plugins when you install it.

### Get Started

Install the theme and dependencies via `artisan`:

```bash
php artisan plugin:install Artistro08.TailorStarter --from=git@github.com:artistro08/tailor-starter-plugin.git
php artisan theme:install Artistro08.TailorStarter --from=git@github.com:artistro08/tailor-starter.git
```

Once installed, run the seeding function for the theme:

```bash
php artisan theme:seed artistro08-tailorstarter --root
```

This will initialize the Tailor structure, so you can add content.

> #### Note
>
> This theme automatically creates a child theme. The directory name is `artistro08-tailorstarter-theme`. Use that theme to make edits to the code. To learn more info about child themes, check [here](https://docs.octobercms.com/3.x/cms/themes/child-themes.html). Whenever you make changes to the theme in the editor, it copies the data and puts it in the child theme.

Once you've seeded the theme, head over to the content settings in the backend and select the Homepage. Optionally, fill out the Site Name field as well. Find this at `/[backend_url]/tailor/globals/content_settings` where `[backend_url]` is your backend URI set in your .env

### Features

* A page builder with components (Hero, Section with columns support, events, and products)
* A "Simple Page" mode
* Main Menu with dropdown support (Max depth of 1)
* Secondary Menu
* Social Menu with icon support. (See [Icons](broken-reference))
* Homepage designation using Tailor Globals
* Initial SEO & OG Tags support
* Events with recurring events support. (See [Events](broken-reference))
* Shop with Stripe Support (See [Shop](broken-reference))
* Icons with Bootstrap Icons (See [Icons](broken-reference))
* Automatic Sitemap generation for all front facing pages created by Tailor.
* Multisite Support out of the box.
* Form builder with submissions (See [Forms](broken-reference))

### Things to Know

* Upon loading the theme, you'll get a 404. That's normal if you don't have a Home Page setup under Content > Settings.
* No default content is generated besides the Home page. This is intentional. I wanted to use this to quickly create and build content without having to delete anything.
* Multisite is supported out of the box. Whenever you add or delete a site, the theme will automatically generate the appropriate urls. Just make sure your `APP_URL` is set, and you're accessing it from that url.

### Adding Builder Items (Extending)

Adding your own builder items is pretty simple. Follow the steps below to add them.

#### Step #1: Add a Blueprint

Once you have the content seeded from the theme, head over to the `content/mixins/builder.yaml` file under blueprints. Once there, add your fields under the `groups` portion:

```yaml
fields:
  builder:
    type: repeater
    name: Builder
    displayMode: builder
    groups:
      hero: 
      #...
      your_field:
        name: Your Field
        icon: icon-leaf
        description: A group field
        fields:
          #...
```

#### Step #2: Add a Partial

Once you have your field definitions in, you'll need to add your markup. Create a template under `partials\builder` with your `group` name or any name you prefer.

#### Step #3: Update the Page Templates

The last thing you need to do is update the page templates. Luckily, there is some markup there that you can use. Just duplicate the markup for a section in the `pages/index.htm` file and the `pages/page.htm` file:

```twig

<div data-gb-custom-block data-tag="if" data-0='your_field' data-1='your_field'></div>

    

<div data-gb-custom-block data-tag="partial" data-0='builder/your_field'>

</div>
```

### Events

This theme has events with recurring events out of the box. Just make sure you seed the theme.

The locations for the event markup files are:

* `layouts/event.htm`
* `pages/event.htm`
* `partial/builder/events.htm`

This content is used for the layout, single pages, and builder items, respectively.

### Shop

This theme has a simple shop with Stripe Checkout support. It has a cart stored in the `Session`. Webhooks are used to send out emails with the companion plugin and add orders to the backend. While quantity deduction works for simple products, **they do not work for variants**. If you need a more robust shop, I recommend checking out [OFFLINE.Mall](https://octobercms.com/plugin/offline-mall) from the marketplace.

#### Features of the shop

* Stripe Checkout Support. Just add your keys
* Stripe Webhooks Support (Also required). Make sure you add your Webhook Secret
* Variants
  * Quantity is not automatically updated for Variants.
* Simple Products.
  * Quantity is automatically updated on `checkout.session.completed`.
* Support for Categories out of the box.
* Cart Support via `Session`

The locations for the product markup files are:

* `layouts/product.htm`
* `pages/products.htm`
* `pages/product.htm`
* `pages/product_category.htm`
* `partial/builder/products.htm`
* `partials/shop/*` (Everything under this folder)

This content is used for the layout, product listings, single pages, product categories, builder items, and cart AJAX functions respectively.

### Icons

This theme has seed data for the Bootstrap Icons library. The last generated icon set was `v1.8.3`. The Social menu uses these icons. Use that as an example to extend into your theme.

#### Updating the icon set

You can update the icon set by using the `update_icons.sh` script in the `scripts` directory. Here's how:

* Download the icons from [icons.getbootstrap.com](https://icons.getbootstrap.com).
* Unzip the icons
* Place the script inside the unzipped folder (alongside the SVGs).
* run the script `./update_icons.sh` once you verify the script is safe.
  * you may need to mark the script as executable.
* Grab the generated `bootstrap-icons.json` file and import it via Tailor

This script will run under Ubuntu 18.04+ but other versions are not tested. Use at your own risk.

### Forms

This theme has a form builder built in. It includes Basic validation and recaptcha (v2 Checkbox only). In order to use the forms, build one in the backend. After that, add a form builder item to the website and choose the form you would like to display.

Each form is idempotent. A random string is generated upon every refresh. It is used for ids and special functions.

The recaptcha api js file will load once you set your keys in the backend. You can get your keys [here](https://www.google.com/recaptcha/admin#list)

#### Contributing

If you would like to contribute to this theme, please submit a pull request. Any help is welcome!

## License

MIT License

Copyright (c) 2022 Devin Green

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
