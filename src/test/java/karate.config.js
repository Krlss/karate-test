function fn(){
    var env = karate.env; // get system property 'karate.env'
    karate.log('karate.env system property was:', env);

    if (!env) {
        env = 'dev';
    }

    var regres = 'https://petstore.swagger.io/v2/';

    var config = {
        env: env,
        myVarName: 'someValue',
    }

    if (env == 'dev') {
        // customize
        // e.g. config.foo = 'bar';
    } else if (env == 'e2e') {
        // customize
    }

    return config;
}