export default {
    

    data() {
        return {
            input: {
                username: "",
                password: ""
            }
        }
    },
    methods: {
        login() {
            console.log('trying to log in');

            if(this.input.username != "" && this.input.password != "") {
                //fetch the data from the server and match passwords
                let url = `./admin/admin_login.php`;

                const formData = new FormData();


                formData.append("username", this.input.username);
                formData.append("password", this.input.password);

                fetch(url, {
                    method: 'POST',
                    body: formData
                })
                .then(res => res.json())
                .then(data => {
                    if (typeof data !== "object") {
                        console.log("Login attempt failed");
                        //pop a toast notification or
                        //let the user know something broke
                        return;
                    }else{
                        this.$emit("authenticated", true);
                        this.$router.replace({ name: "users" });
                    }
                })
                .catch(function(error) {
                    console.log(error);
                });
            } else{ 
                console.log('username and password can not be blank');
            }
        }
    }
}