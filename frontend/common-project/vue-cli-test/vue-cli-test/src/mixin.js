//混入-即公共代码的抽离
export const showDom = {
  methods:{
    showDom(){
        //refs获取真实dom元素
        console.log(this.$refs.btn)
        //refs获取School组件实例对象
        console.log(this.$refs.sch)
    }
  }
}