<template>
    <form  v-on:submit.prevent="uploadAvatar()" enctype="multipart/form-data">
        <img v-bind:src="avatar" />
        <div class="form-group">
            <label for="file">Upload Your Avatar</label>
            <input type="file" id="file" name="file" ref="avatar" class="form-control"/>
        </div>
        <div class="form-group">
            <input type="submit" name="submit" value="Submit"  class="btn btn-info"/>
        </div>
    </form>

</template>

<script>
    export default {
        data: function(){
            return{
                avatar:""
            }
        },
        mounted: function(){
            this.getAuthUserAvatar();
        },
        methods:{
            uploadAvatar: function () {
                const formData=new FormData();
                formData.append('avatar',this.$refs.avatar.files[0]);
                this.sendData(formData);
            },
            sendData: function(formData){
                this.$http.post('/uploadAvatar',formData).then(function(res){
                 this.avatar=res.body;
                },function(res){
                });
            },
            getAuthUserAvatar: function () {
                this.$http.get('/getAuthUserAvatar').then(function(res){
               this.avatar=res.body;
                },function(res){
                });
            }

        }
        
    }
</script>
