//该文件用于创建Vuex中最为核心的store

import Vuex from 'vuex'
import Vue from 'vue'
Vue.use(Vuex)
//vuex组件原始写法
//准备actions：用于响应组件中的动作
// const actions = {
//     add(context,value){
//         context.commit('add',value)
//     },
//     decrease(context,value){
//         context.commit('decrease',value)
//     }
// }

// //准备mutations：用于操作数据(state)
// const mutations = {
//     add(store,value){
//         store.sum += value
//     },
//     decrease(store,value){
//         store.sum += value
//     }
// }

// //准备state：用于存储数据
// const state = {
//     sum:0
// }

// //对state的进一步处理，类似于computed
// const getters = {
//     computedSum(state){
//         return state.sum*10
//     }
// }

//vuex模块化写法，可以单独拆分为文件
const vc1Options = {
    namespaced: 'vc1Options',
    actions:{
        add(context,value){
            context.commit('add',value)
        },
        decrease(context,value){
            context.commit('decrease',value)
        }
    },
    mutations:{
        add(store,value){
            store.sum += value
        },
        decrease(store,value){
            store.sum += value
        }
    },
    state:{
        sum:0
    },
    getters:{
        computedSum(state){
            return state.sum*10
        }
    }
}

export default new Vuex.Store({
    // actions,
    // mutations,
    // state,
    // getters
    modules:{
        vc1Options:vc1Options
    }
})