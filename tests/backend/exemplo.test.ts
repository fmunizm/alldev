import request from 'supertest'
import app from '../../src/app'

describe('API - Clientes', () => {
  it('deve retornar 200 em GET /clientes', async () => {
    const res = await request(app).get('/clientes')
    expect(res.status).toBe(200)
    expect(Array.isArray(res.body)).toBe(true)
  })
})
