export default {
    props: ['liveuser'],


    created: function() {
        if (this.liveuser.avatar == null) {
            this.liveuser.avatar = "temp_avatar.jpg";
        }
    },

    methods: {
        navToUserHome() {
            this.$router.push({ name:"home", params: { currentUser: this.liveuser}});
        }
    }
}