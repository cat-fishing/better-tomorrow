<template>
    <div>
        <h2>学生：{{name}}</h2>
        <h2>年纪：{{age}}</h2>
    </div>
</template>

<script>
    export default {
        name: 'Student',
        data(){
            return {
                //name: '韩梅梅',
                //age: 16
            }
        },
        mounted(){
            this.$bus.$on('homework',this.doHomeWork)
        },
        beforeDestroy(){
            //关闭组件时候删除自定义事件
            this.$bus.$off('homework')
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