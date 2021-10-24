@react.component
let make = (~sorteds=?) => {
  let isSorted = number => {
    let result = switch sorteds {
    | None => None
    | Some([]) => None
    | Some(items) =>
      if items[items->Belt.Array.length - 1] === number {
        Some(#current)
      } else {
        switch items->Belt.Array.some(item => item == number) {
        | true => Some(#sorted)
        | false => None
        }
      }
    }

    result->Belt.Option.getWithDefault(#none)
  }

  <div className="grid grid-cols-10 gap-x-1 gap-y-1">
    {90
    ->Belt.Array.makeBy(i => {
      let number = i + 1
      <SortableNumber key={number->Belt.Int.toString} number status={isSorted(number)} />
    })
    ->React.array}
  </div>
}
