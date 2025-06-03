# Cenário de Teste - Editar Dados de Usuário

## Cenário 1: Login com credenciais válidas
**Objetivo:** Verificar se o sistema permite o login com credenciais corretas.  
**Pré-condições:** O usuário já está cadastrado.  
**Passos:**
1. Abrir navegador e acessar URL de login
2. Preencher e-mail e senha válidos
3. Clicar em "Entrar"  
**Resultado Esperado:** O sistema redireciona para a tela principal do usuário.

---

## Cenário 2: Edição de dados pessoais
**Objetivo:** Editar e salvar dados de telefone do usuário logado.  
**Pré-condições:** Usuário autenticado e acessando "Meus Dados".  
**Passos:**
1. Acessar menu "Meus dados"
2. Preencher novo número de telefone
3. Clicar em "Salvar"  
**Resultado Esperado:** Dados salvos com sucesso e mensagem de confirmação exibida.

---

## Cenário 3: Edição de endereço
**Objetivo:** Atualizar endereço completo do usuário com seleção de região, cidade e distrito.  
**Passos:**
1. Selecionar "São Paulo" como estado
2. Selecionar "São Paulo" como cidade
3. Selecionar "Santo Amaro" como distrito
4. Preencher endereço, número e complemento
5. Salvar alterações  
**Resultado Esperado:** Endereço salvo corretamente com exibição de mensagem de sucesso.

---

## Cenário 4: Edição de dados da empresa
**Objetivo:** Alterar nome da empresa vinculada ao usuário.  
**Passos:**
1. Acessar aba da empresa
2. Editar o nome da empresa
3. Clicar em "Criar Conta"  
**Resultado Esperado:** Empresa atualizada com sucesso.

---

## Cenário 5: Reconfiguração de dados iniciais
**Objetivo:** Restaurar os dados iniciais do usuário para repetição dos testes.  
**Passos:**  
- Repetir etapas de edição de telefone, endereço, usuário e empresa com valores pré-definidos  
**Resultado Esperado:** Ambiente restaurado aos dados iniciais com sucesso para nova execução de testes.

---

**Observações:**
- Os testes usam Robot Framework com a biblioteca `Browser`
- A execução é visual (headless desativado) para facilitar depuração
- Screenshots são capturados em pontos críticos para validação visual
