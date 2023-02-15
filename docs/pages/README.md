# Pages

## Introduction

Pages are Tailor Blueprint entries designed to display the content throughout the theme. The idea behind the pages is that anyone can create anything based anything. There are three types of pages defined in the [`page.yaml`](https://github.com/artistro08/tailor-starter/blob/main/seeds/blueprints/content/page/page.yaml) blueprint, listed below:



### Simple Pages

Simple pages are just that. They support the following content:

* An adaptive content field
* An Image field used to display behind the title
* SEO & OG Tag information provided by the [`seo_fields.yaml`](https://github.com/artistro08/tailor-starter/blob/main/seeds/blueprints/content/mixins/builder/general\_options/seo\_fields.yaml) file
* Header, Body, and Footer code areas provided by the [`code_fields.yaml`](https://github.com/artistro08/tailor-starter/blob/main/seeds/blueprints/content/mixins/builder/general\_options/code\_fields.yaml) file

These pages are designed to dump data quickly, such as Terms & Conditions or Privacy Policy Information



### Dynamic (Builder) Pages

These pages are more powerful. You can build pages exactly how you want. They support a lot of features but most of them are covered in the Block Types area of the documentation. To summarize, These pages have the following content and abilities:

* A "builder block" style area supported by [October CMS's repeater field widget](https://docs.octobercms.com/3.x/element/form/widget-repeater.html) with the following blocks:
  * [Hero ](blocks/hero-section.md)(Section with Background Image, content, and buttons from the [buttons.yaml](https://github.com/artistro08/tailor-starter/blob/main/seeds/blueprints/content/mixins/builder/buttons/buttons.yaml) file)
  * [Section ](blocks/section/)Block With configurable columns matching the top level of selectable blocks
  * [Posts ](blocks/posts-section.md)which are filterable
  * [Events ](../events.md)which are filterable
  * [Products ](blocks/products-section.md)which are filterable
  * [Forms ](../forms/)which displays a chosen form&#x20;
* SEO & OG Tag information provided by the [`seo_fields.yaml`](https://github.com/artistro08/tailor-starter/blob/main/seeds/blueprints/content/mixins/builder/general\_options/seo\_fields.yaml) file
* Header, Body, and Footer code areas provided by the [`code_fields.yaml`](https://github.com/artistro08/tailor-starter/blob/main/seeds/blueprints/content/mixins/builder/general\_options/code\_fields.yaml) file.

### Search Pages

Search Pages return search content from a [Search Section](blocks/search-section.md) block or from the Global Search. They support the following content:

* An Image field used to display behind the title
* SEO & OG Tag information provided by the [`seo_fields.yaml`](https://github.com/artistro08/tailor-starter/blob/main/seeds/blueprints/content/mixins/builder/general\_options/seo\_fields.yaml) file
* Header, Body, and Footer code areas provided by the [`code_fields.yaml`](https://github.com/artistro08/tailor-starter/blob/main/seeds/blueprints/content/mixins/builder/general\_options/code\_fields.yaml) file

These page types can keep data structure as well, so they can have any child (or be a child)

## Template Files

The files below are used to display content throughout the site. Below is an explanation of what each file does and how things are rendered.&#x20;

### Pages

#### `page.htm`

This file is used to display page content form the [`page.yaml`](https://github.com/artistro08/tailor-starter/blob/main/seeds/blueprints/content/page/page.yaml) blueprint. It includes sections for the [Simple ](./#simple-pages)and [Dynamic Pages](./#dynamic-builder-pages).

it uses the [`builder/items.htm`](./#builder-items.htm) partial for rendering the [Section Blocks](blocks/#section-blocks) builder content.&#x20;

#### `index.htm`

This file is used to display the homepage from the settings. It's almost a carbon copy of the site except there's some logic to get the current homepage from the [`settings.yaml`](https://github.com/artistro08/tailor-starter/blob/main/seeds/blueprints/content/settings/settings.yaml) blueprint.

### Partials

#### `builder/items.htm`

[This file](https://github.com/artistro08/tailor-starter/blob/main/partials/builder/items.htm) renders the top level Section blocks in the Dynamic Page builder. It contains partial links to the following blocks:

* [Hero Section](blocks/hero-section.md)
* [Section](blocks/section/)
* [Posts Section](blocks/posts-section.md)
* [Events Section](blocks/events-section.md)
* [Form Section](blocks/form-section.md)

#### `search/*`

[These files](https://github.com/artistro08/tailor-starter/tree/main/partials/search) include the search results from a query. They return all front facing post types. They are used by the [Search Section](blocks/search-section.md) block.

### Blueprints

#### `builder/sections/*`

[These files](https://github.com/artistro08/tailor-starter/tree/main/partials/builder/sections) are used to render the top level Section blocks in the Dynamic Page Builder

#### `builder/columns/*`

[These files](https://github.com/artistro08/tailor-starter/tree/main/partials/builder/columns) are used in the [Section](blocks/section/) Block to render partial content. They are very similar to the Section blocks but include a few more partials to render column block content:

* [Buttons Column](blocks/section/buttons-column.md)
* [Content Column](blocks/section/content-column.md)
* [Images Column](blocks/section/image-column.md)

#### `builder/globals/*`

[These files ](https://github.com/artistro08/tailor-starter/tree/main/partials/builder/globals)are used throughout the [Section ](blocks/section/)and [Column ](broken-reference)blocks to render the following content:

* Buttons&#x20;
  * Used in [Buttons Column](blocks/section/buttons-column.md) Block
  * Used in [Hero Section](blocks/hero-section.md) Block
* Shop Alerts&#x20;
  * Used in all Products Blocks ([Section ](../shop/products.md)and [Column](blocks/section/products-column.md)). Used to display Shop alert content when the shop content isn't set.&#x20;

