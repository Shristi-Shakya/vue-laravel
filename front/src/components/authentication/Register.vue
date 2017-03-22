<template>
	<div>
		<form class="form-signin">
	        <h2 class="form-signin-heading">Please fill the form</h2>
	        <label class="sr-only">Full Name</label>
	        <input type="text" id="inputEmail" class="form-control" placeholder="Full name" required="" autofocus="" v-model="full_name">
	        <label class="sr-only">Email address</label>
	        <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required="" v-model="email">
	        <label class="sr-only">Password</label>
	        <input type="password" id="inputPassword" class="form-control" placeholder="Password" required="" v-model="password">
	        <button class="btn btn-lg btn-primary btn-block" type="submit">Register</button>
	        
	    </form>
  	</div>
</template>


<script>
	export default{
		data() {
			return {
				full_name: '',
				email: '',
				password: ''
			}
		}
	}
</script>

<style>

</style>
