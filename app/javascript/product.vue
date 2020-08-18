<template>
  <div class="grid grid-cols-4 grid-rows-2 p-4">
    <div class="col-span-3">
      {{ product.name }}
    </div>
    <div class="col-span-3 text-sm text-gray-600">
      {{ product.brand }}
    </div>
    <div class="self-center col-start-4 row-span-2 row-start-1 text-lg">
      ${{ product.price }}
    </div>
  </div>
</template>

<script>
export default {
  props: {
    product: { type: Object, required: true },
  },
};
</script>
