# Posts

## Introduction

Posts are Tailor Blueprint entries designed to show blog posts based on the entry's settings. Post entry content is determined by the [`post.yaml`](https://github.com/artistro08/tailor-starter/blob/main/seeds/blueprints/content/blog/post.yaml) file.

The idea behind the posts is that anyone can create anything based anything. There are two types of posts defined in the `post.yaml` blueprint, listed below:

### Simple Posts

Simple posts are just that. They support the following content:

* An adaptive content field
* An Image field used to display behind the title
* An option to display an [Author](authors.md)
* [Blog Categories](categories.md)
* A Blog Excerpt (Short Description)
* SEO & OG Tag information provided by the [`seo_fields.yaml`](https://github.com/artistro08/tailor-starter/blob/main/seeds/blueprints/content/mixins/builder/general\_options/seo\_fields.yaml) file
* Header, Body, and Footer code areas provided by the [`code_fields.yaml`](https://github.com/artistro08/tailor-starter/blob/main/seeds/blueprints/content/mixins/builder/general\_options/code\_fields.yaml) file

These posts are designed to dump data quickly, such as content that doesn't need much formatting.



### Dynamic (Builder) Posts

These posts are more powerful. You can build posts exactly how you want. They support a lot of features but most of them are covered in the Block Types area of the documentation. To summarize, These posts have the following content and abilities:

* A "builder block" style area supported by [October CMS's repeater field widget](https://docs.octobercms.com/3.x/element/form/widget-repeater.html) with the following blocks:
  * [Section ](../pages/blocks/section/)Block With configurable columns matching the top level of selectable blocks
  * [Posts ](../pages/blocks/posts-section.md)which are filterable
  * [Events ](../events.md)which are filterable
  * [Products ](../pages/blocks/products-section.md)which are filterable
  * [Forms ](../forms/)which displays a chosen form&#x20;
* [Blog Categories](categories.md)
* An option to display an [Author](authors.md)
* An Image field used to display behind the title
* SEO & OG Tag information provided by the [`seo_fields.yaml`](https://github.com/artistro08/tailor-starter/blob/main/seeds/blueprints/content/mixins/builder/general\_options/seo\_fields.yaml) file
* Header, Body, and Footer code areas provided by the [`code_fields.yaml`](https://github.com/artistro08/tailor-starter/blob/main/seeds/blueprints/content/mixins/builder/general\_options/code\_fields.yaml) file.

## Template Files

The files below are used to display content throughout the site. Below is an explanation of what each file does and how things are rendered.&#x20;

### Pages

#### `post.htm`

This file is used to display page content form the posts entry blueprint. It includes sections for the [Simple ](posts.md#simple-posts)and [Dynamic Posts](posts.md#dynamic-builder-posts).

it uses the [`builder/items.htm`](posts.md#builder-items.htm) partial for rendering the [Section Blocks](../pages/blocks/#section-blocks) builder content.&#x20;

### Partials

#### `builder/items.htm`

[This file](https://github.com/artistro08/tailor-starter/blob/main/partials/builder/items.htm) renders the top level Section blocks in the Dynamic Page builder. It contains partial links to the following blocks:

* [Hero Section](../pages/blocks/hero-section.md)
* [Section](../pages/blocks/section/)
* [Posts Section](../pages/blocks/posts-section.md)
* [Events Section](../pages/blocks/events-section.md)
* [Form Section](../pages/blocks/form-section.md)

### Blueprints

#### `builder/sections/*`

[These files](https://github.com/artistro08/tailor-starter/tree/main/partials/builder/sections) are used to render the top level Section blocks in the Dynamic Page Builder

#### `builder/columns/*`

[These files](https://github.com/artistro08/tailor-starter/tree/main/partials/builder/columns) are used in the [Section](../pages/blocks/section/) Block to render partial content. They are very similar to the Section blocks but include a few more partials to render column block content:

* [Buttons Column](../pages/blocks/section/buttons-column.md)
* [Content Column](../pages/blocks/section/content-column.md)
* [Images Column](../pages/blocks/section/image-column.md)

#### `builder/globals/*`

[These files ](https://github.com/artistro08/tailor-starter/tree/main/partials/builder/globals)are used throughout the [Section ](../pages/blocks/section/)and [Column ](broken-reference)blocks to render the following content:

* Buttons&#x20;
  * Used in [Buttons Column](../pages/blocks/section/buttons-column.md) Block
  * Used in [Hero Section](../pages/blocks/hero-section.md) Block
* Shop Alerts&#x20;
  * Used in all Products Blocks ([Section ](../shop/products.md)and [Column](../pages/blocks/section/products-column.md)). Used to display Shop alert content when the shop content isn't set.&#x20;

