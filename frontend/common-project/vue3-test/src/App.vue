<template>
  <!--
    vue3新特性setup
    1.setup是所有Composition API配置场所
    2.组件中所有数据、方法等均需要配置在此
    3.若返回对象则对象中属性和方法可以被模板直接使用
    4.若返回渲染函数则覆盖默认dom而渲染该渲染函数
    5.setup不能是一个async函数，因为返回值是promise的对象
  -->
  <h2>姓名：{{name}}</h2>
  <h2>年龄：{{age}}</h2>
  <h2>球类爱好：{{hobby.ball}}</h2>
  <h2>其他爱好：{{hobby.other}}</h2>
  <h2>自我介绍：{{hobby.msg}}</h2>
  <button v-on:click="alertMsg">自我介绍</button>
  <button v-on:click="modifyMsg">修改信息</button>
  <hr/>
  <span>***************这是一条华丽的分割线***************</span><br/>
  <span>《自定义hook》</span><br/>
  <h2>鼠标坐标：{{point.x}} : {{point.y}}</h2>
</template>

<script>
import { computed } from '@vue/reactivity'
import {reactive, ref} from 'vue'
import cursorPoint from './hooks/cursorPoint'
export default {
  name: 'App',
  //引入ref函数实现数据的响应式
  setup(){
    let name = ref('安琪拉')
    let age = ref(16)
    //使用vue3新特性reactive函数使得对象也可以实现响应式
    //不使用ref函数修饰是因为前者在修改时候使用更便捷
    let hobby = reactive({
      ball: 'table_tennis',
      other: 'jumping'
    })

    let point = cursorPoint()

    //计算属性
    hobby.msg = computed(()=>{
      return `大家好我是${name.value},今年${age.value}岁了`
    })
    
    function alertMsg(){
      alert(`大家好我是${name.value},今年${age.value}岁了`)
    }

    function modifyMsg(){
      name.value = '小妲己'
      age.value = 14,
      hobby.ball = 'football',
      hobby.other = 'running'
    }
    
    return{
      name,age,hobby,alertMsg,modifyMsg,point
    }
  }
}
</script>
