@module("./style.module.scss") external styles: {..} = "default"

@react.component
let make = () => {
  <h3 className={styles["test"]}> {"Test from rescript"->React.string} </h3>
}
