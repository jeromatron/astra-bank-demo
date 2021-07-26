import { useHistory } from 'react-router-dom'
import axios from "axios"
import { useState } from "react"
import './login.css'

export default function Login() {
  let history = useHistory()
  const [username,setusername] = useState(null)

  const eventhandler = async () => {
    const results = await axios.get(`/.netlify/functions/getAuth?username=${username}`)
    const userid = Object.values(results)[0]
    console.log(userid)
    if (userid != null) {
      history.push(`/home?user=${userid}`)
    }
  }

  return (
    <div className="base">
      <div className="base-container">
        <div className='title'>DataStax Bank</div>
        <div className="content">
          <div className="form">
            <input className="input" type="text" name="username" placeholder="Username" onChange={e => setusername(e.target.value)} />
            <button
              onClick={() => { eventhandler() }} className="btn">
              Login
            </button>
          </div>
        </div>
      </div>
    </div>
  )
}
