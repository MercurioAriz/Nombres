#!/bin/bash

echo -e "\e[31m
░██████╗░███████╗███╗░░██╗
██╔════╝░██╔════╝████╗░██║
██║░░██╗░█████╗░░██╔██╗██║
██║░░╚██╗██╔══╝░░██║╚████║
╚██████╔╝███████╗██║░╚███║
░╚═════╝░╚══════╝╚═╝░░╚══╝

███╗░░██╗░█████╗░███╗░░░███╗██████╗░██████╗░
████╗░██║██╔══██╗████╗░████║██╔══██╗██╔══██╗
██╔██╗██║██║░░██║██╔████╔██║██████╦╝██████╔╝
██║╚████║██║░░██║██║╚██╔╝██║██╔══██╗██╔══██╗
██║░╚███║╚█████╔╝██║░╚═╝░██║██████╦╝██║░░██║
╚═╝░░╚══╝░╚════╝░╚═╝░░░░░╚═╝╚═════╝░╚═╝░░╚═╝\e[0m"
echo -e "\e[32mGenerador de nombres aleatorios MERCURIO\e[0m"

# Preguntar al usuario cuántos nombres quiere generar
echo "¿Cuántos nombres quieres generar?"
read numNombres

# Crear una lista de nombres en español e inglés
nombres=(
  "Aaron" "Abigail" "Adam" "Addison" "Adrian" "Alan" "Albert" "Alex" "Alexander" "Alexandra"
  "Alice" "Alicia" "Allison" "Alvin" "Amanda" "Amber" "Amelia" "Amy" "Andrea" "Andrew"
  "Angela" "Anita" "Anthony" "Antonio" "April" "Ariel" "Arthur" "Ashley" "Audrey" "Austin"
  "Barbara" "Benjamin" "Bernadette" "Bernard" "Beverly" "Bill" "Billy" "Bob" "Bobby" "Bonnie"
  "Brandon" "Brenda" "Brian" "Bridget" "Brittany" "Bruce" "Bryan" "Caleb" "Cameron" "Camila"
  "Carol" "Caroline" "Carrie" "Casey" "Catherine" "Chad" "Charles" "Charlotte" "Chase" "Chelsea"
  "Cheryl" "Chris" "Christian" "Christina" "Christopher" "Cindy" "Claire" "Clarence" "Clark" "Claudia"
  "Clifford" "Colleen" "Connor" "Corey" "Courtney" "Craig" "Cristopher" "Crystal" "Curtis" "Cynthia"
  "Dale" "Dan" "Dana" "Daniel" "Danielle" "Darren" "Dave" "David" "Dawn" "Dean"
  "Debbie" "Deborah" "Debra" "Dennis" "Derek" "Derrick" "Diana" "Diane" "Dominic" "Dominique"
  "Donald" "Donna" "Doris" "Dorothy" "Doug" "Douglas" "Drew" "Duane" "Dustin" "Dwight"
  "Earl" "Eddie" "Edward" "Edwin" "Elaine" "Elizabeth" "Ellen" "Emily" "Emma" "Eric"
  "Erika" "Ernest" "Ethan" "Eugene" "Eva" "Evan" "Evelyn" "Ezekiel" "Faith" "Felicia"
  "Felix" "Fernando" "Francis" "Frank" "Franklin" "Fred" "Freddie" "Frederick" "Gabriel" "Gail"
  "Gary" "Gavin" "Gene" "George" "Gerald" "Gina" "Glenn" "Gloria" "Grace" "Gregory"
  "Guy" "Gwen" "Hannah" "Harvey" "Heather" "Helen" "Henry" "Herbert" "Herman" "Hilary"
  "Howard" "Ian" "Irene" "Iris" "Isaac" "Isaiah" "Isabel" "Isabella" "Jack" "Jacqueline"
  "Jade" "Jake" "James" "Jamie" "Janet" "Jason" "Jasper" "Javier" "Jean" "Jeffrey"
  "Jenna" "Jennifer" "Jeremy" "Jerry" "Jessica" "Jesse" "Jessica" "Jim" "Jimmy" "Joan"
  "Joanna" "John" "Johnathan" "Johnny" "Jordan" "Joseph" "Joshua" "Joyce" "Juan" "Judith"
  "Judy" "Julia" "Julian" "Julie" "Justin" "Karen" "Katherine" "Kathleen" "Kathryn" "Katie"
  "Kayla" "Keith" "Kelly" "Ken" "Kendall" "Kenneth" "Kevin" "Kim" "Kimberly" "Kyle"
  "Kristin" "Kurt" "Kyle" "Lance" "Larry" "Laura" "Lauren" "Lawrence" "Leah" "Lee"
  "Leo" "Leonard" "Leroy" "Leslie" "Lester" "Lewis" "Linda" "Lindsay" "Lisa" "Lloyd"
  "Logan" "Lois" "Lori" "Louis" "Louise" "Lucas" "Lucy" "Luke" "Lydia" "Lynn"
  "Madison" "Mae" "Maggie" "Malcolm" "Manuel" "Marc" "Marcia" "Marcus" "Margaret" "Maria"
  "Mario" "Mark" "Marlyn" "Martha" "Martin" "Marvin" "Mary" "Matthew" "Maurice" "Max"
  "Megan" "Melissa" "Melody" "Melvin" "Mia" "Michael" "Michelle" "Mildred" "Mike" "Miles"
  "Molly" "Monica" "Monique" "Morgan" "Morris" "Nancy" "Nathan" "Nathaniel" "Neal" "Neil"
  "Nicole" "Noah" "Norma" "Norman" "Octavia" "Oliver" "Olivia" "Oscar" "Owen" "Pamela"
  "Patricia" "Patrick" "Paul" "Paula" "Peggy" "Penny" "Peter" "Philip" "Phillip" "Phyllis"
  "Rachael" "Rachel" "Ralph" "Randall" "Randy" "Raymond" "Rebecca" "Regina" "Reid" "Renee"
  "Rex" "Richard" "Rick" "Ricky" "Rita" "Robert" "Robin" "Rodney" "Roger" "Ronald"
  "Rosa" "Rose" "Roy" "Ruben" "Ruby" "Russell" "Ruth" "Ryan" "Sally" "Salvatore"
  "Sam" "Samantha" "Samuel" "Sandra" "Sara" "Sarah" "Scott" "Sean" "Sebastian" "Stacey"
  "Shannon" "Sharon" "Shawn" "Sheila" "Shelby" "Shelly" "Sheri" "Shirley" "Sidney" "Sierra"
  "Simon" "Simone" "Sonia" "Sophia" "Spencer" "Stacy" "Stanley" "Stefan" "Stephanie" "Stephen"
  "Steve" "Steven" "Stewart" "Stuart" "Susan" "Suzanne" "Sydney" "Sylvia" "Tabitha" "Tamara"
  "Tara" "Tasha" "Taylor" "Teresa" "Terri" "Terry" "Theodore" "Theresa" "Thomas" "Tia"
  "Tiffany" "Timothy" "Tina" "Todd" "Tom" "Tommy" "Tony" "Tracey" "Travis" "Trent"
  "Trevor" "Troy" "Tyler" "Tyson" "Uma" "Valerie" "Vanessa" "Vernon" "Veronica" "Victor"
  "Victoria" "Vincent" "Vivian" "Walter" "Wanda" "Warren" "Wayne" "Wesley" "Whitney" "William"
  "Willie" "Wilma" "Wilson" "Winston" "Wyatt" "Xavier" "Yolanda" "Yvonne" "Zach" "Zachary" "Zoe"

  "Ainhoa" "Alba" "Alejandro" "Alejandra" "Alicia" "Álvaro" "Amaia" "Ana" "Andrea" "Andrés"
  "Ángel" "Antonia" "Antonio" "Ariadna" "Belén" "Benito" "Carmen" "Carolina" "Catalina" "Cecilia"
  "Clara" "Claudia" "Daniel" "David" "Diego" "Elena" "Emilia" "Enrique" "Eva" "Fernando"
  "Francisco" "Gabriel" "Gemma" "Germán" "Gloria" "Gonzalo" "Guillermo" "Inés" "Irene" "Isabel"
  "Jaime" "Javier" "Jesús" "Jorge" "José" "Josefina" "Juan" "Julia" "Laura" "Leonardo"
  "Lorenzo" "Lucas" "Lucía" "Luis" "Lydia" "Manuel" "María" "Mario" "Marta"
  "Mateo" "Mercedes" "Miguel" "Natalia" "Nicolás" "Noel" "Oliver" "Olivia" "Pablo" "Paula"
  "Pedro" "Pilar" "Rafael" "Raúl" "Raquel" "Ricardo" "Roberto" "Rocío" "Rodrigo" "Rosa"
  "Rubén" "Salvador" "Samuel" "Sandra" "Santiago" "Sara" "Sergio" "Sonia" "Sofía" "Tomás"
  "Úrsula" "Valeria" "Vicente" "Victoria" "Víctor" "Xavi" "Yolanda"
)

# Elegir aleatoriamente los nombres
for (( i=0; i<numNombres; i++ )); do
  idx=$(($RANDOM % ${#nombres[@]}))
  echo "${nombres[$idx]}"
done