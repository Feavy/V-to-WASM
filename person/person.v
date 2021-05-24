module person

pub struct Person {
	name string [required]
}

pub fn (p Person) say_hello() {
	println("Hello I am "+p.name+"!")
}