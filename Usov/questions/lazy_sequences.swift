// lazy collections tests

let baseCollection = [1,2,3,4,5,6]
let myLazyCollection = baseCollection.lazy
print(type(of:myLazyCollection))    //LazySequence<Array<Int>>

let collection = myLazyCollection.map{$0 + 1}
print(type(of:collection))          //LazyMapSequence<Array<Int>, Int>
print(collection)        //LazyMapSequence<Array<Int>, Int>(_base: [1, 2, 3, 4, 5, 6], _transform: (Function))
print(collection[0]) // 2. 
print(collection)       // LazyMapSequence<Array<Int>, Int>(_base: [1, 2, 3, 4, 5, 6], _transform: (Function)). 
                        // Не тяжело это в памяти держать? 
                        
