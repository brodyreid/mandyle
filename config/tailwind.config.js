const defaultTheme = require('tailwindcss/defaultTheme')

/** @type {import('tailwindcss').Config} */

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
      backgroundImage: {
        'hero-pattern': '../app/assets/images/hero-pattern.svg',
        'footer-texture': "url('/img/footer-texture.png')",
      },
    },
    plugins: [
      require('@tailwindcss/forms'),
      require('@tailwindcss/aspect-ratio'),
      require('@tailwindcss/typography'),
      require('@tailwindcss/container-queries'),
    ]
  }
}
