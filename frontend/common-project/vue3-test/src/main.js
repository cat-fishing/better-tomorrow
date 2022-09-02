//vue3中不再通过vue构造函数引用vue，而是通过名为createApp的工厂函数
import { createApp } from 'vue'
import App from './App.vue'

createApp(App).mount('#app')
