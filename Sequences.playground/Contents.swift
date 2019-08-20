var stack = Stack<Int>()

stack.push(element: 1)
stack.push(element: 2)
stack.push(element: 3)

print(stack.top)

stack.push(element: 4)

var sum = 0
for e in stack {
    sum += e
}
print(sum)
