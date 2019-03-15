export default {
    props: ['liveuser'],

    //Caitlin, this is template.
    //Put your HTML for UserComponent in here. DO not delete back ticks -> `
    //This is Trevor's template, use it as an example to uderstand HTML
    template: `
    

    
    <div class="col-xs-12 col-sm-6 col-md-4 mx-auto">
    <div class="card rounded" @click="navToUserHome()">
        <div class="card-body text-center">
            <!-- <pre>{{ liveuser }}</pre> -->
            <img :src="'images/' + liveuser.avatar" class="rounded-circle img-fluid">
            <p>{{liveuser.username}}</p>
        </div>
    </div>
</div>






    `,

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