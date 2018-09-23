<template>
    <div class="bottom_wrapper ">
        <div class="message_input_wrapper">
            <input class="message_input" v-model="message" @keyup.enter="addNewMessage()" placeholder="Type your message here..." />
        </div>
        <div class="send_message" @click.prevent="addNewMessage()">
            <div class="icon">
            </div>
            <div class="text">Send</div>
        </div>
    </div>
</template>

<script>
    export default {
        data: function (){
            return{
                message:""
            }
        },
     methods:{
         addNewMessage: function () {
            if(this.message.length >= 5 ){
               this.sendData();
            }else{
                alert('Please Entre More Than 5 Char !');
            }
             
         },
        sendData: function () {
            const formdata=new FormData();
            formdata.append("message",this.message);
            formdata.append("room_id",this.$route.params.room_id);
            this.$http.post('/addNewMessage',formdata).then(function(res){
                if(res.body !== "error"){
                    this.message="";

                }else{
                    alert('Your Message can not be sent');
                }

            },function(res){
                alert('Your Message can not be sent');
            });
        }
     }
        
    }
</script>
