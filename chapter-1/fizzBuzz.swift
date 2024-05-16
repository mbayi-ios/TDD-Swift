import Foundation

// func fizzBuzz(_ number: Int) -> String {
//   let disivibleBy3 = number % 3 == 0
//   let divisibleBy5 = number % 5 == 0

//   switch(disivibleBy3, divisibleBy5) {
//     case (false, false): return "\(number)"
//     case (true, false): return "fizz"
//     case (false, true): return "buzz"
//     case(true, true): return "fizz-buzz"
//   }
// }



// func testFizzBuzz() {
//   test(value: fizzBuzz(1), matches: "1")
//   test(value: fizzBuzz(3), matches: "fizz")
//   test(value: fizzBuzz(5), matches: "buzz")
//   test(value: fizzBuzz(10), matches: "fizz-buzz")
// }

//
// print(fizzBuzz(0))
// print(testFizzBuzz())

func test(value: String, matches expected: String) {
  if value == expected {
    print("PASSED")
  } else {
    print("FAILED")
  }
}

func fizzBuzz(_ number: Int) -> String {
  switch( number % 3 == 0, number % 5 == 0){
    case (true, false): return "fizz"
    case(false, true): return "buzz"
    case(true, true): return "fizz-buzz"
    default: return "\(number)"
  }

}

func testFizzBuzz() {
  test(value: fizzBuzz(1), matches: "1")
  test(value: fizzBuzz(3), matches: "fizz")
  test(value: fizzBuzz(5), matches: "buzz")
  test(value: fizzBuzz(15), matches: "fizz-buzz")
}

system("clear")
print(testFizzBuzz())
