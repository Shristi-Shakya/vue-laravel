<template>
	<div>
		
        <h2 class="form-signin-heading">Please sign in</h2>
        <div class="form-group">
	        <label for="inputEmail" class="sr-only">Email address</label>
	        <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required="" autofocus="" v-model="email">
	    </div>
	    <div class="form-group">
	        <label for="inputPassword" class="sr-only">Password</label>
	        <input type="password" id="inputPassword" class="form-control" placeholder="Password" required="" v-model="password">
	    </div>
	        
    	<button class="btn btn-lg btn-primary btn-block" @click="login">Sign in</button>
	        
	    
  	</div>
</template>


<script>
	export default{
		data() {
			return {
				email: '',
				password: ''
			}
		},
		methods:{
			test() {
				this.$http.get("http://localhost/mix/back/api/test")
					.then(function (response){
						console.log(response)
					})
			},

			login(){
				var data ={
					client_id: 2,
					client_secret: '4EWHWKnMaMY4zO5LRekMLNUEDRkpfz6uSQi269sO',
					grant_type: 'password',
					username: this.email,
					password: this.password
				}

				this.$http.post("http://localhost/mix/back/oauth/token", data)
				.then(response => {
					this.$auth.setToken(response.body.access_token, response.body.expires_in+Date.now())
					this.$router.push('/feed')
					console.log(response)
				})
			}
		}
	}
</script>

<style>

</style>
