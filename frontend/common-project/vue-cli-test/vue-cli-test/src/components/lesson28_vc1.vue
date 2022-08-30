<template>
<div>
    <span>计数：{{$store.state.sum}}</span><br/>
    <span>扩大十倍：{{$store.getters.computedSum}}</span><br/>
    <button v-on:click="add">+</button>
    <button v-on:click="decrease">-</button>
</div>
</template>
<script>
export default {
    name: 'Vc1',
    methods:{
        add(){
            //不需要请求后台接口可以直接跳过dispatch直接commit
            //this.$store.dispatch('add',1)
            this.$store.dispatch('add',1)
        },
        decrease(){
            this.$store.dispatch('decrease',-1)
        }
    }
}
</script>