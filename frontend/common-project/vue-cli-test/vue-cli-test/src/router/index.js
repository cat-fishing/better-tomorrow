import VueRouter from 'vue-router'
import Home from '../components/lesson29_route'

export default new VueRouter({
    routes:[
        {
            //路由别名name可以让调用方通过对象写法，
            //指定name跳转，无需直接写复杂的多级路径
            name:'home',
            path:'/home',
            component:Home,
            //路由组件通过参数key直接获取传参，针对params传参
            //props:true

            //回调函数形式传参$route    $route.query.id
            //结构赋值方式将query传参，传递给路由组件
            //props({query}){
            //  return {id:query.id}    
            //}

            /*
            //配合路由的params方式传参，占位符字段id
            {
                name:'home',
                path:'/home/:id',
                component:Home
            }
            */

            /*
            多级菜单：
            {
                path:'/home',
                component:Home,
                childre:[
                    {
                        path:'banner',
                        component:Banner,
                    }
                ]
            }
            */
        }
    ]
})