<template>
  <div>
    <div class="my-4 text-center">
      Total: ${{ selectedTotalPrice }}
    </div>
    <div class="grid grid-cols-3 gap-4">
      <div
        v-for="product in normalizedProducts"
        :key="product.id"
        class="border"
      >
        <product
          :product="product"
          @toggled-select="toggleSelect(product)"
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
  data() {
    const productsHash = {};
    this.products.forEach((product) => {
      productsHash[product.id] = { ...product, selected: false };
    });

    return {
      normalizedProducts: productsHash,
    };
  },
  computed: {
    selectedTotalPrice() {
      let total = 0;
      Object.values(this.normalizedProducts).forEach((product) => {
        if (product.selected) {
          total += product.price;
        }
      });

      return total;
    },
  },
  methods: {
    toggleSelect(product) {
      this.normalizedProducts = {
        ...this.normalizedProducts,
        [product.id]: { ...product, selected: !product.selected },
      };
    },
  },
};
</script>
