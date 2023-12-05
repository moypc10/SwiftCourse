# Basics of Swift

---

## Inicializar Constantes o Variables

```
var indetificador: Tipo = valor

let lovingSwift = true //Bool
let helloWorld = "Hello, World!" //String

var minimumAge: Double = -5
var currentLoginAttempt = 0 //Variable
```

## Operadores

**Unario:**

-a

-b

!hola

NOT (!x)

**Binarios:**

Asignaciòn: a = 5 / a+=10

Aritmeticos: 1+2 / 5-3 / 2*5 / 25/5

Comparación: x==y

Logicos: AND (x && y) / OR (x||y)

Modulo: 16%2 = 0

**Ternarios:**

El ùnico operador ternario es *Ternary*

One-Liner de un If cuando no necesitas mucha logica

```
let TextColor = (code ==200) ? "green" : "red"
```

## Condicionales

### If

Se leen de izquierda a derecha
```
let temp = 12

if temp < 15 {
  print("You should wear a jacket")  **//Imprimir**
} else {
  print ("You could wear a T-shirt") 
}
```
//You should wear a Jacket

### Switch

If con Diferente Estructura

### Guard

Solo cumple cuando sea falso

Es Utilizado en situaciones donde el cumplimiento de la condición es estrictamente necesario.

```
guard condition else {
  fatalError("Condition was not met")
}
```

## Loops

### While

```
while convertedNumber == nil {
  askForNumber()
}
```

### Repeat While
```
var att = 0

repeat {
  att += 1
  login()
} while att < 5 %% user == nil //Nil = Null
```

### For Loop

to = SinIncluir (0-9)

Through = Incluido (0-10

```
for i in 1...5 {
  print(i)
}
```

```
for i in stride (from: 0, to: 10, by 2) {  
 print(i)
}
```

## Opcionales

Optional Unwrapping

Puede ser null

```
let possibleNumber = "123"

let number = Int(possibleNumber)
//Number es de Tipo Int?
```

Opción 1:
```
let name: String? = ...
if name != nil{
  print (name!)
} else {
  print("Unnamed")
}
```

Opción 2:
```
let name: String? = ...
if let name{
  print (name)
} else {
  print("Unnamed")
}
```

Opción 3: (Optional Coalescing):
```
let name: String? = ...
print(name ?? "Unnamed")
```

Opción 4: (Guard-Let)
```
let name: String? = ...
guard let name else{
  return "Unnamed"
}
return name
```

Opción 5: (Ternary Conditional Operator)
```
let name: String? = ...
let actualName = name != nil ? name ! : "Unnamed"
print (actualName)
```

## Funciones

Opción 1:
```
func greet(name: String){
  print("Hello, \ (name)!")
}
greet(name: "John") //Llamar a la Función
```

Opción 2:
```
func greet(_ name: String){
  print("Hello, \ (name)!")
}

greet("John")
```

## Arrays

**Crear Array**
```
var fullSyntax: Array <Int> =  []
var shortHandSyntax: [Int] = []  //Preferido
var numbers = [1,2,3,4]
```

**Llamar al 1er elemento**
```
let first = numbers[0]
let otherFirst = numbers.first
```

**Modificar / Agregar**
```
numbers.append(0)
numbers[3] = 20
```

**Contar / Confirmar Cantidad de Elementos**
```
numbers.count
numbers.contains(10)
```

## Sets

**Crear Array**
```
var fruits: Set<String> = ["Apple","Orange", "Tomato"]
var fruits: Set = ["Apple","Orange", "Tomato"]
```

**Insertar y Borrar**
```
fruits.insert("Grapes")
fruits.remove("Apple")
```

## Diccionario
```
var fruits = [String: UInt] ()
var vegetables: [String: UInt] = [:]

fruits["manzana"] = 5  //Manzana vale 5
vegetables["brocoli"] = 2
```

## Iterar Colecciones
```
let numbers = [0,1,2,3,4]

for number in numbers {
  print("Tienes \(number) años")
}
```

**Diccionario:**
```
var alumnos: [String: String] = [
  "A01638911": "Bernardo Santiago",
  "A01638912": "Moy",
  "A01638913": "Hiram",

print(alumnos.keys) //Matriculas
print(alumnos.values) //Nombres

for(matricula,nombre) in alumnos {
  print("Hola, \(nombre). Tu matricula es \(matricula) ")
}
```

## Enums

Inicien con Mayuscula

Sirven para clasificar datos con nombres especìficos
```
enum Frutas: String {
  case platano = "platano"
  case manzana = "manzana"
}
```

var FrutaFav = Frutas.manzana
print(FrutaFav.rawValue) //"manzana"

