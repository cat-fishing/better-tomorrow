<template>
    <div>
        <School></School>
        <Student></Student>
    </div>
</template>

<script>
    import School from 'lesson19_School'
    import Student from 'lesson19_Student'

    export default {
        name: 'App',
        components:{
            School,Student
        }
    }

</script>