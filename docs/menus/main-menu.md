# Main Menu

## Introduction

The Main Menu is displayed in the [`header.htm`](https://github.com/artistro08/tailor-starter/blob/main/partials/header.htm) file and uses the Bootstrap Navbar to display menu content for the Main Menu Entry type defined in the [`main_menu.yaml`](https://github.com/artistro08/tailor-starter/blob/main/seeds/blueprints/content/menu/main\_menu.yaml) blueprint

The menu structure has a max depth of 2. When a menu item has a child, it uses a dropdown to display the menu content.&#x20;

It uses the [`pagefinder`](https://docs.octobercms.com/3.x/element/form/widget-pagefinder.html) form widget to link to every entry type, but requires that the entry type has a single page to display the content.&#x20;

