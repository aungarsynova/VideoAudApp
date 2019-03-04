export default {
    props: ['liveuser'],

    

    data(){
        return {
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
        }
    }
}