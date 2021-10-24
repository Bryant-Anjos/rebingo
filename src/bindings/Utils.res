module String = {
  type t = Js.String2.t
  @send external padStart: (t, int, string) => t = "padStart"
}
