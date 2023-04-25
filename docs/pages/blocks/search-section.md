# Search Section

This section is used to display a search field. You can configure the searchable entry types and set a field placeholder for the search field.&#x20;

By default, it uses the [Default Search Page](../../settings.md#search-tab) in the Settings if no page is set.&#x20;

The section's tag name is either `section` or the `section.html_tag` in the [Advanced Tab](section/advanced-tab.md) fields if you have it set. The Advanced Tab fields also add an ID attribute and CSS Classes that you specify. You can also adjust the Bootstrap container type as well in this tab.&#x20;

You can also adjust the spacing before and after using the switches from `section.disable_top_spacing`, and `section.disable_bottom_spacing` respectfully.&#x20;

### Files Used

The following files are used to display this content

* [`builder/search/*`](https://github.com/artistro08/tailor-starter/tree/main/seeds/blueprints/content/mixins/builder/search) blueprint files used in the `builder.yaml` file
* [`search/*`](https://github.com/artistro08/tailor-starter/tree/main/partials/search) partial files used to render search&#x20;
