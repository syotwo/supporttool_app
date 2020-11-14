const { environment } = require('@rails/webpacker')

const webpack = require('webpack')
environment.plugins.prepend('Provide',
    new webpack.ProvidePlugin({
        $: 'jquery',        # 修正完了　　　　　
        jQuery: 'jquery/src/jquery'
    })
)

module.exports = environment

