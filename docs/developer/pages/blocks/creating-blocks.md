# Creating Blocks

## Introduction

Adding blocks should stem from your child theme and be included in your seeds so that the original theme structure can be restored if needed. Follow the [Seeding Themes](https://docs.octobercms.com/3.x/cms/themes/seeding-themes.html) documentation to seed your alterations to the blocks. You can edit the blueprints directly in the `app/blueprints` folder, but it's not recommended if you plan on updating the theme.&#x20;

From this point forward, it is assumed that you are creating blueprints in your seeds folder and seeding it from there.&#x20;

## Adding Your block to The Builder

### Adding your block to the `builder` and `columns` group

To add your block to the builder group, you'll first need to create your own mixin content blocks within the `seeds/blueprints/content/mixins/builder/` folder.

The following assumes you created a `custom_block` folder inside the above folder. This folder should contain the following files

#### `custom_block_column.yaml`

Used for the [Section ](section/)builder column blocks

<pre class="language-yaml"><code class="lang-yaml">uuid: #Your Unique UUID
handle: Content\CustomBlockColumn
type: mixin
name: Custom Block Column
fields:
  <a data-footnote-ref href="#user-content-fn-1">column_header</a>:
    type: mixin
    label: Column Header
    source: Content\ColumnHeader
  <a data-footnote-ref href="#user-content-fn-2">common_fields</a>:
    type: mixin
    source: Content\CustomBlockCommonFields
  hr_1:
    type: ruler
  <a data-footnote-ref href="#user-content-fn-3">column_options</a>:
    type: mixin
    source: Content\ColumnOptions
</code></pre>

#### `custom_block_common.yaml`

Common fields used within the [Section ](section/)& [Column Blocks](section/#section-column-blocks)

```yaml
uuid: #Your Unique UUID
handle: Content\CustomBlockCommonFields
type: mixin
name: Common Event Fields
fields:
  #Your Fields Here...
```

#### `custom_block.yaml`

Used for to create a Top Level Section block

<pre class="language-yaml"><code class="lang-yaml">uuid: #Your Unique UUID
handle: Content\CustomBlock
type: mixin
name: Events
fields:
  <a data-footnote-ref href="#user-content-fn-4">section_header</a>:
    type: mixin
    source: Content\SectionHeader
  <a data-footnote-ref href="#user-content-fn-5">common_fields</a>:
    type: mixin
    source: Content\CustomBlockCommonFields
  <a data-footnote-ref href="#user-content-fn-6">advanced_content</a>:
    type: mixin
    source: Content\AdvancedFields
    label: Advanced Settings
    tab: Advanced
</code></pre>

Once you've created your custom block blueprint files, you'll need to add them to the Section and Column areas  which are in the [`builder.yaml`](https://github.com/artistro08/tailor-starter/blob/main/seeds/blueprints/content/mixins/builder/builder.yaml) and [`section.yaml`](https://github.com/artistro08/tailor-starter/blob/main/seeds/blueprints/content/mixins/builder/section/section.yaml) blueprint files respectfully

#### `builder.yaml`

```yaml
uuid: 78650dea-607e-4c63-bde8-2364cb786072
handle: Content\Builder
type: mixin
name: Builder

fields:
  builder:
    type: repeater
    label: Builder
    displayMode: builder
    span: adaptive
    prompt: Add a Block
    groups:
      #...
      custom_block:
        name: Custom Block
        icon: icon-toggle-on
        description: Your Custom Block Description
        titleFrom: title
        useTabs: true
        fields:
          hero:
            type: mixin
            source: Content\CustomBlock
```

#### `section.yaml`

```yaml
uuid: 1be4d611-a49d-11ed-9116-3a678152e91c
handle: Content\Section
type: mixin
name: Section
fields:
  section_header:
    type: mixin
    source: Content\SectionHeader
    tab: General
  reverse_columns_on_mobile:
    label: Reverse Columns on Mobile
    comment: Useful if you have content that needs to be stacked a different way on a phone.
    type: switch
    tab: General
  hr_1:
    type: ruler
    tab: General
  columns:
    label: Content
    type: repeater
    commentAbove: Create content for this section. Each content block uses it's own column. Max of 4 per section.
    span: full
    displayMode: builder
    tab: General
    groups:
      #...
      custom_column_block:
        name: Custom Block
        icon: icon-toggle-on
        description: Your Custom Block Description
        titleFrom: title
        fields:
          custom_column_block:
            type: mixin
            source: Content\CustomBlock
      #...
```

Once done, you should see your block within the builder after you run:

```bash
php artisan october:migrate
```

## Displaying Block Content

Awesome, your block is in the builder. Now it's time to render it's content. You'll need to create some partials under `builder/sections` and `builder/columns` to prep the content for rendering.&#x20;

#### `builder/sections/custom_block.htm`

<pre class="language-twig"><code class="lang-twig"><strong>&#x3C;{{ section.html_tag == "default" ? "section" : section.html_tag }} 
</strong>        {{ section.html_anchor|length ? 'id="' ~  section.html_anchor  ~ '"' }}
        class="{% if section.css_classes|length %}
                    {% for class in section.css_classes|split(',') %}
                        {{ class ~ ' ' }}
                    {% endfor %}
               {% endif %}
               {{ section.style == 'light' ? 'bg-light' }} 
               {{ section.style == 'dark' ? 'bg-dark text-white' }} 
               {{ section.disable_top_spacing == true ? 'pt-0' : "pt-4" }} 
               {{ section.disable_bottom_spacing == true ? 'pb-0' : "pb-4" }}"
>
    &#x3C;div class="{{ section.container_style }}">
        Hello World!
    &#x3C;/div>
&#x3C;/{{ section.html_tag == "default" ? "section" : section.html_tag }}>
</code></pre>

> The snippet above includes all the extra Advanced Tab content to get you started.&#x20;

Next up, creating the column block

#### `builder/columns/custom_block.htm`

```twig
Hello World!
```

> The columns block doesn't depend on any content inside of it, so you can initialize it without any extra content

### Adding the blocks to the pages

Now that you've created the blocks, time to reference them in their respective sections

#### `builder/items.htm`

<pre class="language-twig"><code class="lang-twig">{# ... #}
{# Custom Block #}
{% if section.content_group == <a data-footnote-ref href="#user-content-fn-7">'custom_block'</a> %}
    {% partial 'builder/sections/hero' <a data-footnote-ref href="#user-content-fn-8">section=section</a> %}
{% endif %}
</code></pre>

#### `builder/sections/section.htm`

<pre class="language-twig"><code class="lang-twig">    {# ... #}
    &#x3C;div class="{{ section.container_style }}">
        &#x3C;div class="row row-cols-lg-{{ section.columns|length }} row-cols-1 mx-auto {{ section.reverse_columns_on_mobile ? 'flex-lg-row flex-column-reverse' }}">
            {% for column in section.columns %}
                &#x3C;div class="col {{ column.disable_bottom_spacing == true ? 'mb-0' : 'mb-5' }} {{ column.position }} {{ column.width|length ? "col-lg-" ~ column.width : '12' }}">
                    
                    {# ... #}

                    {# Custom Column Group #}
                    {% if column.content_group == <a data-footnote-ref href="#user-content-fn-9">"custom_block"</a> %}
                        {% partial 'builder/columns/form' <a data-footnote-ref href="#user-content-fn-10">column = column</a> %}
                    {% endif %}
                    
                    {# ... #}
                &#x3C;/div>
            {% endfor %}
        &#x3C;/div>
    &#x3C;/div>
</code></pre>

That's it! You've successfully created a custom block. It's a good idea to use folders to organize all your custom blocks.&#x20;

[^1]: References the column block header to keep consistent with the other blocks

[^2]: Common Fields that you use throughout the section and column blocks

[^3]: References the column grid options for the Bootstrap Column Grid

[^4]: References the column block header to keep consistent with the other blocks

[^5]: Common Fields that you use throughout the section and column blocks

[^6]: References the [Advanced Tab](section/advanced-tab.md) fields used throughout the sections

[^7]: Reference the group name that you added earlier in the `builder.yaml` file

[^8]: Pass in the `section` variable if you need that content available in the partials you made earlier

[^9]: Reference the group name that you added earlier in the `section.yaml` file

[^10]: Pass in the `column` variable if you need that content available in the partials you made earlier
