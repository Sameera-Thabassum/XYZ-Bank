

function fn() {

var config = {

		baseURL : "https://www.globalsqa.com/angularJs-protractor/BankingProject/#/login",

		Name : "Sameera"

	}

	

	var env = karate.env

	karate.log("The Environment Is :",env)

	

	if(env == 'dev'){

		config.baseURL = 'https://www.globalsqa.com/angularJs-protractor/BankingProject/#/login'

	}

	

	else if(env == 'qa'){

		config.baseURL = 'https://www.globalsqa.com/angularJs-protractor/BankingProject/#/login'

	}

	

	else

	 {

		config.baseURL = 'https://www.globalsqa.com/angularJs-protractor/BankingProject/#/login'

	}

	

	return config;

}