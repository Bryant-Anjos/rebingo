import { make as Text } from '../src/components/text/Text.bs'
import styles from './style.module.scss'

export default function Home() {
  return (
    <div className={styles.test}>
      <p>paragraph</p>
      <span>span</span>
      <Text />
    </div>
  )
}
