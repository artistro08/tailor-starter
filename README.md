# Starter Theme for Tailor, an October CMS Feature
This theme supplies the user some simple starter templates to get started with October's Tailor Feature. It uses Bootstrap 5 to generate menus, general HTML content, and more.

### Prerequisites
To get started with this theme, you'll need the following
- October CMS v3
- A knowledge of [Tailor](https://docs.octobercms.com/3.x/tailor/introduction.html)
- Some knowledge of PHP

### Get Started
Clone or download this theme in the October CMS themes directory or install it via `artisan`:
```bash
php artisan theme:install Artistro08.TailorStarterTheme --from=git@github.com:artistro08/tailor-starter-theme.git
```

Once installed, run the seeding function for the theme:

```bash
php artisan theme:seed artistro08tailor-starter-theme --root
```

This will initialize the Tailor structure, so you can add content.

> ### Note
> This theme is meant to be used as a parent theme. Create your own child theme and set this theme as a parent. More info [here](https://docs.octobercms.com/3.x/cms/themes/child-themes.html)
> ```bash
> php artisan theme:copy artistro08tailor-starter-theme your-theme --child
> ```

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
- No default content is generated. This is intentional. I wanted to use this to quickly create and build content without having to delete anything. 

### Contributing
If you would like to contribute to this theme, please submit a pull request. Any help is welcome!