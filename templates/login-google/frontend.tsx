import React from 'react'

export default function LoginGoogle() {
  const handleLogin = () => {
    window.location.href = '/auth/google'
  }

  return (
    <button onClick={handleLogin}>
      Login com Google
    </button>
  )
}
