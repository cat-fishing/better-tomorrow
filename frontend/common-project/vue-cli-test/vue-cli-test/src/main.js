import Vue from 'vue'
import App from './App.vue'
import plugins from "./plugins"
import store from './store/index'
import router from './router'
import VueRouter from 'vue-router'

Vue.config.productionTip = false
Vue.use(plugins)
Vue.use(VueRouter)

new Vue({
  store,

  beforeCreate(){
    //安装全局事件总线
    Vue.prototype.$bus = this
  },
  render: h => h(App),

  router: router
}).$mount('#root')
