# POO

## Class

Admiten Herencia

Son mutables

Instancias son referencias //Si modificas 1, modificas ambos

```
class People {
  var relatives: [Person]
  var friends: [Person]
}
```

## Struct

No admiten herencia

Son inmutables

Sus Instancias son valores //Si modificas 1, solo modificas ese

```
struct Person {
  var name: String
  var lastName: String
  var age: UINT
}
```


## Codigo


```
import Foundation

struct Persona { //Class Afecta todo

    //Declarar Variables
    var nombre: String
    var edad: UInt

    init(nombre: String, edad: UInt){
        self.nombre = nombre
        self.edad = edad
    }

    mutating func cambiarNombre(nuevo nombre: String) -> String { //mutating te permite mutar
        let anterior = self.nombre
        self.nombre = nombre
        return anterior
    }
}

var persona1 = Persona(nombre: "Moy", edad: 19)
var persona2 = persona1

persona2.cambiarNombre(nuevo: "Pineda")
//persona2.nombre = "Hiram" //Afecta persona1 y persona 2 si es Class

print("Nombre: \(persona1.nombre)")
print("Nombre: \(persona2.nombre)")
```
