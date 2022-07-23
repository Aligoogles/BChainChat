import React from 'react'
import './LandingPage.css'
import metamask from '../../image/metamask.png'

function LandingPage() {
  return (
    <div className="main-page">
      <div>
        <h1 className="main-page-title">BChainChat</h1>
        <p className="about-us">Want to connect with other Blockchain enthusiasts?
        <br />
        Read blogs about the world of Blockchain?
        Get easy access to all events related to Blockchain?
        <br />
        <br />
        Then you found the perfect application. Here we let you create an account, then Sign in with MetaMask wallet and start chatting, posting, RSVP to events or just brows through other users posts!</p>

        <p className="login-paragraph"> So what are you waiting for.....Login or sign up to start exploring the amazing world of Blockchain!</p>
      </div>

      <div className="login-box col-lg-3">
        <img className="MetaMask-img" src={metamask} alt="MetaMask" /><br />
        <button>Sign in</button>
      </div>
    </div>
  )
}

export default LandingPage;
