import time

fn C.helloJavascript()

fn main() {
	println("V WASM")
	before := time.now().unix_time_milli()
	println(fibonacci(40))
	println(time.now().unix_time_milli() - before)
	C.helloJavascript()
}

fn fibonacci(n int) int {
	if n == 0 {
		return 0
	} else if n == 1 {
		return 1
	} else {
		return fibonacci(n - 1) + fibonacci(n - 2)
	}
}

pub fn hello() {
	println("Hello from V!")
}