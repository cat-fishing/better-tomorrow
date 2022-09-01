<template>
    <div>
        <h2>我是路由器</h2>
    </div>
    </template>
    <script>    
    export default {
        name: 'Home',
        //下面两个生命周期钩子在路由激活或者失活是触发
        activated(){
            console.log('路由组件激活时候触发')
        },
        deactivated(){
            console.log('路由组件失活时候触发')
        },
        //组件内守卫
        beforeRouteEnter(to,from,next){
            console.log('通过路由规则，进入组件时被调用')
            next()
        },
        beforeRouteLeave(to,from,next){
            console.log('通过路由规则，离开组件时被调用')
        }
    }
    </script>