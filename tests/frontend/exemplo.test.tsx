import { render, screen } from '@testing-library/react'
import CadastroCliente from '../../src/components/CadastroCliente'

describe('Componente CadastroCliente', () => {
  it('renderiza inputs corretamente', () => {
    render(<CadastroCliente />)
    expect(screen.getByPlaceholderText('Nome')).toBeInTheDocument()
    expect(screen.getByPlaceholderText('Email')).toBeInTheDocument()
  })
})
