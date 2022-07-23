const { environment } = require('@rails/webpacker')

// ここから
// jQueryを使えるように
const webpack = require('webpack')
environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery/src/jquery',
    jQuery: 'jquery/src/jquery',
    Popper: ['popper.js', 'default']
  })
)
// ここまで

module.exports = environment
