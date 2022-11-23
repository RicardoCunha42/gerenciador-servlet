# gerenciador-servlet
A CRUD Project with a login system that receives http requisitions and simulates a databank. It's was made at Alura's servlet courses, as part of the Spring graduation , with the goal of teaching the MVC pattern and how the servlets work before engaging with higher abstractions. It can also return a list of the companies registered at the application in XML or JSON.

#How to use it
To use the application, one can download or clone the repository and run it on any IDE with server support or making it a .war and putting in a server like tomcat or jetty and start it through command line.

#The users
One will only be able to access the login page initially, but the app starts with two pre-loaded users:
 - User: HankPym
 - Password: janet
 
 - User: TonyStark
 - Password: hottestavenger
 
#Mapping
 - {device}:{port}/gerenciador/entrada?acao=LoginForm
  It leads to the login form where one can use the above users to login and view the list of companys, edit them, delete or logout.
  
 - {device}:{port}/gerenciador/entrada?acao=NovaEmpresaForm
  Once logged in, one can access this address that leads to the register form of companys, where the user submits the name and date of creation to then be redirected to      the updated list of companies.
 
 - http://localhost:8080/gerenciador/empresas
  Returns a XML list of the companies registered at the application. It's also possible to receive the list in JSON by setting the header with a key "accept" and value       "application/json".
