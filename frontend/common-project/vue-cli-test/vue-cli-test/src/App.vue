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
        <Vc1>
            
        </Vc1>
    </div>
</template>

<script>
    import School from './components/lesson23_School'
    import Student from './components/lesson23_Student'
    import NextTick from './components/lesson25_nextTick'
    import St from './components/lesson27_slot'
    import Vc1 from './components/lesson28_vc1'
    import {showDom} from './mixin'
    
    export default {
        name: 'App',
        components:{
            School,Student,NextTick,St,Vc1
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