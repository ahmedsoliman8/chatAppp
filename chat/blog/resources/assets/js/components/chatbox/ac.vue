<template>
 <div class="row well"   >
         <ul class="ac" v-chat-scroll>
             <li v-for="a in ac">
               {{a}}

             </li>
         </ul>
 </div>


</template>
<style>
    .ac{
        position: relative;
        list-style: none;
        margin: 0;
        height: 150px;
        overflow: scroll;
    }
</style>
<script>
    export default {
props:['ac']


    }
</script>
