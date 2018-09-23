<template>
       <div class="row">
        <div class="col-lg-9">

            <hr/>
            <div class="chat_window">
                <div class="top_menu">
                    <div class="title">{{room_name}} onlineUsers({{onlineUserCount}})</div>
                </div>
                <all_messages :messages="messages"></all_messages>
                <add_message></add_message>
            </div>
        </div>
         <div class="col-lg-3">
             <ac :ac="ac"></ac>
             <who_is_online :whoIsOnline="whoIsOnline"></who_is_online>
         </div>

       </div>


</template>

<script>
    import AddMessage from "./addmessage.vue";
    import AllMessages from "./allmessages.vue";
    import AC from "./ac.vue";
    import WhoIsOnline from "./whoisline.vue";
    export default {
        components:{
            add_message:AddMessage,
            all_messages:AllMessages,
            ac:AC,
            who_is_online:WhoIsOnline

        },
        data: function (){
            return{
            messages:[],
            channel:"",
            room_name:this.$route.params.room_name,
            onlineUserCount:"",
            ac:[],
           whoIsOnline:[]

            }
        },
        created: function(){
            this.BindEvents(this.$route.params.room_id+'room', 'new_message',this.messages);
            this.updateCount();
            this.getMeOnline();

        },
        mounted: function(){
            window.onbeforeunload=this.leaving;


        },

        methods:{
          BindEvents: function (name,action,array) {
              this.channel  = this.$pusher.subscribe(name);
              this.channel.bind(action, ( data ) => {
                  array.push(data[0]);
              });
          },
            getMeOnline: function () {
                this.$http.get('/getMeOnline/'+this.$route.params.room_id).then(function(res){

                },function(res){

                });
            },
            updateCount: function(){
                this.channel  = this.$pusher.subscribe(this.$route.params.room_id+'online');
                this.channel.bind('online_user', ( data ) => {
                 this.onlineUserCount=data[0]['count'];
                 this.whoIsOnline=(data[0]['user']);
                 this.ac.push(data[0]['action']);

                });

                this.channel  = this.$pusher.subscribe(this.$route.params.room_id+'offline');
                this.channel.bind('leave_user', ( data ) => {
                    this.onlineUserCount=data[0]['count'];
                    this.whoIsOnline=(data[0]['user']);
                    this.ac.push(data[0]['action']);
                });
            },
            leaving: function () {
                this.$http.get('/leaving/'+this.$route.params.room_id).then(function(res){

                },function(res){

                });

            }

        }
    }
</script>
