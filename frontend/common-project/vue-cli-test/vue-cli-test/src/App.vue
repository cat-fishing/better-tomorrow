<template>
    <div>
        <School></School>
        <hr/>
        <Student></Student>
    </div>
</template>

<script>
    import School from './components/lesson19_School'
    import Student from './components/lesson19_Student'

    export default {
        name: 'App',
        components:{
            School,Student
        }
    }

</script>