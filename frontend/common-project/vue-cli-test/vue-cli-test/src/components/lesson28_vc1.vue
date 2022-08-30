<template>
<div>
    <span>计数：{{sum}}</span><br/>
    <span>扩大十倍：{{computedSum}}</span><br/>
    <button v-on:click="add(1)">+</button>
    <button v-on:click="decrease(-1)">-</button>
</div>
</template>
<script>
import {mapState,mapGetters,mapActions,mapMutations} from 'vuex'

export default {
    name: 'Vc1',
    computed:{
        //优化vue中属性引入

        /*
        es6写法，通过mapstate快速生成计算属性，
        并将结果k-v展开（对象写法）
        */
        //...mapState({sum:'sum'}),

        /*
        es6写法，通过mapstate快速生成计算属性，
        并将结果k-v展开（数组写法），要求字段与state中字段相同
        */
       /*
       vuex组件化拆分后普通写法
       this.$store.state.vc1Options.sum
       */
        ...mapState('vc1Options',['sum']),

        /*
        vuex组件化拆分后普通写法
        this.$store.getters[vc1Options/computedSum]
        */
        ...mapGetters('vc1Options',['computedSum'])
    },

    methods:{
        /*
        add(){
            //不需要请求后台接口可以直接跳过dispatch直接commit
            //this.$store.dispatch('add',1)
            this.$store.commit('add',1)
        },
        /*
        vuex组件化拆分后普通写法
        this.$store.commit('vc1Options/add','add')
        */
        ...mapMutations('vc1Options',{add:'add'}),

        /*
        decrease(){
            this.$store.dispatch('decrease',-1)
        }
        /*
        vuex组件化拆分后普通写法
        this.$store.dispatch('vc1Options/decrease','decrease')
        */
        ...mapActions('vc1Options',{decrease:'decrease'})
    }
}
</script>