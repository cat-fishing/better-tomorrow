<template>
    <div>
        <School name="十五中学" address="南荒"></School>
        <hr/>
        <Student ref="sch" name="大明" :age="15"></Student>
        <button ref="btn" v-on:click="showDom">你赶点我试试</button>
    </div>
</template>

<script>
    import Vue from 'vue'
    import School from './components/lesson23_School'
    import Student from './components/lesson23_Student'
    import {showDom} from './mixin'
    
    export default {
        name: 'App',
        components:{
            School,Student
        },
        methods:{
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