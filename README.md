Connect your [Docker][docker] conatiner exposed with public url using ngrok

It's based on the excellent work of [wernight/ngrok][wernight/ngrok] [wizardapps/ngrok][wizardapps/ngrok] and [fnichol/ngrok][fnichol/ngrok].

## Usage

Define your auth token at `ngrok.yml`
```bash
authtoken: 12uebiu3eg1ejkb12jbek12712hej1bejk1bej12e
```

Use the deployment script to build and deploy the ngrok
```bash
./deploy.sh
```

### Configuration and Environment Variable
    
> `configuration` file can be edited to define the below configuration
```bash
NETWORK=func_functions
ADDRESS=func_gateway:8080
```     
      
> `ngrok.yml` file can be edited to define the below configuration
```yml
web_addr: 127.0.0.1:6060
authtoken: 12uebiu3eg1ejkb12jbek12712hej1bejk1bej12e
```  
    
    
> `docker-compose.yml` file can be edited to define the below configuration     
   

  * `NGROK_SUBDOMAIN` - Name of the custom subdomain to use for your tunnel. You must also provide the authentication token.
  * `NGROK_HOSTNAME` - Paying Ngrok customers can specify a custom domain. Only one subdomain or domain can be specified, with the domain taking priority.
  * `NGROK_USERNAME` - Username to use for HTTP authentication on the tunnel. You must also specify an authentication token.
  * `NGROK_PASSWORD` - Password to use for HTTP authentication on the tunnel. You must also specify an authentication token.
  * `NGROK_PROTOCOL` - Can either be `HTTP` or `TCP`, and it defaults to `HTTP` if not specified. If set to `TCP`, Ngrok will allocate a port instead of a subdomain and proxy TCP requests directly to your application.
  * `NGROK_REGION` - Location of the ngrok tunnel server; can be `us` (United States, default), `eu` (Europe), `ap` (Asia/Pacific) or `au` (Australia)
