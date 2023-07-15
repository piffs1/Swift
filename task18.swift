// Сделать свАп интовых чисел

var a = 5
var b = 3

a = a + b
b = a - b
a = a - b

print (a,b) // 3,5 -> ok

// Second 

swap(&a, &b)

print (a,b) // 5,3 -> ok

(a,b) = (b,a) 

print(a,b) // 3,5 -> ok
// [mod] Swap in tupples
var tupple1 = (1,2,3)

var tupple2 = (9,8,7)

(tupple1.0, tupple2.0) = (tupple2.0, tupple1.0)

print(tupple1)
print(tupple2)