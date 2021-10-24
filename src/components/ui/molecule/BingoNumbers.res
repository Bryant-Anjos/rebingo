@react.component
let make = (~sorteds=?) => {
  <div className="grid grid-cols-10 gap-x-1 gap-y-1">
    {90
    ->Belt.Array.makeBy(i => {
      let number = i + 1
      <SortableNumber
        key={number->Belt.Int.toString} number status={Sort.isSorted(~value=number, ~sorteds)}
      />
    })
    ->React.array}
  </div>
}
