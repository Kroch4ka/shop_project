module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js'
  ],
    theme: {
      fontFamily: {
          main: ['Jost', 'sans-serif']
      }
    },
  plugins: [
      require('@tailwindcss/forms'),
      require('@tailwindcss/typography')
  ]
}
