# Hero Section

The Hero Section Block is used to display a "hero" section on a web page, which is typically a full-width header area with a background image, text content, and optional buttons.

The code first sets two variables, `heroImage` and `heroImageAlt`, to empty strings. These variables will be used to store the URL and alternate text of the hero image respectively.

A series of `if` statements determine the source of the hero image based on the value of the `section.image_type` variable. The possible values of `section.image_type` are "media\_library", "product\_category\_image", and "blog\_category\_image".

* If `section.image_type` is "media\_library", the hero image URL is set to `section.image`, and the alternate text is set to `section.image_description`.
* If `section.image_type` is "product\_category\_image", the hero image URL is set to `section.product_category.image`, and the alternate text is set to `section.product_category.title`. The code also checks if `section.product_category.image` has a length, as this means that an image has been set for the product category.
* If `section.image_type` is "blog\_category\_image", the hero image URL is set to `section.blog_category.image`, and the alternate text is set to `section.blog_category.title`. The code also checks if `section.blog_category.image` has a length, as this means that an image has been set for the blog category.

After determining the source of the hero image, the code then outputs the HTML for the hero section. The section is a header element (or any other HTML tag specified in `section.html_tag`) with a number of CSS classes applied in the [Advanced Tab](section/advanced-tab.md) fields. The section also includes a `div` with the content of the hero section (specified in `section.content`), and optional buttons (if `section.buttons` has a length).

Finally, the code outputs the hero image if `heroImage` has a length. The image is a full-width `img` element with the `src` attribute set to `heroImage|media|resize(1920)`, which is the hero image resized to a width of 1920 pixels. The alternate text for the image is set to `heroImageAlt`.



### Files Used

The following files are used to display this content

* [`hero.yaml`](https://github.com/artistro08/tailor-starter/blob/main/seeds/blueprints/content/mixins/builder/hero/hero.yaml) blueprint file included in the [`builder.yaml` ](https://github.com/artistro08/tailor-starter/blob/542d106a4c08bf56811491d8aa5cacbdfbd62159/seeds/blueprints/content/mixins/builder/builder.yaml#L14)file
* [`buttons.yaml`](https://github.com/artistro08/tailor-starter/blob/main/seeds/blueprints/content/mixins/builder/buttons/buttons.yaml) blueprint file
* [`builder/sections/hero.htm`](https://github.com/artistro08/tailor-starter/blob/main/partials/builder/sections/hero.htm) partial file

