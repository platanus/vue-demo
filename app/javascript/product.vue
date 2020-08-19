<template>
  <div>
    <div class="relative bg-black">
      <button
        class="absolute top-0 right-0 w-6 h-6 m-2 bg-white rounded-full focus:outline-none"
        :class="{ 'bg-green-500': product.selected }"
        @click="toggleSelected"
      />
      <img
        :src="product.image_url"
        class="h-64 m-auto"
      >
    </div>
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
  </div>
</template>

<script>
export default {
  props: {
    product: { type: Object, required: true },
  },
  methods: {
    toggleSelected() {
      this.$emit('toggled-select');
    },
  },
};
</script>
