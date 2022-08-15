<template>
    <div>
        <h2>学生：{{name}}</h2>
        <h2>年纪：{{age}}</h2>
    </div>
</template>

<script>
    export default {
        name: 'Student',
        data(){
            return {
                //name: '韩梅梅',
                //age: 16
            }
        },
        //强验证接收参数
        props: {
            name: {
                type: String,
                require: true
            },
            age: {
                type: Number,
                require: true
            }
        }
    }

</script>