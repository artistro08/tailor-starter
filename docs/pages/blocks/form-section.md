# Form Section

This section is used to display forms from the [Forms ](../../forms/)entry type. You can select one form to display on the page for this block.&#x20;

The section's tag name is either `section` or the `section.html_tag` in the [Advanced Tab](section/advanced-tab.md) fields if you have it set. The Advanced Tab fields also add an ID attribute and CSS Classes that you specify. You can also adjust the Bootstrap container type as well in this tab.&#x20;

You can also adjust the spacing before and after using the switches from `section.disable_top_spacing`, and `section.disable_bottom_spacing` respectfully.&#x20;

Since the form content is interchangeable, the form content for the block is placed in [`tailor_modules/form`](https://github.com/artistro08/tailor-starter/blob/main/partials/tailor\_modules/form.htm) partial. This is used in both the Section and Column blocks.

### Files Used

The following files are used to display this content

* [`builder/form/*`](https://github.com/artistro08/tailor-starter/tree/main/seeds/blueprints/content/mixins/builder/form) blueprint files used in the `builder.yaml` file
* [`tailor_modules/form.htm`](https://github.com/artistro08/tailor-starter/blob/main/partials/tailor\_modules/form.htm) partial file
