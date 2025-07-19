import request from 'supertest'
import app from '../src/app'

describe('Auth Google', () => {
  it('GET /auth/google deve redirecionar', async () => {
    const res = await request(app).get('/auth/google')
    expect(res.statusCode).toBe(302)
  })
})
