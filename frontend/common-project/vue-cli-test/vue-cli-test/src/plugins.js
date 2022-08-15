//插件
export default {
    install(Vue){
        //全局注册过滤器
        Vue.filter('mySlice',function(value){
            return value.slice(0,5)
        })
        //全局指令
        //全局混入
        //原型添加方法
    }
}