# Products

## Introduction

Products are Tailor Blueprint entries designed to show products based on the entry's settings. Product entry content is determined by the [products.yaml](https://github.com/artistro08/tailor-starter/blob/main/seeds/blueprints/content/shop/products.yaml) file.

The idea behind the shop is to show a semi-simple product library with most features. If you need more features, Install the [OFFLINE.Mall plugin](https://octobercms.com/plugin/offline-mall).&#x20;

There are two types of products Simple Products & Variable Products

### Simple Products

Simple products are just that. They support the following content:

* A Description Field
* A Short Description Field
* Price field
* Quantity field with Stock support (Decrementing when purchased)
* Product Categories
* Product Images (The first one is used as the main one)
* SEO & OG Tag information provided by the [`seo_fields.yaml`](https://github.com/artistro08/tailor-starter/blob/main/seeds/blueprints/content/mixins/builder/general\_options/seo\_fields.yaml) file
* Header, Body, and Footer code areas provided by the [`code_fields.yaml`](https://github.com/artistro08/tailor-starter/blob/main/seeds/blueprints/content/mixins/builder/general\_options/code\_fields.yaml) file

These products are designed to sell non-variable items, like a "one-of-a-kind" piece.&#x20;

### Variable Products

These products are more powerful. You can add [Product Properties](product-properties.md) or specify Custom Attributes. All variant pricing defaults to the price under the the Manage tab. To summarize, These products have the following content and abilities:

> Variant quantities are not supported.&#x20;

* All the fields in the [Simple Products](products.md#simple-products)
* No Stock Support (Decrementing when purchased)
* Ability to set variants from a Property Set or specify your own Custom Properties
* SEO & OG Tag information provided by the [`seo_fields.yaml`](https://github.com/artistro08/tailor-starter/blob/main/seeds/blueprints/content/mixins/builder/general\_options/seo\_fields.yaml) file
* Header, Body, and Footer code areas provided by the [`code_fields.yaml`](https://github.com/artistro08/tailor-starter/blob/main/seeds/blueprints/content/mixins/builder/general\_options/code\_fields.yaml) file.

#### Custom Properties

Custom properties allow more power for creating variant options for the product. They have the following options

* Variant Property Title
* Variant Property Type
  * Dropdown
  * Color
* Dropdown Items (In a repeater. Depends on the Variant Property Type of Dropdown)
  * Title
  * Slug
  * Price
  * Enabled (Defaults to false)
* Color Items (In a repeater. Depends on the Variant Property Type of Color)
  * Title
  * Color
  * Price
  * Enabled (Defaults to false)

## Template Files

The pages and layouts below are used to display content throughout the site. Below is an explanation of what each file does and how things are rendered.&#x20;

### Pages

#### `product.htm`

[This file](https://github.com/artistro08/tailor-starter/blob/main/pages/event.htm) is used to display a single product entry type from the [`products.yaml`](https://github.com/artistro08/tailor-starter/blob/main/seeds/blueprints/content/shop/products.yaml) blueprint.&#x20;

### Blueprints

#### `builder/products/*`

[These files](https://github.com/artistro08/tailor-starter/tree/main/seeds/blueprints/content/mixins/builder/products) are used to render the top level Section blocks in the Dynamic Page Builder.

