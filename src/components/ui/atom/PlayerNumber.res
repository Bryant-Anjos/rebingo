@react.component
let make = (~number, ~status=?) => {
  let color = switch status {
  | Some(#current) => "red-700"
  | Some(#sorted) => "red-700"
  | _ => "blue-700"
  }

  <div className={`flex items-center justify-center w-7 h-7 bg-${color}`}>
    <p className="text-white font-bold">
      {number->Belt.Int.toString->Utils.String.padStart(2, "0")->React.string}
    </p>
  </div>
}
