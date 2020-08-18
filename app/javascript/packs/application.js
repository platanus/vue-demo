import Vue from 'vue/dist/vue.esm';
import Product from '../product.vue';
import '../css/application.css';

document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    el: '#vue-app',
    components: { Product },
  });

  return app;
});
