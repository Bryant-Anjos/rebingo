@react.component
let make = (~sorteds=?) => {
  let (numbers, setNumbers) = React.useState(_ => [[], [], []])

  React.useEffect0(() => {
    let cardNumbers = ref([])
    while cardNumbers.contents->Belt.Array.length <= 15 {
      let sortNumbers = (n1, n2) => n1 - n2
      cardNumbers := cardNumbers.contents->Sort.sortNumbers->Js.Array2.sortInPlaceWith(sortNumbers)
    }
    setNumbers(_ => [
      cardNumbers.contents->Belt.Array.slice(~offset=0, ~len=5),
      cardNumbers.contents->Belt.Array.slice(~offset=5, ~len=5),
      cardNumbers.contents->Belt.Array.slice(~offset=10, ~len=5),
    ])

    None
  })

  <div className="grid grid-cols-5 gap-1">
    {numbers
    ->Belt.Array.map(row =>
      row
      ->Belt.Array.map(number =>
        <PlayerNumber number status={Sort.isSorted(~value=number, ~sorteds)} />
      )
      ->React.array
    )
    ->React.array}
  </div>
}
