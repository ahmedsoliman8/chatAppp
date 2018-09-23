<template>
    <div class="row">
        <div class="col-lg-12">
            <h1>My Rooms ({{rooms.length }})</h1>
            <table class="table table-striped">
                <tbody>
                <tr v-for="(room,index) in rooms">
                    <td>
                        <router-link :to="{name:'chatBox',params:{room_id:room.id,room_name:room.name}}">
                            {{room.name}}
                        </router-link>
                    </td>
                    <td>{{room.created_at |  moment("from", "now")}}</td>
                    <td> <button @click.prevent="deleteRoom(room.id,index)" class="btn btn-danger"><i class="fa fa-trash"></i></button>   </td>
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
            this.getMyRooms();
        },
        methods:{
            getMyRooms: function(){
                this.$http.get('/getMyRooms').then(function(res){
                    this.rooms=res.body;

                },function(res){
                    alert("Un Known Error");
                });
            },
            deleteRoom: function (id,index) {
                this.$http.get('/deleteRoom/'+id).then(function(res){
                    if(res.body === "done"){
                        this.rooms.splice(index,1);
                        alert("Your room has been deleted");

                    }else{
                        alert("You can not delete this room");
                    }

                },function(res){
                    alert("Un Known Error");
                });
            }
        }

    }
</script>
