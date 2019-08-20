let fibonacci = Fibonacci(count: 10)

var values: String = ""
for e in fibonacci {
    values.append(String(format: "%d\n", e))
}

print(values)
