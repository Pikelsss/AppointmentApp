/** @type {import('tailwindcss').Config} */
module.exports = {
  content: []
    .concat([
      './app/views/**/*.{erb,haml,html,slim}',
      './app/helpers/**/*.rb',
      './app/javascript/**/*.js',
      './app/components/**/*.{erb,haml,html,slim,rb}',
      './config/initializers/simple_form_tailwind.rb',
    ]),
  theme: {
    extend: {
      colors;{
  'blue': {
    500: '#3B82F6',
      600: '#2563EB',
        700: '#1D4ED8',
        },
  'gray': {
    50: '#F9FAFB',
      100: '#F3F4F6',
        200: '#E5E7EB',
          300: '#D1D5DB',
            400: '#9CA3AF',
              500: '#6B7280',
                600: '#4B5563',
                  700: '#374151',
                    800: '#1F2937',
                      900: '#111827',
        },
  'neutral': {
    400: '#9CA3AF',
      500: '#6B7280',
        600: '#4B5563',
          700: '#374151',
            800: '#1F2937',
              900: '#111827',
      }
},
  },
plugins: [
  require('@tailwindcss/typography'),
  require('@tailwindcss/forms'),
  require('@tailwindcss/aspect-ratio'),
  require('@tailwindcss/container-queries'),
  require('preline/plugin'),
],
}

