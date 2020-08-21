/* eslint-disable no-undef */
module.exports = {
  theme: {
    extend: {},
  },
  variants: {
    outline: ['focus'],
  },
  plugins: [],
  purge: {
    enabled: process.env.NODE_ENV !== 'development',
    content: [
      './app/**/*.html',
      './app/**/*.vue',
      './app/**/*.js',
      './app/**/*.erb',
    ],
  },
};
