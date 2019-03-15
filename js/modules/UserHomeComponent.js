export default {
    props: ['liveuser'],

    //Caitlin, this is template.
    //Put your HTML for usersHomeComponent in here. DO not delete back ticks -> `
    template: `
    <div class="container">
    <div class="row">
        <div class="col-sm-12">
        <h1 class="user-message text-center">{{message}}</h1>
        </div>
    `,

    data(){
        return {
            //Caitlin, delete message after editing the template
            message: "This is Users Home Component. A main page where videos and info from database is shown. Add HTML inside the template in order for the data to be displayed on this page",
            activeMediaType: "type",

            //push first result and push it into an active media referece
            currentMediaDetails: {},

            mediaTypes: [
                { iconClass: "fas fa-headphones", desription: "audio"},
                { iconClass: "fas fa-film", desription: "video"},
                { iconClass: "fas fa-tv", desription: "television"},
            ],

            retrievedMedia: []
            
        }
    },

    created: function() {
        this.loadMedia(null,"video");
    },

    methods: {
        loadMedia(filter, mediaType) {
            //set the active media type
            if (this.activeMediaType !== mediaType && mediaType !== null) {
                this.activeMediaType = mediaType;
            }

            let url = (filter == null) ? `./admin/scripts/index.php?media=${this.activeMediaType}` : `./admin/index.php?media=${this.activeMediaType}$$filter=${filter}`;

            fetch(url)
                .then(res => res.json())
                .then(data => {
                    //store all of the media from DB
                    this.retrievedMedia = data;

                    //make the firt one active
                    this.currentMediaDetails = data[0];
                })
                .catch(function(error) {
                    console.log(error);
                });
        },
        switchActiveMedia(media) {
            console.log(media);

            this.currentMediaDetails = media;
        }
    }
}