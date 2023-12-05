import Foundation

//Ejemplo For-------------------------------------------------------------
for i in 0...5{
    print(i)
}

var cont = 6

//Ejemplo While-------------------------------------------------------------
while cont < 10 {
    print(cont)
    cont += 1
}

//Ejemplo Func-------------------------------------------------------------
func pedirNombre() -> String {
    let name = "Bernardo"
    return name
}

var miNombre = pedirNombre()
print(miNombre)

//Ejemplo Func 2-------------------------------------------------------------
func multiply(a: Int, b:Int) -> Int {
    return a*b
}

print(multiply(a: 3, b: 5))

//Ejemplo Func 3-------------------------------------------------------------
let multiply2 : (Int, Int) -> Int  = { (num1, num2) in
    return num1 * num2
}

print(multiply2(4, 20))
