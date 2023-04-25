# Products Section

The Product Section Block is used to display products from the [Products ](../../shop/products.md)entry type and displays them a Bootstrap Column Grid

The code checks if the shop is enabled the [Settings](../../settings.md), and if so, it proceeds to retrieve and sort products based on different displayed by the block. The sorting criteria are determined by the values of `section.sort_by` and `section.reverse_order`. If `section.sort_by` is set to "title", the products will be sorted by their title, either in ascending or descending order. If `section.sort_by` is set to "date", the products will be sorted by their publication date, either in ascending or descending order.

The code also checks if `section.show_specific_items` is set to true, and if so, it retrieves only the products specified in `section.specific_items`. Additionally, if `section.filter_by_category` is set to true, the code filters the products by their category using the `whereRelation` method and `section.product_category_filter.id`.

The code also checks if `section.enable_pagination` is set to true, and if so, it paginates the products using the [`paginateCustom` ](https://docs.octobercms.com/3.x/cms/features/pagination.html#multiple-pagination-instances)method and sets the limit to `section.limit`. If `section.enable_pagination` is not set to true, the code limits the number of products displayed to `section.limit` using the `limit` method.

The section's tag name is either `section` or the `section.html_tag` in the [Advanced Tab](section/advanced-tab.md) fields if you have it set. The Advanced Tab fields also add an ID attribute and CSS Classes that you specify. You can also adjust the Bootstrap container type as well in this tab.&#x20;

You can also adjust the spacing before and after using the switches from `section.disable_top_spacing`, and `section.disable_bottom_spacing` respectfully.

A partial template named [`builder/globals/shop_alerts.htm`](https://github.com/artistro08/tailor-starter/blob/main/partials/builder/globals/shop\_alerts.htm) is used to show shop alerts, mainly if the Stripe Keys are set or not.&#x20;

### Files Used

The following files are used to display this content

* [`builder/products/*`](https://github.com/artistro08/tailor-starter/tree/main/seeds/blueprints/content/mixins/builder/products) (Minus the [`product_attributes.yaml`](https://github.com/artistro08/tailor-starter/blob/main/seeds/blueprints/content/mixins/builder/products/product\_attributes.yaml) file) included in the [builder.yaml ](https://github.com/artistro08/tailor-starter/blob/542d106a4c08bf56811491d8aa5cacbdfbd62159/seeds/blueprints/content/mixins/builder/builder.yaml#L14)file
* [`builder/section/product.htm`](https://github.com/artistro08/tailor-starter/blob/main/partials/builder/columns/products.htm) partial file
