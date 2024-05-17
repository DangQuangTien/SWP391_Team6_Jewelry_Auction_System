import React, { useState } from 'react';
import Login from './Login';
import './App.css';

function SignUp() {
  const [username, setUsername] = useState('');
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [errorMessage, setErrorMessage] = useState('');
  const [isLogin, setIsLogin] = useState(false);

  const handleSubmit = (event) => {
    event.preventDefault();
    if (!username || !email || !password) {
      setErrorMessage('User needs to enter Username, Email, and Password to sign up for a new Account');
    } else {
      setErrorMessage('');
      setIsLogin(true);
    }
  };

  const handleInputChange = () => {
    setErrorMessage('');
  };
  
  const handleLoginClick = () => {
    setIsLogin(true);
  };

  if (isLogin) {
    return <Login />;
  }

  return (
    <div className="App">
      <form onSubmit={handleSubmit}>
        <h1>Sign Up</h1>
        <label>
          <input type="text" name="username" placeholder="USERNAME" value={username} onChange={(e) => { setUsername(e.target.value); handleInputChange(); }} />
        </label>
        <label>
          <input type="email" name="email" placeholder="EMAIL" value={email} onChange={(e) => { setEmail(e.target.value); handleInputChange(); }} />
        </label>
        <label>
          <input type="password" name="password" placeholder="PASSWORD" value={password} onChange={(e) => { setPassword(e.target.value); handleInputChange(); }} />
        </label>
        <input type="submit" value="Sign Up" />
        {errorMessage && <p>{errorMessage}</p>}
        <p className="new-to-site">Already have an account? <span onClick={handleLoginClick}>Log in now!</span></p>
        <div className="social-media-icons">
          {/* Add your social media icons here */}
        </div>
      </form>
    </div>
  );
}

export default SignUp;

