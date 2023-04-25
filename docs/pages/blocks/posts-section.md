# Posts Section

The Posts Section Block displays posts from the [Blog ](../../blog/)entry type according to specified settings. The section's display behavior is controlled by the following settings:

* `settings.enable_blog`: Defined in the [Settings](../../settings.md)
* `section.reverse_order`: A boolean value indicating whether the posts should be displayed in reverse order.
* `section.show_specific_items`: A boolean value indicating whether specific posts should be displayed.
* `section.specific_items`: An array of specific posts to display, if `section.show_specific_items` is `true`.
* `section.filter_by_category`: A boolean value indicating whether the posts should be filtered by category.
* `section.post_category_filter`: The category to filter posts by, if `section.filter_by_category` is `true`.
* `section.sort_by`: A string value indicating how to sort the posts. Possible values are `'title'` or `'date'`.
* `section.enable_pagination`: A boolean value indicating whether to display the posts with pagination.
* `section.limit`: An integer value indicating the number of posts to display per page, if `section.enable_pagination` is `true`.

Based on these settings, the code is executing the following operations:

1. If `section.show_specific_items` is `true`, the code initializes an empty array `posts` and pushes specific posts into it.
2. If `section.filter_by_category` is `true`, the code filters the `posts` array to only include posts that belong to the specified category.
3. If `section.sort_by` is `'title'`, the code sorts the `posts` array either ascending or descending based on `section.reverse_order`. If `section.show_specific_items` is `false`, the code sorts the posts using the `orderBy` function, otherwise, the code sorts the posts using the `sortBy` function.
4. If `section.sort_by` is `'date'`, the code sorts the `posts` array either ascending or descending based on `section.reverse_order` by post's published date.
5. If `section.enable_pagination` is `true`, the code paginates the `posts` array using the `paginateCustom` function. Otherwise, the code limits the number of posts to `section.limit` using the `limit` function.
6. The code then generates HTML to display the posts in the blog section, using the specified HTML tag, anchor, CSS classes, and styles. For each post, the code displays the post's title, author, and image.

The section's tag name is either `section` or the `section.html_tag` in the [Advanced Tab](section/advanced-tab.md) fields if you have it set. The Advanced Tab fields also add an ID attribute and CSS Classes that you specify. You can also adjust the Bootstrap container type as well in this tab.&#x20;

You can also adjust the spacing before and after using the switches from `section.disable_top_spacing`, and `section.disable_bottom_spacing` respectfully.

Note: This code requires additional context and information about the Twig functions used (e.g. [`collect`](https://docs.octobercms.com/3.x/markup/function/collect.html), [`whereRelation`](https://docs.octobercms.com/3.x/cms/components/collection.html#performing-queries), [`sortBy`](https://docs.octobercms.com/3.x/markup/function/collect.html#sortby), `orderBy`(Similar to `sortBy`), [`paginateCustom`](https://docs.octobercms.com/3.x/cms/features/pagination.html#multiple-pagination-instances), [`page`](https://docs.octobercms.com/3.x/markup/filter/page.html), [`resize`](https://docs.octobercms.com/3.x/markup/filter/resize.html), etc.) to fully understand the implementation.

### Files Used

The following files are used to display this content

* [`builder/blog/*` ](https://github.com/artistro08/tailor-starter/tree/main/seeds/blueprints/content/mixins/builder/blog)included in the [`builder.yaml`](https://github.com/artistro08/tailor-starter/blob/main/seeds/blueprints/content/mixins/builder/builder.yaml) file
* [`builder/section/posts.htm`](https://github.com/artistro08/tailor-starter/blob/main/partials/builder/sections/posts.htm) partial used to display Blog Posts

