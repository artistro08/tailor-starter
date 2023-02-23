# Search

## Introduction

Search allows you to search any front facing content on the site. It is disabled by default.&#x20;

In order to use the search, you'll need create a [Search Page](pages/#search-pages) and set it as default in the [Search Settings ](settings.md#search-tab)

## How Search Works

The search query from either a [Search Section](pages/blocks/search-section.md) block or Global Search is used to search all titles, rich text content (from top level rich editor adaptive fields), meta content (SEO `meta_title` and `meta_description`), and rich text content fields from blocks. You can specify what entry types to search by configuring the block or settings to do so.&#x20;

You can also refine the search to other stuff by updating the queries in the `search_results.htm` file. Use that file as an example to extend the search to other blocks and content.&#x20;

### Global Search

Global search is defined in the navbar. It's used to search content globally and is different from the Search Blocks.&#x20;

## Template Files

The files below are used to display content throughout the site. Below is an explanation of what each file does and how things are rendered.&#x20;

### Partials

#### `search/*`

[These files](https://github.com/artistro08/tailor-starter/tree/main/partials/search) are used to return search content from the search query.&#x20;

### Blueprints

#### `blueprints/search/*`

[These files](https://github.com/artistro08/tailor-starter/tree/main/seeds/blueprints/content/mixins/builder/search) are used to render the top level Section blocks in the Dynamic Page Builder

