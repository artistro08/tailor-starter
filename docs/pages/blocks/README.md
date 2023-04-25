# Blocks

## Introduction

Blocks are a cluster of blueprint mixins that make up the builder part of the [Dynamic Pages](../#dynamic-builder-pages).&#x20;

## General Block Structure

There are two general types of blocks. Section and Columns.&#x20;

### Section Blocks

The section blocks are top level blocks that you can add to any Dynamic Page. They display information in a `<section>` , `<header>`, or `<article>` depending on your [Advanced Tab](section/advanced-tab.md) settings.&#x20;

### Column Blocks

The Column blocks are carbon copies of the Section blocks except they include a section for configurable columns. They work exactly like the Section blocks, but are wrapped in a [Bootstrap Column](https://getbootstrap.com/docs/5.2/layout/columns/#how-they-work). The column width is configurable and based on a 12 column grid They only exist in Section blocks. They also have [Advanced Settings](section/advanced-tab.md) as well

## File Structure (`mixins` Folder)

Below is a file structure with annotations to explain what each block blueprint file does:

> Note: This does not include the entire `mixins` file structure. To see the the structure [head here](https://github.com/artistro08/tailor-starter/tree/main/seeds/blueprints/content/mixins/builder)

<pre class="language-html"><code class="lang-html">builder/
┣ blog/
┃ ┣ <a data-footnote-ref href="#user-content-fn-1">blog.yaml</a>
┃ ┣ <a data-footnote-ref href="#user-content-fn-2">blog_column.yaml</a>
┃ ┗ <a data-footnote-ref href="#user-content-fn-3">blog_common.yaml </a>
┣ buttons/
┃ ┗ <a data-footnote-ref href="#user-content-fn-4">buttons.yaml</a>
┣ events/
┃ ┣ <a data-footnote-ref href="#user-content-fn-5">events.yaml</a>
┃ ┣ <a data-footnote-ref href="#user-content-fn-6">events_column.yaml</a>
┃ ┗ <a data-footnote-ref href="#user-content-fn-7">events_common.yaml</a>
┣ form/
┃ ┣ <a data-footnote-ref href="#user-content-fn-8">form.yaml</a>
┃ ┗ <a data-footnote-ref href="#user-content-fn-9">form_column.yaml</a>
┣ general_options/
┃ ┣ <a data-footnote-ref href="#user-content-fn-10">advanced_fields.yaml</a>
┃ ┣ <a data-footnote-ref href="#user-content-fn-11">column_header.yaml</a>
┃ ┣ <a data-footnote-ref href="#user-content-fn-12">column_options.yaml</a>
┃ ┣ <a data-footnote-ref href="#user-content-fn-13">pagination.yaml</a>
┃ ┣ <a data-footnote-ref href="#user-content-fn-14">section_header.yaml</a>
┃ ┗ <a data-footnote-ref href="#user-content-fn-15">specific_items.yaml</a>
┣ hero/
┃ ┗ <a data-footnote-ref href="#user-content-fn-16">hero.yaml</a>
┣ products/
┃ ┣ <a data-footnote-ref href="#user-content-fn-17">products.yaml</a>
┃ ┣ <a data-footnote-ref href="#user-content-fn-18">products_column.yaml</a>
┃ ┗ <a data-footnote-ref href="#user-content-fn-19">products_common.yaml</a>
┣ search/
┃ ┣ <a data-footnote-ref href="#user-content-fn-20">search_column.yaml</a>
┃ ┣ <a data-footnote-ref href="#user-content-fn-21">search_common.yaml</a>
┃ ┗ <a data-footnote-ref href="#user-content-fn-22">search.yaml</a>
┣ section/
┃ ┗ <a data-footnote-ref href="#user-content-fn-23">section.yaml</a>
┣ <a data-footnote-ref href="#user-content-fn-24">blog_builder.yaml</a>
┗ <a data-footnote-ref href="#user-content-fn-25">builder.yaml</a>
</code></pre>

## Block Types

### Section Blocks

The Section block types are as follows:

* [Hero](hero-section.md)
* [Section](section/)
* [Posts](../../blog/posts.md)
* [Events](events-section.md)
* [Products](products-section.md)
* [Form](form-section.md)
* [Search](search-section.md)

### Colum Blocks

The Column block types are as follows:

* [Content](section/content-column.md)
* [Buttons](section/buttons-column.md)
* [Image](section/image-column.md)
* [Posts](section/posts-column.md)
* [Events](section/events-column.md)
* [Products](section/products-column.md)
* [Forms](section/form-column-1.md)
* [Search](search-section.md)







[^1]: Shows Blog Posts in a Section

[^2]: Shows Blog Posts in a Column

[^3]: Contains common fields in the blog section and column blocks

[^4]: Displays Bootstrap Styled buttons. Used in Section Column Blocks and The Hero block.&#x20;

[^5]: Shows Events in a Section

[^6]: Shows Events in a Column

[^7]: Contains common fields in the event section and column blocks

[^8]: Shows a Form in a Section

[^9]: Shows a Form in a Column

[^10]: Contains the fields in the Advanced tab of the Section blocks

[^11]: Used in the Column block types. Displays title information and general field

[^12]: Used in the Column block types. Displays column configurations to adjust the width

[^13]: Used in the front facing post type blocks (section and columns)

[^14]: Used in the Section block types. Displays title information and general field

[^15]: Used in all front facing items to pick a specific blueprint entry type (Except forms)

[^16]: Used for the Hero section block

[^17]: Shows Products in a section

[^18]: Shows Products in a Column

[^19]: Contains common fields in the product section and column blocks

[^20]: Shows a Search block in a column

[^21]: Contains common fields in the search section and column blocks

[^22]: Shows a Search block in a Section

[^23]: Shows a section block with columns

[^24]: Used to build the page in the Blog Posts entry type



[^25]: Used to build pages&#x20;
