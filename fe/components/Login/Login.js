import React, { useState } from 'react';
import SignUp from './Signup';
import './App.css';

function Login() {
  const [username, setUsername] = useState('');
  const [password, setPassword] = useState('');
  const [errorMessage, setErrorMessage] = useState('');
  const [isSignUp, setIsSignUp] = useState(false);

  const handleSubmit = (event) => {
    event.preventDefault();
    if (!username && !password) {
      setErrorMessage('User needs to enter Username and Password or sign up for a new Account');
    } else if (!username) {
      setErrorMessage('User needs to enter Username');
    } else if (!password) {
      setErrorMessage('User needs to enter Password');
    } else {
      setErrorMessage('');
    }
  };

  const handleInputChange = () => {
    setErrorMessage('');
  };

  const handleSiginClick = () => {
    setIsSignUp(true);
  };

  if (isSignUp) {
    return <SignUp />;
  }

  return (
    <div className="App">
      <form onSubmit={handleSubmit}>
        <h1>Login</h1>
        <label>
          <input type="text" name="username" placeholder="EMAIL" value={username} onChange={(e) => { setUsername(e.target.value); handleInputChange(); }} />
        </label>
        <label>
          <input type="password" name="password" placeholder="PASSWORD" value={password} onChange={(e) => { setPassword(e.target.value); handleInputChange(); }} />
        </label>
        <p className="forgot-password">Forget Password?</p>
        <input type="submit" value="Login" />     
        {errorMessage && <p>{errorMessage}</p>}
        <p className="new-to-site">Do not have account? <span onClick={handleSiginClick}>Sigin now!</span></p>
      </form>
    </div>
  );
}

export default Login;

