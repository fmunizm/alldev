import request from 'supertest'
import app from '../src/app'

describe('Cadastro de Clientes', () => {
  it('POST /clientes deve criar cliente', async () => {
    const res = await request(app).post('/clientes').send({
      nome: 'João',
      email: 'joao@email.com'
    })
    expect(res.body.nome).toBe('João')
  })
})
