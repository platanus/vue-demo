<template>
  <div>
    <div class="grid grid-cols-3 gap-4">
      <div
        v-for="product in products"
        :key="product.id"
        class="border"
      >
        <product
          :product="product"
        />
      </div>
    </div>
  </div>
</template>

<script>
import Product from './product';

export default {
  components: { Product },
  props: {
    products: { type: Array, required: true },
  },
};
</script>
