<template>
    <div>
        <h2>学校名称：{{name}}</h2>
        <h2>学校地址：{{address}}</h2>
    </div>
</template>

<script>
    export default {
        name: 'School',
        data(){
            return {
                name: '三十七中',
                address: '人民广场'
            }
        }
    }

</script>