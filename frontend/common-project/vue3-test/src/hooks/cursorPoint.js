import { reactive,onMounted,onBeforeUnmount } from "vue"

export default function(){
    let cursorPoint = reactive({
        x:0,
        y:0
    })

    function savePoint(event){
        cursorPoint.x = event.pageX,
        cursorPoint.y = event.pageY
    }

    onMounted(()=>{
        window.addEventListener('mousemove',savePoint)
    })

    onBeforeUnmount(()=>{
        window.removeEventListener('mousemove',savePoint)
    })
    return cursorPoint
}