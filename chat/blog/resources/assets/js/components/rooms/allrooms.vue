<template>
   <div class="row">
   <div class="col-lg-12">
      <h1>All Rooms ({{rooms.length }})</h1>
      <table class="table table-striped">

         <tbody>
         <tr v-for="room in rooms">
            <td>
               <router-link :to="{name:'chatBox',params:{room_id:room.id,room_name:room.name}}">
               {{room.name}}
               </router-link>
            </td>
            <td>{{room.created_at |  moment("from", "now")}}</td>
            <td>{{room.user.name}}</td>
         </tr>
         </tbody>
      </table>
   </div>
   </div>

</template>

<script>
    export default {
        data: function (){
          return{
              rooms:[]
          }
        },
        mounted: function () {
        this.getAllRooms();
        },
        methods:{
            getAllRooms: function(){
                this.$http.get('/getAllRooms').then(function(res){
                    this.rooms=res.body;

                },function(res){
                    alert("Un Known Error");
                });
            }
        }

    }
</script>
