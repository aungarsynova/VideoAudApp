import UserComponent from './UserCOmponent.js'; 

export default {
    

    created: function() {
        this.fetchAllUsers();
    },

    data() {
        return {
            message: "Who is using Roku?",

            userList: []
        }
    },

    methods: {
        fetchAllUsers() {
            let url = `./admin/scripts/users.php?allUsers=true`;

            fetch(url)
                .then(res => res.json())
                .then(data => { this.userList = data})
                .catch(function(error) {
                    console.error(error);
                });
        }
    },

    components: {
        user: UserComponent
    }
}