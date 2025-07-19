import React, { useState } from 'react'

export default function CadastroCliente() {
  const [nome, setNome] = useState('')
  const [email, setEmail] = useState('')

  const handleSubmit = async () => {
    const res = await fetch('/clientes', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ nome, email })
    })
    const data = await res.json()
    alert(`Cliente criado: ${data.id}`)
  }

  return (
    <div>
      <input placeholder="Nome" value={nome} onChange={e => setNome(e.target.value)} />
      <input placeholder="Email" value={email} onChange={e => setEmail(e.target.value)} />
      <button onClick={handleSubmit}>Cadastrar</button>
    </div>
  )
}
