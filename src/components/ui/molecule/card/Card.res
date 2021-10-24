type styles = {card: string}
@module("./Card.module.scss") external styles: {..} = "default"

@react.component
let make = (~title, ~prize, ~color: [#red | #blue | #green]) => {
  let color = switch color {
  | #red => styles["red"]
  | #blue => styles["blue"]
  | #green => styles["green"]
  }

  <div className={`flex flex-col items-center p-3 ${color}`}>
    <p className="text-white text-lg font-bold uppercase"> {title->React.string} </p>
    <div className="bg-white w-full text-center">
      <p className="text-lg font-bold uppercase p-1"> {prize->React.string} </p>
    </div>
  </div>
}
