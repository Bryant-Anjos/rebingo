@react.component
let make = (~number, ~status=?) => {
  let color = switch status {
  | Some(#current) => "red-500"
  | Some(#sorted) => "green-500"
  | _ => "white"
  }

  <div className="flex justify-center items-center bg-indigo-900 w-7 h-7">
    <p className={`text-${color} font-bold`}>
      {number->Belt.Int.toString->Utils.String.padStart(2, "0")->React.string}
    </p>
  </div>
}
