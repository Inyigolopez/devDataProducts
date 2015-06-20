
To ejecute the app you need:

1.- Install R
2.- You need shiny package. Yo can install using the command:    install.packages("shiny");
3.- Then you need load this package:   library("shiny");
4.- You must put both ui.R and server.R files in the same directory, 'devDataProducts' for example;
2.- Ejecute: runApp('~/devDataProducts'); ( or runApp(getwd()); if you are in the working directory yet )   

You can view the app running at mi shinyapp.io page: 

https://inyigolopez.shinyapps.io/Proyect


In this app you can choose a distribution type, a number of observations and a number of break. The app show an histogram of random data with the selected distribution and number of observations that is showed with a selected number of breaks. 
