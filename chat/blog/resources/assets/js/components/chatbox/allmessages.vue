<template>
    <ul class="messages"  v-chat-scroll>
        <li class="message left appeared" v-for="message in messages">
            <div class="avatar">
                     <span v-if="message.user.avatar != '' ">
                          <img  class="img-circle"  v-bind:src="'/images/avatars/'+message.user.avatar" width="60px;"/>
                     </span>
                     <span v-else>
                      <img class="img-circle"   v-bind:src="'noimage.png'" width="60px;"/>
                      </span>
            </div>
            <div class="text_wrapper">
                <div class="text">
                  <b class="user"> <i class="fa fa-user"></i> {{message.user.name}} :</b>
                    <div class="clearfix"></div>
                    <p class="user_message pull-left">
                        {{message.body}}
                    </p>
                    <small class="small pull-right"> <i class="fa fa-clock-o"></i> {{message.created_at}}</small>
                  <div class="clearfix"></div>
                </div>
            </div>
        </li>
    </ul>
</template>
<style>
    .small{
        font-size: 10px;
    }
    .user{
        font-size: 12px;
    }
    .user_message{
        font-size: 14px;
    }
</style>

<script>
    import 'vue-sticky-scroll';
    export default {
     props:["messages"]
    }
</script>
