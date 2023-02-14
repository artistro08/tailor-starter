# Editing Blocks

## Best Practices

If you need more content in the current blocks, you can add on to the blueprints. The recommended way to edit the blocks is to copy the files form the `seeds` folder into your child theme and edit what you need there.&#x20;

Once you're done, just seed your theme with the following command:

```bash
php artisan theme:seed your-child-theme-directory --root 
```

> The [`--root`](https://docs.octobercms.com/3.x/cms/themes/seeding-themes.html#seeding-a-theme) flag ensures you're not using your theme folder as a top level directory.&#x20;

Doing this ensures that when you edit the content, you can seed directly on top of the theme's blueprint files without too much trouble.&#x20;

## Directory Structure

It is recommended that you keep the same directory structure to minimize any conflicting blueprints. This will ensure that the content is displayed correctly in the frontend and the backend.&#x20;
