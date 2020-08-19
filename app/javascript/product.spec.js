import { shallowMount } from '@vue/test-utils';
import Product from 'product';

describe('product', () => {
  describe('when is selected', () => {
    test('select btn is painted green', () => {
      const wrapper = shallowMount(Product, { propsData: { product: { selected: true } } });
      expect(wrapper.find('#select-btn').classes()).toEqual(expect.arrayContaining(['bg-green-500']));
    });
  });

  describe('when is not selected', () => {
    test('select btn is not painted green', () => {
      const wrapper = shallowMount(Product, { propsData: { product: { selected: false } } });
      expect(wrapper.find('#select-btn').classes()).not.toEqual(expect.arrayContaining(['bg-green-500']));
    });
  });
});
