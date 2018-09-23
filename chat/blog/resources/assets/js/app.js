
/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');

window.Vue = require('vue');
window.VueRouter=require('vue-router').default;
Vue.use(VueRouter);
window.VueResource=require('vue-resource');
Vue.use(VueResource);
Vue.use(require('vue-moment'));
require('pusher-js');
Vue.use(require('vue-pusher'), {
    api_key: '96efd3292901a20995d4',
    options: {
        cluster: 'eu',
        encrypted: true,
    }
});
import VueChatScroll from 'vue-chat-scroll';
Vue.use(VueChatScroll);


Vue.http.headers.common['X-CSRF-TOKEN'] = document.head.querySelector('meta[name="csrf-token"]').content;

/**
 * Next, we will create a fresh Vue application instance and attach it to
 * the page. Then, you may begin adding components to this application
 * or customize the JavaScript scaffolding to fit your unique needs.
 */

var ChatBox=require('./components/chatbox/chatbox.vue');

const AllRooms=require('./components/rooms/allrooms.vue');
const AddRoom=require('./components/rooms/addroom.vue');
const MYRooms=require('./components/rooms/myrooms.vue');
const Profile=require('./components/profile/profile.vue');
const router= new VueRouter({
    routes:[
        {   path: '/',
            component:AllRooms
        },
        {   path: '/addroom',
            component:AddRoom
        },
        {  path: '/allrooms',
            component:AllRooms
        },
        {  path: '/myrooms',
            component:MYRooms
        },
        {  path: '/chat/:room_id/:room_name',
            component:ChatBox,
            name:'chatBox'

        },
        {  path: '/profile',
            component:Profile

        }
    ]

});

const app = new Vue({ router }).$mount('#app');
