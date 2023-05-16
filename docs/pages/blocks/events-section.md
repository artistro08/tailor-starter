# Events Section

This block shows Events from the [Events ](../../events.md)entry type. The section's display behavior is controlled by the following settings:

* `settings.enable_events`: Defined in the [Settings](../../settings.md)
* `section.reverse_order`: A boolean value indicating whether the events should be displayed in reverse order.
* `section.show_specific_items`: A boolean value indicating whether specific events should be displayed.
* `section.specific_items`: An array of specific events to display, if `section.show_specific_items` is `true`.
* `section.sort_by`: A string value indicating how to sort the events. Possible values are `'title'` or `'date'`.
* `section.enable_pagination`: A boolean value indicating whether to display the events with pagination.
* `section.limit`: An integer value indicating the number of events to display per page, if `section.enable_pagination` is `true`.

The section's tag name is either `section` or the `section.html_tag` in the [Advanced Tab](section/advanced-tab.md) fields if you have it set. The Advanced Tab fields also add an ID attribute and CSS Classes that you specify. You can also adjust the Bootstrap container type as well in this tab.&#x20;

You can also adjust the spacing before and after using the switches from `section.disable_top_spacing`, and `section.disable_bottom_spacing` respectfully.

The code sets several time-related variables, such as the current date/time, various formats for displaying the date and time of events based on the section's settings, such as hiding the event date or hiding the event time based on the [Events ](../../events.md)settings

If the section is set to show "upcoming" events, the code filters the `events` array to only include events with a date that is greater than or equal to the current date.

The code then sorts the `events` and `older_events` arrays based on either the event title or date, as specified in the section's settings.

### Files Used

The following files are used to display this content

* [`builder/events/*`](https://github.com/artistro08/tailor-starter/tree/main/seeds/blueprints/content/mixins/builder/events) used in the [`builder.yaml`](https://github.com/artistro08/tailor-starter/blob/main/seeds/blueprints/content/mixins/builder/builder.yaml) file
* [`builder/sections/events.htm`](https://github.com/artistro08/tailor-starter/blob/main/partials/builder/sections/events.htm) partial file

