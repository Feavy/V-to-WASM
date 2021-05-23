import time

fn main() {
	before := time.now().unix_time_milli()
	println(fibonacci(40))
	println(time.now().unix_time_milli() - before)
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