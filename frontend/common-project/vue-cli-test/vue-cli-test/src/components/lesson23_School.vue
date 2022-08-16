<template>
    <div>
        <h2>学校名称：{{name}}</h2>
        <h2>学校地址：{{address}}</h2>
        <h2>字符串截取插件：{{str | mySlice}}</h2>
        <button v-on:click="triggerEvent">触发父组件自定义事件</button>
        <button v-on:click="unbindEvent">解绑自定义事件</button>
        <button v-on:click="callHome">麻溜儿回家写作业去</button>
    </div>
</template>

<script>
    import pubsub from 'pubsub-js'

    export default {
        name: 'School',
        data(){
            return {
                str: "王尼玛到此一游"
            }
        },
        methods:{
            triggerEvent(){
                this.$emit('lesson24','我尼玛')
            },
            //在子组件解绑自定义事件
            unbindEvent(){
                this.$off('lesson24')
          },
          callHome(){
            this.$bus.$emit('homework'),
            pubsub.publish('homework','溜不溜')
          }
        },
        //一般接收参数
        props: ['name','address']
    }

</script>