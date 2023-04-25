# Section

The section Block generates an HTML section element with various customizations based on the values of the `section` object passed to the template. This section generates Bootstrap Columns and be adjusted based on the column section of each block

The general idea behind Section blocks is that you can add any content in here, but follow Semantic HTML.&#x20;

The section's tag name is either `section` or the `section.html_tag` in the [Advanced Tab](advanced-tab.md) fields if you have it set. The Advanced Tab fields also add an ID attribute and CSS Classes that you specify. You can also adjust the Bootstrap container type as well in this tab.&#x20;

You can set a background to a section by going under the Background Image Tab.

You can also adjust the spacing before and after using the switches from `section.disable_top_spacing`, and `section.disable_bottom_spacing` respectfully.&#x20;

The section element contains a `row` element with a `class` attribute set to `row-cols-lg-` followed by the length of `section.columns`  and is dynamically set by the number of column blocks, as well as additional classes to set the row's direction on mobile devices based on the value of `section.reverse_columns_on_mobile`.&#x20;

For each `column` block in `section.columns`, the template generates a Bootstrap Column  and adds spacing unless `column.disable_bottom_spacing` is true, as well as additional classes based on the values of `column.position`, and `column.width`. The Bootstrap Column will contain content that depends on which column block you add.

### Section Column Blocks

You can view more about each column block by browsing each block below:

* [Content Column ](content-column.md)Block
* [Buttons Column ](buttons-column.md)Block
* [Image Column ](image-column.md)Block
* [Posts Column ](posts-column.md)Block
* [Events Column](events-column.md) Block
* [Products Column](products-column.md) Block
* [Form Column ](form-column-1.md)Block

### Files Used

The following files are used to display this content

* [`section.yaml`](https://github.com/artistro08/tailor-starter/blob/main/seeds/blueprints/content/mixins/builder/section/section.yaml) which is used in the [`builder.yaml`](https://github.com/artistro08/tailor-starter/blob/main/seeds/blueprints/content/mixins/builder/builder.yaml) blueprint file
* [`general_options/advanced_fields.yaml`](https://github.com/artistro08/tailor-starter/blob/main/seeds/blueprints/content/mixins/builder/general\_options/advanced\_fields.yaml) file
* [`general_options/section_header.yaml`](https://github.com/artistro08/tailor-starter/blob/main/seeds/blueprints/content/mixins/builder/general\_options/section\_header.yaml) file
* [`builder/sections/section.htm`](https://github.com/artistro08/tailor-starter/blob/main/partials/builder/sections/section.htm) partial file



