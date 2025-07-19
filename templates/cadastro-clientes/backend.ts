import { Router } from 'express'
import { PrismaClient } from '@prisma/client'

const router = Router()
const prisma = new PrismaClient()

router.post('/clientes', async (req, res) => {
  const { nome, email } = req.body
  const novo = await prisma.cliente.create({ data: { nome, email } })
  res.json(novo)
})

export default router
