# Cart

## Introduction

The cart uses the `Session` storage to keep track of the items in the cart. It also uses functions from all the layouts to get the current data of the cart.&#x20;

> Not all functions exist in each layout. They are added as needed depending on the layout.

## Functions Used

### `isJson()`

[This PHP code](https://github.com/artistro08/tailor-starter/blob/542d106a4c08bf56811491d8aa5cacbdfbd62159/layouts/product.htm#L14) takes a single argument, a string of JSON data. The function first decodes the JSON data using the "json\_decode" function and checks if it is a valid JSON object or array. It returns true if the input string is a valid JSON object or array and false otherwise.

### `onBuySubmit()`

[This PHP code](https://github.com/artistro08/tailor-starter/blob/542d106a4c08bf56811491d8aa5cacbdfbd62159/layouts/product.htm#L39) handles a form submission (from the Buy Button) and initiates a Stripe Checkout session. The function starts by grabbing the shop settings, including the currency and Stripe API key. It then gets the input data from an October CMS AJAX request and sets various non-dynamic variables such as product name, ID, price, and description.

Next, it declares arrays for dynamic variables such as pricing, pre-product data, metadata, and option pricing. The function populates these arrays based on the product details received.

After preparing the metadata, the function prepares the pricing for Stripe checkout and sets the shipping methods for checkout. Finally, it initiates a checkout session and redirects the user to the URL of that session.

### `onAddToCart()`

The [`onAddToCart()`](https://github.com/artistro08/tailor-starter/blob/542d106a4c08bf56811491d8aa5cacbdfbd62159/layouts/product.htm#L192) function first retrieves the shop settings and generates success and cancel URLs for Stripe. It then sets the Stripe API key from the shop settings and retrieves input data from an October CMS AJAX request.

Next, it sets several non-dynamic variables for the product being added to the cart, including the product name, ID, price, description, and image. It also declares several arrays for dynamic variables, including pricing, pre-product data, metadata, and option pricing. The function then adds dynamic content to each of these arrays using a series of `foreach` loops.

### `onRemoveFromCart()`

The [`onRemoveFromCart()`](https://github.com/artistro08/tailor-starter/blob/542d106a4c08bf56811491d8aa5cacbdfbd62159/layouts/product.htm#L330) function simply retrieves the shopping cart data from the user's session, removes the item at the specified index, and updates the session data. It then retrieves and returns the updated cart items.

### `onLoad()`

[This PHP code](https://github.com/artistro08/tailor-starter/blob/542d106a4c08bf56811491d8aa5cacbdfbd62159/layouts/product.htm#L339) does the following:

1. Retrieves input data from an October CMS AJAX request.
2. Sets non-dynamic variables such as product name, ID, price, description, and image.
3. Declares arrays for dynamic variables, including pricing, pre-product data, metadata, and option pricing.
4. Adds dynamic content to their respective arrays based on the product details retrieved in step 1.
5. Calculates the option pricing and product total based on the values in the arrays.
6. Sets the values of the arrays and other variables as properties of the current object.
7. Retrieves the cart items from the current session and sets them as a property of the current object.

### `onStart()`

[This PHP code](https://github.com/artistro08/tailor-starter/blob/542d106a4c08bf56811491d8aa5cacbdfbd62159/layouts/product.htm#L426) assigns the value of a session variable called 'cart\_items' to a property of the current object referred to by `$this`. The session variable value is retrieved using the static method `Session::get()`.

### `onCheckout()`

[This PHP code](https://github.com/artistro08/tailor-starter/blob/542d106a4c08bf56811491d8aa5cacbdfbd62159/layouts/product.htm#L430) initiates a checkout session by performing various actions. It retrieves the shop settings, currency, success and cancel URLs. It sets the Stripe key from the settings and gets cart data from the session. It then sets the line items, including product data and metadata, and checks if items are out of stock. The function then sets the shipping options and initiates the checkout session with the line items, shipping options, and success/cancel URLs. Finally, it returns a redirect to the checkout session URL.

## Stripe Webhooks

In order to receive orders in the backend, you'll need to setup your webhooks. You can learn how to do that below:

{% embed url="https://scribehow.com/shared/Obtain_a_Stripe_Webhook_Secret__5lTS37MMRnu_hhGzWJe07w" %}
