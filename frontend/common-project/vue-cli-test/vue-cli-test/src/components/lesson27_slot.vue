<!--
    插槽：父组件向子组件指定位置插入dom结构
    分类：默认插槽、具名插槽、作用域插槽
    默认插槽：组件只拥有一个插槽位置
    具名插槽：插槽起别名，组件可以根据别名插入多种dom结构
    作用域插槽：子组件将自身数据提供给父组件使用    # 不能起别名，组件中只能有一个插槽
-->
<template>
<div>
    <!-- <h2>插槽练习</h2>
    <slot name="slot1"></slot> -->
    <slot :msg="msg"></slot>
</div>
</template>
<script>
export default {
    name: 'St',
    data(){
        return {
            msg: '这是slot插槽'
        }
    }
}
</script>