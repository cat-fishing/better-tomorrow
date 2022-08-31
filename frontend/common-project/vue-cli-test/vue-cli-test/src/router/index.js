import VueRouter from 'vue-router'
import Home from '../components/lesson29_route'

export default new VueRouter({
    routes:[
        {
            path:'/home',
            component:Home
        }
    ]
})