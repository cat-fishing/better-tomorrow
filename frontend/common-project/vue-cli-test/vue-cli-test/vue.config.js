const { defineConfig } = require('@vue/cli-service')
module.exports = defineConfig({
  transpileDependencies: true,
  lintOnSave:false, //关闭eslint检查

  //配置代理
  // devServer:{
  //   proxy:{
  //     '/api':{                          //虚拟路径，需要去除
  //       target:'http://localhost:8080', 
  //       pathRewrite:{'^/api':''},       //路径重写，匹配api开头的字符串，并把api替换为空字符串
  //       ws:true,                        //用于支持websocket
  //       changeOrigin:true               //wei
  //     }
  //   }
  // }
})
