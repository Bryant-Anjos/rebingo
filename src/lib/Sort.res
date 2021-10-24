let rec findUniqueNumber = numbers => {
  let number = Js.Math.random_int(1, 91)

  if numbers->Js.Array2.some(i => i === number) {
    findUniqueNumber(numbers)
  } else {
    number
  }
}

let sortNumbers = numbers => {
  let number = numbers->findUniqueNumber
  let newNumbers = numbers->Js.Array2.sliceFrom(0)
  let _ = newNumbers->Js.Array2.push(number)
  newNumbers
}
