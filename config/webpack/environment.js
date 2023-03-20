const { environment } = require('@rails/webpacker')

// 以下Webpackの設定ファイルでjQueryを管理下として認定します。
const webpack = require('webpack')
environment.plugins.prepend('Provide',
    new webpack.ProvidePlugin({
        $: 'jquery/src/jquery',
        jQuery: 'jquery/src/jquery'
    })
)
// ここまで

module.exports = environment
