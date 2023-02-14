# Events

## Introduction

Events are Tailor Blueprint entries designed to show events based on the entry's settings. Event entry content is determined by the [`events.yaml`](https://github.com/artistro08/tailor-starter/blob/main/seeds/blueprints/content/events/event.yaml) file.

The idea behind events are to show them as quickly as possible without having to go through a lot of loops.&#x20;

### Event Entry Properties

Events have the following content fields:

* A content field
* A short description (used in the [Page Blocks](pages/blocks/))
* An Image field used to display behind the title (and date depending where the event is being displayed)
* An event link
* A location link
* A Location (used if the location link is set)
* Event Options
  * Ability to hide event dates
  * Ability to hide event times
  * Ability to add recurring events
* Ability to set start and end times with events
* [Recurring Events](events.md#recurring-events)
* SEO & OG Tag information provided by the [`seo_fields.yaml`](https://github.com/artistro08/tailor-starter/blob/main/seeds/blueprints/content/mixins/builder/general\_options/seo\_fields.yaml) file
* Header, Body, and Footer code areas provided by the [`code_fields.yaml`](https://github.com/artistro08/tailor-starter/blob/main/seeds/blueprints/content/mixins/builder/general\_options/code\_fields.yaml) file

### Recurring Events

Recurring events depend on the start and end date fields and automatically calculate repetence based on the following settings:

* Recurrence
  * Daily
  * Weekly
  * Bi-Weekly
  * Monthly
  * Bi-Monthly
  * Yearly
  * [Custom](events.md#custom-recurrences)
* Repeat Length
  * &#x20;Only used if "Custom" is not set

#### Custom Recurrences

These recurrences give you more flexibility to pick exact start and end dates for anything.

## Template Files

The files below are used to display content throughout the site. Below is an explanation of what each file does and how things are rendered.&#x20;

### Events

#### `event.htm`

[This file](https://github.com/artistro08/tailor-starter/blob/main/pages/event.htm) is used to display a single event entry type from the [`event.yaml`](https://github.com/artistro08/tailor-starter/blob/main/seeds/blueprints/content/events/event.yaml) blueprint.&#x20;

### Blueprints

#### `builder/events/*`

[These files](https://github.com/artistro08/tailor-starter/tree/main/seeds/blueprints/content/mixins/builder/events) are used to render the top level Section blocks in the Dynamic Page Builder.

