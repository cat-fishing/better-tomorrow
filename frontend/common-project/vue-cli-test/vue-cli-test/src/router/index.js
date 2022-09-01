import VueRouter from 'vue-router'
import Home from '../components/lesson29_route'

const router = new VueRouter({
    routes:[
        {
            //路由别名name可以让调用方通过对象写法，
            //指定name跳转，无需直接写复杂的多级路径
            name:'home',
            path:'/home',
            component:Home,
            //独享路由守卫
            // beforeEnter:(to,from,next)=>{
            //                 if(to.meta.isAuth){
            //                      next()
            //                 }
            //             },
            //在路由元数据中添加自定义参数
            meta:{isAuth:false}
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

//前置路由守卫，初始化时候调用、每次路由切换之前调用
//可以做权限校验等操作
// router.beforeEach((to,from,next)=>{
//     if(to.meta.isAuth){
        
//     }
// })

//后置路由守卫
// router.afterEach((to,from)=>{
//     document.title = to.meta.title
// })

export default router