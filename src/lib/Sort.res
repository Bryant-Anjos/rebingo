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

let isSorted = (~value, ~sorteds) => {
  let result = switch sorteds {
  | None => None
  | Some([]) => None
  | Some(items) =>
    if items[items->Belt.Array.length - 1] === value {
      Some(#current)
    } else if items->Belt.Array.some(item => item == value) {
      Some(#sorted)
    } else {
      None
    }
  }

  result->Belt.Option.getWithDefault(#none)
}
