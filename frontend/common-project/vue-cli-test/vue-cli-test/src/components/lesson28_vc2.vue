<template>
<div>
    <h2>我就展示一下VC1计数值：{{sum}}</h2>
</div>
</template>
<script>
import {mapState} from 'vuex'

export default {
    name: 'Vc2',
    computed:{
        ...mapState('vc1Options',{sum:'sum'})
    }
}
</script>