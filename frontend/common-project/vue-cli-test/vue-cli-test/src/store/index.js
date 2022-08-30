//该文件用于创建Vuex中最为核心的store

import Vuex from 'vuex'
import Vue from 'vue'
Vue.use(Vuex)
//准备actions：用于响应组件中的动作
const actions = {
    add(context,value){
        context.commit('add',value)
    },
    decrease(context,value){
        context.commit('decrease',value)
    }
}

//准备mutations：用于操作数据(state)
const mutations = {
    add(store,value){
        store.sum += value
    },
    decrease(store,value){
        store.sum += value
    }
}

//准备state：用于存储数据
const state = {
    sum:0
}

export default new Vuex.Store({
    actions,
    mutations,
    state,
})