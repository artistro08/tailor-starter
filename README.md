# Starter Theme for Tailor, an October CMS Feature
This theme supplies the user some simple starter templates to get started with October's Tailor Feature. It uses Bootstrap 5 to generate menus, general HTML content, and more.

### Prerequisites
To get started with this theme, you'll need the following
- October CMS v3.x
- A knowledge of [Tailor](https://docs.octobercms.com/3.x/tailor/introduction.html)
- Some knowledge of PHP

### Get Started
Clone or download this theme in the October CMS themes directory or install it via `artisan`:
```bash
php artisan theme:install Artistro08.TailorStarter --from=git@github.com:artistro08/tailor-starter-theme.git
```

Once installed, run the seeding function for the theme:

```bash
php artisan theme:seed artistro08tailorstarter --root
```

This will initialize the Tailor structure, so you can add content.

> ### Note
> This theme is meant to be used as a parent theme. Create your own child theme and set this theme as a parent. More info [here](https://docs.octobercms.com/3.x/cms/themes/child-themes.html)
> ```bash
> php artisan theme:copy artistro08tailor your-theme --child
> ```

Once you've seeded the theme, head over to the content settings in the backend and select the Homepage. Optionally, fill out the Site Name field as well. Find this at `/[backend_url]/tailor/globals/content_settings` where `[backend_url]` is your backend URI set in your .env

### Features
- A page builder with two components (Hero, Section with columns support)
- A "Simple Page" mode
- Main Menu with dropdown support (Max depth of 1)
- Secondary Menu 
- Social Menu (with icon support from [Chkilel.Icones](https://octobercms.com/plugin/chkilel-icones))
- Homepage designation using Tailor Globals
- Initial SEO & OG Tags support

### Things to Know
- Upon loading the theme, you'll get a 404. That's normal if you don't have a Home Page setup under Content > Settings.
- No default content is generated besides the Home page. This is intentional. I wanted to use this to quickly create and build content without having to delete anything. 

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
{% if section.content_group == 'your_field' %}
    {% partial 'builder/your_field' section=section %}
{% endif %}
```




### Contributing
If you would like to contribute to this theme, please submit a pull request. Any help is welcome!