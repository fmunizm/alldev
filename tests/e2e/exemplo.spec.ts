import { test, expect } from '@playwright/test'

test('deve acessar a home e encontrar botão de login', async ({ page }) => {
  await page.goto('http://localhost:3000')
  const botao = await page.getByRole('button', { name: /login/i })
  await expect(botao).toBeVisible()
})
