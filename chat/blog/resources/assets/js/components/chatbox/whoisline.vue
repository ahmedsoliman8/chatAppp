<template>
    <div class="row well">
            <table class="table table-striped">
                <tr v-for="online in whoIsOnline">
                    <td  width="30px;">
                        <span v-if="online.user.avatar != '' ">
                          <img  class="img-circle"  v-bind:src="'/images/avatars/'+online.user.avatar" width="30px;"/>
                        </span>
                        <span v-else>
                             <img class="img-circle"   v-bind:src="'noimage.png'" width="30px;"/>
                        </span>
                    </td>
                    <td>{{online.user.name}}</td>
                    <td width="20px;">
                   <i class="fa fa-circle " style="color:green"></i>
                    </td>
                </tr>
            </table>

    </div>


</template>

<script>
    export default {
        props:['whoIsOnline']

    }
</script>
