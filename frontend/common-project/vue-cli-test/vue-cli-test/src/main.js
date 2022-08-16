import Vue from 'vue'
import App from './App.vue'
import plugins from "./plugins"

Vue.config.productionTip = false
Vue.use(plugins)
new Vue({
  beforeCreate(){
    //安装全局事件总线
    Vue.prototype.$bus = this
  },
  render: h => h(App),
}).$mount('#root')
