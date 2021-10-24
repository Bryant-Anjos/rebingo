let default = () => {
  let (numbers, setNumbers) = React.useState(_ => [])
  let (interval, setInterval) = React.useState(_ => None)

  React.useEffect0(() => {
    let interval = Js.Global.setInterval(_ => {
      setNumbers(n => n->Sort.sortNumbers)
    }, 1000)
    setInterval(_ => Some(interval))

    None
  })

  React.useEffect1(() => {
    if numbers->Belt.Array.length == 90 {
      switch interval {
      | Some(intervalId) => Js.Global.clearInterval(intervalId)
      | None => ()
      }
    }

    None
  }, [numbers])

  <div className="flex justify-between min-w-screen min-h-screen bg-black p-2">
    <div className="grid grid-cols-1 gap-y-2">
      <PlayerCard sorteds=numbers />
      <PlayerCard sorteds=numbers />
      <PlayerCard sorteds=numbers />
      <PlayerCard sorteds=numbers />
      <PlayerCard sorteds=numbers />
      <PlayerCard sorteds=numbers />
      <PlayerCard sorteds=numbers />
      <PlayerCard sorteds=numbers />
    </div>
    <div className="grid grid-cols-3 items-start gap-1">
      <PrizeCard title="Kuadra" prize="10,00" color=#red />
      <PrizeCard title="Kina" prize="50,00" color=#blue />
      <PrizeCard title="Keno" prize="100,00" color=#green />
    </div>
    <div>
      <div className="bg-white bg-opacity-50 p-2">
        <p className="text-white text-center font-bold"> {j`Números sorteados`->React.string} </p>
        <BingoNumbers sorteds=numbers />
      </div>
    </div>
  </div>
}
