<template>
    <div>
        <!--自定义事件也可以使用on、once等修饰-->
        <School name="十五中学" address="南荒" v-on:lesson24.once="addEvent"></School>
        <hr/>
        <Student ref="sch" name="大明" :age="15"></Student>
        通过ref属性查看dom结构：<button ref="btn" v-on:click="showDom">你敢点我试试</button>
        <hr/>
        NextTick实现对动态渲染之后dom操作：
        <NextTick></NextTick>
        <hr/>
        <St>
            <!-- <h2 slot="slot1">具名插槽1</h2> -->
            <template slot-scope="msg">
                <h2>作用域插槽：{{msg.msg}}</h2>
            </template>
        </St>
        <hr/>
        <Vc1></Vc1>
        <hr/>
        <Vc2></Vc2>
        <hr/>
        <!--引用路由跳转页面-->
        <router-link to="/home">Home</router-link>
        <!--
            路由跳转query携带参数，对象写法
            <router-link 
            :to="{
                path:'/Home/banner',
                query:{
                    a:'',
                    b:''
                }
            }">
            </router-link>
            路由组件接参：$route.query.a
        -->

        <!--
            路由跳转params携带参数，对象写法;
            注意：此处不允许通过路由name跳转
            <router-link 
            :to="{
                path:'/home',
                params:{
                    id:''
                }
            }">
            </router-link>
            路由组件接参：$route.params.id
        -->

        <!--
            路由跳转params携带参数，普通写法;
            <router-link :to="/home/777"></router-link>
            路由组件接参：$route.params.id
        -->

        <!--
            路由开启replace模式，将覆盖当前浏览器访问记录，
            实现清楚history记录作用
            <router-link replace></router-link>
        -->
        
        <!--
            //编程式路由导航
            this.$router.push({
                name: 'home',
                query: {
                    id: ''
                }
            })
            //前进
            this.$router.forward()
            //后退
            this.$router.back()
            //根据数值正负决定进退
            this.$router.go(2)
        -->

        <div>
            <!--
                由此标签路由指向页面才可以跳转
                keep-alive标签可以缓存路由中数据，
                include根据组件名缓存指定组件的数据，
                如果要缓存多个以数组形式展示。
            -->
            <keep-alive include="Home">
                <router-view></router-view>
            </keep-alive>
        </div>
    </div>
</template>

<script>
    import School from './components/lesson23_School'
    import Student from './components/lesson23_Student'
    import NextTick from './components/lesson25_nextTick'
    import St from './components/lesson27_slot'
    import Vc1 from './components/lesson28_vc1'
    import Vc2 from './components/lesson28_vc2'
    import {showDom} from './mixin'
    
    export default {
        name: 'App',
        components:{
            School,Student,NextTick,St,Vc1,Vc2
        },
        methods:{
          //父组件方法
          addEvent(name){
            console.log('你瞅啥',name)
          },
          showDom(){
              //refs获取真实dom元素
              console.log(this.$refs.btn)
              //refs获取School组件实例对象
              console.log(this.$refs.sch)
          }
        },
        mixins: [showDom]
    }

</script>