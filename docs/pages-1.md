# FAQs

## Introduction

FAQs are Tailor Blueprint entries designed to display the frequently asked questions throughout the pages. The idea behind the FAQs is that you can quickly add them and display them in a simple manor. These are defined in the [`faq.yaml`](https://github.com/artistro08/tailor-starter/blob/main/seeds/blueprints/content/faq/faq.yaml) blueprint.

They support a question/answer pair in plain text. The title is never used on the frontend and is used for organization purposes in the backend.&#x20;

## Template Files

The files below are used to display content throughout the site. Below is an explanation of what each file does and how things are rendered.&#x20;

### Partials

#### `builder/sections/faqs.htm`

[This file ](https://github.com/artistro08/tailor-starter/blob/main/partials/builder/sections/faqs.htm)renders a section block with configurable options under the "Styles" tab.

#### `builder/colums/faqs.htm`

[This file](https://github.com/artistro08/tailor-starter/blob/main/partials/builder/columns/faqs.htm) renders exactly the same as the section block, except within a column.

### Blueprints

#### `builder/faq`

[These files](https://github.com/artistro08/tailor-starter/tree/main/seeds/blueprints/content/mixins/builder/faqs) are used to render the blocks in the Dynamic Page Builder (Section and Column)

