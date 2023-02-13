# Pages

## Introduction

Pages are Tailor Blueprint entries designed to display the content throughout the theme. The following files are used to display pages

The idea behind the pages is that anyone can create anything based anything. There are two types of pages defined in the [`page.yaml`](https://github.com/artistro08/tailor-starter/blob/main/seeds/blueprints/content/page/page.yaml) blueprint, listed below:



### Simple Pages

Simple page are just that. They support the following content:

* An adaptive content field
* An Image field used to display behind the title
* SEO & OG Tag information provided by the [`seo_fields.yaml`](https://github.com/artistro08/tailor-starter/blob/main/seeds/blueprints/content/mixins/builder/general\_options/seo\_fields.yaml) file
* Header, Body, and Footer code areas provided by the [`code_fields.yaml`](https://github.com/artistro08/tailor-starter/blob/main/seeds/blueprints/content/mixins/builder/general\_options/code\_fields.yaml) file

These pages are designed to dump data quickly, such as Terms & Conditions or Privacy Policy Information



### Dynamic (Builder) Pages

These pages are more powerful. You can build pages exactly how you want. They support a lot of features but most of them are covered in the Block Types area of the documentation. To summarize, These pages have the following content and abilites:

* A "builder block" style area supported by [October CMS's repeater field widget](https://docs.octobercms.com/3.x/element/form/widget-repeater.html) with the following blocks:
  * [Hero ](blocks/block-types/hero.md)(Section with Background Image, content, and buttons from the [buttons.yaml](https://github.com/artistro08/tailor-starter/blob/main/seeds/blueprints/content/mixins/builder/buttons/buttons.yaml) file)
  * [Section ](blocks/block-types/section/)Block With configurable columns matching the top level of selectable blocks
  * [Posts ](blocks/block-types/posts.md)which are filterable
  * [Events ](../events/)which are filterable
  * [Products ](blocks/block-types/products.md)which are filterable
  * [Forms ](../forms/)which displays a chosen form&#x20;
* SEO & OG Tag information provided by the [`seo_fields.yaml`](https://github.com/artistro08/tailor-starter/blob/main/seeds/blueprints/content/mixins/builder/general\_options/seo\_fields.yaml) file
* Header, Body, and Footer code areas provided by the [`code_fields.yaml`](https://github.com/artistro08/tailor-starter/blob/main/seeds/blueprints/content/mixins/builder/general\_options/code\_fields.yaml) file

