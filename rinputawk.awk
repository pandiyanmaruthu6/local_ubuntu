BEGIN {
	printf "please enter your name:"
	getline name < "-"
	printf "hello %s, what is your age:",name
	getline age < "-"
	printf "yes %s next year you will be %d\n",name, age + 1
}