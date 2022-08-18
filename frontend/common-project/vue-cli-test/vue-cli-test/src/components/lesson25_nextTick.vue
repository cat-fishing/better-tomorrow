<!--
    Vue异步更新策略:
        在数据发生变化时，vue不会立刻更新DOM，而是开启一个队列，把组件更新函数保存在队列中，
        在同一时间循环中发生的所有数据变更都保存在队列，一次性清空队列，一次性更新。
    this.$nextTick(回调函数):
        这个就是处理vue中DOM的异步更新的，在数据发生改变时，渲染DOM之后，会自动执行回调函数。
    常用场景：
        当在created()中想获取DOM时可以使用。
        响应式数据变化后获取DOM更新后的状态，比如新增或删除列表后，希望对渲染后DOM进行操作。
-->
<template>
  <div id="app">
    <h1 ref="msgRef">msg: {{ msg }}</h1>
    <button @click="change">点击改变msg的值</button>
  </div>
</template>
<script>
export default {
  name: 'NextTick',
  data(){
    return {
      msg:'NextTick',
    }
  },
  created(){
    console.log(111);
    // 等DOM创建之后才会执行
    this.$nextTick(() => {
      console.log(222);
    });
  },
  mounted(){
    console.log(333);
    this.$nextTick(() => {
      console.log(444);
    });
  },
  methods:{
    change() {
      // 改变msg的值
      this.msg = '改变后msg值'
      // 输出节点的内容，这个时候虽然数据改变了，但DOM还没有更新，所以取到的还是msg之前的值  NextTick
      console.log('msgRef', this.$refs.msgRef['innerHTML']);
      this.$nextTick(() => {
        // 使用this.$nextTick()之后，里面的内容在DOM更新之后执行，所以取到的是msg修改之后的值
        console.log('使用this.$nextTick()之后输出', this.$refs.msgRef.innerHTML);
      });
    }
  }
}
</script>

<style scoped>

</style>