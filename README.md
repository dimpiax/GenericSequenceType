# GenericSequenceType
A minimal generator types of collection enumeration

##### Generator types
* Iterator
* Random
* Odd

##### Usage
```
var boxCollection = Collection<Box, RandomGenerator<Box>>()
boxCollection.addItems(Box(name: "Maps", age: 12), Box(name: "VHS", age: 1), Box(name: "Puzzles", age: 7), Box(name: "Books", age: 4))
        
for value in boxCollection {
	println("do stuff with \(value)")
}
```

##### Examples
```
// IteratorGenerator
boxCollection.addItems(Box(name: "Maps", age: 12), Box(name: "Puzzles", age: 7), Box(name: "Books", age: 4))
for value in boxCollection { println(value) }
// Box(name=Maps, age=12), Box(name=Puzzles, age=7), Box(name=Books, age=4)
...

// OddGenerator
boxCollection.addItems(Box(name: "Maps", age: 12), Box(name: "Puzzles", age: 7), Box(name: "Books", age: 4), Box(name: "Photos", age: 72))
for value in boxCollection { println(value) }
// Box(name=Puzzles, age=7), Box(name=Photos, age=72)
```
