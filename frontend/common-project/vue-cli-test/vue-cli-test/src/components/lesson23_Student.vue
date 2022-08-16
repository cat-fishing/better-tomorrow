<template>
    <div>
        <h2>学生：{{name}}</h2>
        <h2>年纪：{{age}}</h2>
    </div>
</template>

<script>
    import pubsub from 'pubsub-js'

    export default {
        name: 'Student',
        data(){
            return {
                //name: '韩梅梅',
                //age: 16
            }
        },
        mounted(){
            //方法一：消息总线实现全局组件消息互通
            this.$bus.$on('homework',this.doHomeWork),
            //方法二：消息订阅发布实现全局消息互通
            this.pubId = pubsub.subscribe('homework',function(msgName,data){
                console.log("消息订阅收到：",msgName,data)
            })
        },
        beforeDestroy(){
            //关闭组件时候删除自定义事件
            this.$bus.$off('homework'),
            pubsub.unsubscribe(this.pubId)
        },
        methods:{
            doHomeWork(){
                console.log('到点回家写作业啦！')
            }
        },
        //强验证接收参数
        props: {
            name: {
                type: String,
                require: true
            },
            age: {
                type: Number,
                require: true
            }
        }
    }

</script>