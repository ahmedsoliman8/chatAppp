<template>
    <div class="row">

            <h1>AddNewRoom</h1>
            <div class="form-group">
                <label for="room_name">Room Name</label>
                <input type="text" name="room_name" id="room_name" v-model="room_name" class="form-control" />
            </div>
            <div class="form-group">
                <input type="submit"  @click="addRoom()" v-bind:disabled="btnSubmit" name="submit"  value="AddRoom" class="btn btn-default" />
            </div>



    </div>
</template>
<script>

    export default {
       data: function () {
           return{
               room_name:"",
               isLoading:false,


           }
       },
        computed:{
            btnSubmit: function () {
                if(this.room_name === ''){
                    return true;
                }else if(this.room_name.length < 5)
                 {
                    return true;
                }else {
                    return false;
                }
            }
        },
        methods:{
            addRoom:function () {
                const formdata=new FormData();
                formdata.append("room_name",this.room_name);
                this.$http.post('/addNewRoom',formdata).then(function(res){
                    if(res.body === "done"){
                     this.room_name="";
                        alert('Your Room has been added');
                    }else{
                        alert('Your room can not be added');
                    }

                },function(res){
                    alert('Your room can not be added');
                });
            }
        }
    }
</script>
