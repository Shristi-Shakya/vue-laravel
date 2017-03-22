export default function (Vue){
	Vue.auth = {
		//setToken
		setToken(token, expiration){
			localStorage.setItem('token', token)
			localStorage.setItem('expiration', expiration)
		},

		//getToken
		getToken(){
			var token = localStorage.getItem('token')
			var expiration = localStorage.getItem('expiration')

			if (! token || ! expiration) 
				return null

			if (Date.now() > parseInt(expiration)) {
				this.destroyToken()
				return null
			}else{
				return token
			}

		},

		//destroyToken
		destroyToken(){
			localStorage.removeItem('token')
			localStorage.removeItem('expiration')
		},

		//isAuthenticated
		isAuthenticated(){
			if(this.getToken())
				return true
			else
				return false
		}
	}

	Object.defineProperties(Vue.prototype, {
		$auth: {
			get(){
				return Vue.auth
			}
		}
	})
}