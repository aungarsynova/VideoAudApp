export default {
  
  //Caitlin, this is template.
    //Put your HTML for LoginComponent in here. DO not delete back ticks -> `
    //Check _login.scss to play with colors, shapes, sizes and etc. for CSS
    template: `
    <div class="container" id="login">
    <div class="row">
      <div class="col-md-4 col-sm-2 col-xs-3"></div>
      <div class="col-md-4 col-sm-8 col-xs-6">
        <div class="panel panel-default">
          <div class="panel-body">
          <h1> Welcome to Roku Flashback!</h1>
            <div class="form-group">
              <label>User Name </label>
              <div class="icon-holder">
                <input v-model="input.username" type="text" class="form-control" placeholder="username" required />
              </div>
            </div>
            <div class="form-group">
              <label>Password</label>
              <div class="icon-holder">
                <input v-model="input.password" type="password" class="form-control" placeholder="password" required />
              </div>
            </div>
          </div>
          <div class="panel-footer">
          <button v-on:click.prevent="login()" type="submit" class="btn btn-primary btn-block">Login</button>
      </div>
        </div>
      </div>
      <div class="col-md-4 col-sm-2 col-xs-3"></div>
    </div>
  </div>

    `,

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