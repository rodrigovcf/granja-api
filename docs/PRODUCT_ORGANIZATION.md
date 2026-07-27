# Organização Completa do Projeto Granja-API

## 📋 Índice
1. Análise Estratégica
2. Épicos
3. User Stories Detalhadas
4. Roadmap de Sprints
5. Milestones
6. Labels Sugeridas
7. Ordem de Desenvolvimento
8. MVP Definition
9. Visão Geral do Projeto

---

## 🎯 Análise Estratégica

### Oportunidades de Melhoria Identificadas

#### 1. **Fluxo de Recebimento de Pedidos**
- **Problema atual**: Pedidos por telefone → manual → propenso a erros
- **Oportunidade**: Implementar formulário web ou app para clientes realizar pedidos diretamente
- **Benefício**: Reduz erros de transcrição, aumenta rastreabilidade, permite confirmação automatizada
- **Timeline**: Post-MVP (Sprint 4+)

#### 2. **Controle de Pagamento**
- **Problema atual**: Controle manual, risco de duplicação/perda
- **Oportunidade**: Sistema de confirmação de pagamento com foto/comprovante
- **Benefício**: Histórico completo, reduz disputas sobre pagamento
- **Timeline**: MVP v2

#### 3. **Comunicação com Entregador**
- **Problema atual**: Entregador recebe nota impressa, sem confirmação de entrega
- **Oportunidade**: App/Web para entregador confirmar entrega + foto de comprovante
- **Benefício**: Rastreabilidade completa, confirmação de entrega em tempo real
- **Timeline**: Post-MVP (Sprint 4+)

#### 4. **Histórico e Análise**
- **Problema atual**: Difícil localizar histórico, sem análise de tendências
- **Oportunidade**: Dashboard com relatórios, filtros, histórico completo
- **Benefício**: Insights sobre clientes, produtos mais vendidos, sazonalidade
- **Timeline**: MVP v2

#### 5. **Validação de Dados**
- **Problema atual**: Sem validação, dados incorretos podem ser inseridos
- **Oportunidade**: Validações automáticas, alertas de inconsistência
- **Benefício**: Qualidade de dados, reduz erros operacionais
- **Timeline**: MVP v1

---

## 🏛️ ÉPICOS

### Épico 1: Infraestrutura Base
**Objetivo**: Preparar o ambiente técnico, arquitetura e ferramentas necessárias.

### Épico 2: Gestão de Clientes
**Objetivo**: Cadastrar e gerenciar informações dos clientes.

### Épico 3: Gestão de Produtos
**Objetivo**: Cadastrar e gerenciar catálogo de produtos.

### Épico 4: Gestão de Pedidos
**Objetivo**: Registrar, processar e rastrear pedidos.

### Épico 5: Controle de Entregas
**Objetivo**: Gerenciar entrega de pedidos e confirmações.

### Épico 6: Controle de Pagamentos
**Objetivo**: Registrar e controlar status de pagamentos.

### Épico 7: Histórico e Auditoria
**Objetivo**: Manter histórico completo e rastreabilidade de todas as operações.

### Épico 8: Relatórios e Dashboard
**Objetivo**: Fornecer visibilidade através de relatórios e dashboards.

### Épico 9: Integração com Frente de Vendas
**Objetivo**: Integrar sistema com recebimento de pedidos (telefone/app clientes).

### Épico 10: Aplicativo do Entregador
**Objetivo**: Sistema mobile/web para gestão de entregas pelo entregador.

---

## 👥 USER STORIES DETALHADAS

### ═══ ÉPICO 1: INFRAESTRUTURA BASE ═══

#### US-1.1: Configurar Banco de Dados Inicial
**Prioridade**: CRÍTICA | **Story Points**: 5 | **Sprint**: 0

**User Story**:
Como desenvolvedor,
quero ter um banco de dados PostgreSQL configurado com Flyway,
para garantir versionamento de schema e integridade estrutural.

**Objetivo**: Estabelecer base de dados produtiva com controle de versão de migrações.

**Descrição**:
- Criar instância PostgreSQL (local ou Docker)
- Configurar Flyway no projeto
- Criar migrations iniciais (V1.0)
- Documentar processo de setup

**Critérios de Aceite**:
- [ ] PostgreSQL está rodando e acessível
- [ ] Flyway executa sem erros
- [ ] Migration V1.0 cria schema básico
- [ ] Documentação de conexão atualizada
- [ ] docker-compose.yml configurado para ambiente local

**Dependências**: Nenhuma

**Labels**: `backend`, `database`, `infra`, `docker`

---

#### US-1.2: Configurar Estrutura de Pacotes do Projeto
**Prioridade**: CRÍTICA | **Story Points**: 3 | **Sprint**: 0

**User Story**:
Como desenvolvedor,
quero ter a estrutura de pacotes organizada seguindo padrões de arquitetura em camadas,
para facilitar manutenção e escalabilidade.

**Objetivo**: Estabelecer padrão de organização do código.

**Descrição**:
- Criar estrutura: controller, service, repository, dto, mapper, entity
- Criar pacotes por domínio (cliente, produto, pedido, etc.)
- Documentar convenções de nomenclatura
- Criar templates de classes base

**Critérios de Aceite**:
- [ ] Estrutura de pacotes criada
- [ ] README com convenções gerado
- [ ] Projeto compila sem erros
- [ ] Estrutura reflete o padrão definido

**Dependências**: Nenhuma

**Labels**: `backend`, `documentation`

---

#### US-1.3: Configurar CI/CD com GitHub Actions
**Prioridade**: ALTA | **Story Points**: 5 | **Sprint**: 0

**User Story**:
Como desenvolvedor,
quero ter pipeline automatizado de build, teste e deploy,
para garantir qualidade de código em cada commit.

**Objetivo**: Estabelecer automação de testes e build.

**Descrição**:
- Criar workflow Maven (build + testes)
- Configurar verificação de cobertura de testes
- Adicionar linting/análise estática (SonarQube opcional)
- Documentar processo de CI/CD

**Critérios de Aceite**:
- [ ] Workflow executa em cada push
- [ ] Build falha se testes falharem
- [ ] Relatório de build disponível
- [ ] Documentação de troubleshooting criada

**Dependências**: US-1.1, US-1.2

**Labels**: `infra`, `backend`, `testing`, `github-actions`

---

#### US-1.4: Configurar Projeto React + TypeScript
**Prioridade**: ALTA | **Story Points**: 5 | **Sprint**: 0

**User Story**:
Como desenvolvedor frontend,
quero ter projeto React com TypeScript configurado,
para garantir tipagem forte e melhor experiência de desenvolvimento.

**Objetivo**: Estabelecer base de frontend robusto.

**Descrição**:
- Criar projeto React com Vite/Create React App
- Configurar TypeScript com strict mode
- Configurar ESLint + Prettier
- Criar estrutura de pastas (components, pages, services, hooks, utils)
- Configurar variáveis de ambiente

**Critérios de Aceite**:
- [ ] Projeto React inicia sem erros
- [ ] TypeScript strict mode ativado
- [ ] Linter e formatter funcionando
- [ ] Estrutura de pastas documentada
- [ ] Exemplo de componente criado

**Dependências**: Nenhuma

**Labels**: `frontend`, `infra`, `documentation`

---

#### US-1.5: Documentar Arquitetura do Sistema
**Prioridade**: MÉDIA | **Story Points**: 3 | **Sprint**: 0

**User Story**:
Como desenvolvedor,
quero ter documentação clara da arquitetura do sistema,
para onboarding de novos desenvolvedores e decisões arquiteturais futuras.

**Objetivo**: Criar diagrama e documentação de arquitetura.

**Descrição**:
- Criar diagrama C4 (Context, Container, Component, Code)
- Documentar fluxos principais
- Documentar decisões arquiteturais (ADR)
- Criar glossário de termos do domínio

**Critérios de Aceite**:
- [ ] Diagrama C4 completo gerado
- [ ] Fluxos principais documentados
- [ ] ADR template criado e exemplo adicionado
- [ ] Glossário preenchido

**Dependências**: Nenhuma

**Labels**: `documentation`, `backend`, `frontend`

---

### ═══ ÉPICO 2: GESTÃO DE CLIENTES ═══

#### US-2.1: Criar Entidade e Tabela de Cliente
**Prioridade**: CRÍTICA | **Story Points**: 5 | **Sprint**: 1

**User Story**:
Como administrador,
quero que o sistema mantenha dados de clientes,
para referenciar em pedidos e entregas.

**Objetivo**: Estabelecer modelo de dados para Cliente.

**Descrição**:
- Criar entidade Cliente (JPA)
- Criar migration para tabela cliente
- Definir campos: id, nome, telefone, endereço, cidade, referência, data_cadastro, ativo
- Validações: nome obrigatório, telefone formato válido

**Critérios de Aceite**:
- [ ] Entidade Cliente criada com anotações JPA
- [ ] Migration criada e executa sem erros
- [ ] Tabela com campos corretos no banco
- [ ] Validações implementadas

**Dependências**: US-1.1

**Labels**: `backend`, `database`, `domain-model`

---

#### US-2.2: Implementar CRUD de Cliente (Backend)
**Prioridade**: CRÍTICA | **Story Points**: 8 | **Sprint**: 1

**User Story**:
Como administrador,
quero criar, ler, atualizar e deletar clientes através da API,
para gerenciar base de clientes.

**Objetivo**: API REST completa para clientes.

**Descrição**:
- Criar ClienteRepository (Spring Data JPA)
- Criar ClienteService com lógica de negócio
- Criar ClienteController com endpoints REST
- Criar ClienteDTO para request/response
- Criar ClienteMapper para conversão
- Implementar validações de negócio
- Adicionar testes unitários

**Critérios de Aceite**:
- [ ] GET /api/clientes (lista paginada)
- [ ] GET /api/clientes/{id}
- [ ] POST /api/clientes (criar)
- [ ] PUT /api/clientes/{id} (atualizar)
- [ ] DELETE /api/clientes/{id} (soft delete)
- [ ] Validações retornam erro 400
- [ ] Testes cobrem 80% do código
- [ ] Documentação Swagger gerada

**Dependências**: US-2.1, US-1.3

**Labels**: `backend`, `api`, `testing`

---

#### US-2.3: Criar Interface de Clientes (Frontend)
**Prioridade**: CRÍTICA | **Story Points**: 8 | **Sprint**: 1

**User Story**:
Como usuário,
quero ter uma interface para gerenciar clientes,
para cadastrar, editar e visualizar informações de clientes.

**Objetivo**: Tela completa de CRUD de clientes.

**Descrição**:
- Criar página de listagem com tabela
- Implementar paginação
- Criar formulário de cadastro/edição
- Implementar validação de formulário
- Criar modal de confirmação de exclusão
- Implementar busca/filtro
- Integrar com API backend

**Critérios de Aceite**:
- [ ] Tabela de clientes exibe corretamente
- [ ] Botão "Novo Cliente" abre formulário
- [ ] Formulário valida campos obrigatórios
- [ ] Edição funciona corretamente
- [ ] Exclusão pede confirmação
- [ ] Busca filtra resultados
- [ ] Paginação funciona
- [ ] Mensagens de sucesso/erro aparecem

**Dependências**: US-2.2, US-1.4

**Labels**: `frontend`, `ui`

---

#### US-2.4: Implementar Busca e Filtros de Cliente
**Prioridade**: MÉDIA | **Story Points**: 5 | **Sprint**: 2

**User Story**:
Como administrador,
quero buscar e filtrar clientes por diversos critérios,
para encontrar rapidamente informações de clientes específicos.

**Objetivo**: Melhorar busca de clientes.

**Descrição**:
- Implementar busca por nome (LIKE)
- Implementar filtro por telefone
- Implementar filtro por status (ativo/inativo)
- Implementar ordenação por nome, data cadastro
- Adicionar busca avançada

**Critérios de Aceite**:
- [ ] Busca por nome funciona
- [ ] Filtros aplicam corretamente
- [ ] Ordenação funciona
- [ ] Performance satisfatória (< 200ms)
- [ ] Frontend exibe filtros corretamente

**Dependências**: US-2.2

**Labels**: `backend`, `frontend`, `search`

---

### ═══ ÉPICO 3: GESTÃO DE PRODUTOS ═══

#### US-3.1: Criar Entidade e Tabela de Produto
**Prioridade**: CRÍTICA | **Story Points**: 5 | **Sprint**: 1

**User Story**:
Como gerenciador,
quero que o sistema mantenha catálogo de produtos,
para referenciar em pedidos.

**Objetivo**: Estabelecer modelo de dados para Produto.

**Descrição**:
- Criar entidade Produto (JPA)
- Criar migration para tabela produto
- Definir campos: id, nome, descrição, preço, unidade (dúzia/unidade), estoque, sku, ativo, data_cadastro
- Validações: nome obrigatório, preço > 0, sku único

**Critérios de Aceite**:
- [ ] Entidade Produto criada
- [ ] Migration criada e executa
- [ ] Tabela com campos corretos
- [ ] Validações implementadas
- [ ] SKU com constraint único

**Dependências**: US-1.1

**Labels**: `backend`, `database`, `domain-model`

---

#### US-3.2: Implementar CRUD de Produto (Backend)
**Prioridade**: CRÍTICA | **Story Points**: 8 | **Sprint**: 1

**User Story**:
Como gerenciador,
quero criar, ler, atualizar e deletar produtos através da API,
para gerenciar catálogo de produtos.

**Objetivo**: API REST completa para produtos.

**Descrição**:
- Criar ProdutoRepository
- Criar ProdutoService
- Criar ProdutoController
- Criar ProdutoDTO e ProdutoMapper
- Implementar validações
- Adicionar testes unitários

**Critérios de Aceite**:
- [ ] GET /api/produtos (lista paginada)
- [ ] GET /api/produtos/{id}
- [ ] POST /api/produtos (criar)
- [ ] PUT /api/produtos/{id} (atualizar)
- [ ] DELETE /api/produtos/{id} (soft delete)
- [ ] Validação de SKU único
- [ ] Testes cobrem 80%
- [ ] Swagger documentado

**Dependências**: US-3.1, US-1.3

**Labels**: `backend`, `api`, `testing`

---

#### US-3.3: Criar Interface de Produtos (Frontend)
**Prioridade**: CRÍTICA | **Story Points**: 8 | **Sprint**: 1

**User Story**:
Como gerenciador,
quero ter uma interface para gerenciar produtos,
para cadastrar, editar e visualizar catálogo.

**Objetivo**: Tela completa de CRUD de produtos.

**Descrição**:
- Criar página de listagem
- Implementar paginação e filtros
- Criar formulário de cadastro/edição
- Validar formulário no frontend
- Implementar busca por nome/SKU
- Integrar com API

**Critérios de Aceite**:
- [ ] Tabela exibe produtos corretamente
- [ ] Novo produto abre formulário
- [ ] Edição funciona
- [ ] Busca funciona
- [ ] Paginação funciona
- [ ] Mensagens de feedback aparecem

**Dependências**: US-3.2, US-1.4

**Labels**: `frontend`, `ui`

---

#### US-3.4: Implementar Controle de Estoque
**Prioridade**: MÉDIA | **Story Points**: 5 | **Sprint**: 2

**User Story**:
Como gerenciador,
quero visualizar e gerenciar estoque de produtos,
para planejar reposição e evitar venda de produtos indisponíveis.

**Objetivo**: Sistema básico de controle de estoque.

**Descrição**:
- Adicionar campo estoque na entidade
- Criar operações de incremento/decremento de estoque
- Implementar histórico de movimentações
- Validar estoque na criação de pedido
- Adicionar alerta de estoque baixo

**Critérios de Aceite**:
- [ ] Estoque decresce ao criar pedido
- [ ] Não permite venda acima do estoque
- [ ] Histórico de movimentações registrado
- [ ] Alerta de estoque baixo funciona
- [ ] Relatório de estoque gerado

**Dependências**: US-3.2

**Labels**: `backend`, `feature`

---

### ═══ ÉPICO 4: GESTÃO DE PEDIDOS ═══

#### US-4.1: Criar Entidades de Pedido e Item de Pedido
**Prioridade**: CRÍTICA | **Story Points**: 8 | **Sprint**: 1

**User Story**:
Como administrador,
quero que o sistema mantenha estrutura de pedidos,
para registrar e rastrear solicitações de clientes.

**Objetivo**: Modelo de dados para Pedido com suporte a múltiplos itens.

**Descrição**:
- Criar entidade Pedido (id, cliente_id, data_pedido, total, status, data_entrega_prevista, observações)
- Criar entidade ItemPedido (id, pedido_id, produto_id, quantidade, preço_unitário, subtotal)
- Criar migrations
- Definir relacionamentos JPA (OneToMany, ManyToOne)
- Validações: cliente obrigatório, pelo menos 1 item, quantidade > 0

**Critérios de Aceite**:
- [ ] Entidades Pedido e ItemPedido criadas
- [ ] Migrations executam sem erros
- [ ] Relacionamentos funcionam
- [ ] Cascata delete configurada
- [ ] Validações implementadas

**Dependências**: US-2.1, US-3.1, US-1.1

**Labels**: `backend`, `database`, `domain-model`

---

#### US-4.2: Implementar CRUD de Pedido (Backend)
**Prioridade**: CRÍTICA | **Story Points**: 10 | **Sprint**: 1

**User Story**:
Como administrador,
quero criar, ler, atualizar e listar pedidos através da API,
para gerenciar pedidos de clientes.

**Objetivo**: API REST completa para pedidos.

**Descrição**:
- Criar PedidoRepository com queries customizadas
- Criar PedidoService com lógica de negócio (criar, atualizar status)
- Criar PedidoController com endpoints
- Criar DTOs para Pedido e ItemPedido
- Implementar cálculo automático de total
- Adicionar testes
- Integração com controle de estoque

**Critérios de Aceite**:
- [ ] GET /api/pedidos (lista paginada com filtros)
- [ ] GET /api/pedidos/{id}
- [ ] POST /api/pedidos (criar com itens)
- [ ] PUT /api/pedidos/{id} (atualizar status)
- [ ] Total calculado automaticamente
- [ ] Estoque decresce ao criar
- [ ] Validações funcionam
- [ ] Testes cobrem 80%

**Dependências**: US-4.1, US-2.2, US-3.2

**Labels**: `backend`, `api`, `testing`

---

#### US-4.3: Criar Interface de Pedidos (Frontend)
**Prioridade**: CRÍTICA | **Story Points**: 13 | **Sprint**: 1-2

**User Story**:
Como vendedor,
quero ter uma interface para criar e gerenciar pedidos,
para registrar pedidos de clientes de forma rápida e intuitiva.

**Objetivo**: Tela completa de cadastro/gerenciamento de pedidos.

**Descrição**:
- Criar página de listagem de pedidos
- Criar formulário de novo pedido (seleção de cliente, produtos, quantidades)
- Implementar adição dinâmica de itens
- Implementar cálculo automático de total
- Criar visualização de detalhe de pedido
- Implementar edição de status
- Integrar com API

**Critérios de Aceite**:
- [ ] Lista de pedidos exibe corretamente
- [ ] Novo pedido abre formulário
- [ ] Seleção de cliente funciona
- [ ] Adição de produtos funciona
- [ ] Total atualiza dinamicamente
- [ ] Validações impedem envio inválido
- [ ] Status pode ser editado
- [ ] Detalhe de pedido mostra todas informações

**Dependências**: US-4.2, US-1.4

**Labels**: `frontend`, `ui`

---

#### US-4.4: Implementar Histórico de Pedidos
**Prioridade**: MÉDIA | **Story Points**: 5 | **Sprint**: 2

**User Story**:
Como administrador,
quero visualizar histórico completo de alterações em pedidos,
para auditar e rastrear todas as mudanças.

**Objetivo**: Sistema de auditoria para pedidos.

**Descrição**:
- Criar tabela de auditoria ou usar Envers
- Registrar todas alterações: criação, edição, mudança de status
- Registrar usuário e timestamp
- Criar endpoint para visualizar histórico
- Frontend para exibir histórico

**Critérios de Aceite**:
- [ ] Criação de pedido registrada
- [ ] Alterações registradas com timestamp
- [ ] Usuário registrado em cada alteração
- [ ] GET /api/pedidos/{id}/historico retorna histórico
- [ ] Frontend exibe timeline de alterações

**Dependências**: US-4.2

**Labels**: `backend`, `feature`, `audit`

---

### ═══ ÉPICO 5: CONTROLE DE ENTREGAS ═══

#### US-5.1: Criar Modelo de Dados de Entrega
**Prioridade**: ALTA | **Story Points**: 5 | **Sprint**: 2

**User Story**:
Como entregador,
quero que o sistema controle minhas entregas,
para ter rastreabilidade de quais pedidos foram entregues.

**Objetivo**: Modelo de dados para Entrega.

**Descrição**:
- Criar entidade Entrega (id, pedido_id, data_entrega, status, observações)
- Status: PENDENTE, EM_ROTA, ENTREGUE, NÃO_ENTREGUE
- Criar migration
- Validações: pedido obrigatório, status válido

**Critérios de Aceite**:
- [ ] Entidade Entrega criada
- [ ] Migration executa
- [ ] Relacionamento com Pedido funciona
- [ ] Enums de status criados

**Dependências**: US-4.1, US-1.1

**Labels**: `backend`, `database`, `domain-model`

---

#### US-5.2: Implementar API de Entregas
**Prioridade**: ALTA | **Story Points**: 8 | **Sprint**: 2

**User Story**:
Como desenvolvedor,
quero ter API para gerenciar entregas,
para integrar com sistema de entregador.

**Objetivo**: API REST para controle de entregas.

**Descrição**:
- Criar EntregaRepository
- Criar EntregaService
- Criar EntregaController
- Implementar endpoints: listar, criar, atualizar status
- Adicionar filtros por status, data, cliente

**Critérios de Aceite**:
- [ ] GET /api/entregas
- [ ] GET /api/entregas/{id}
- [ ] POST /api/entregas
- [ ] PATCH /api/entregas/{id}/status
- [ ] Filtros funcionam
- [ ] Testes implementados

**Dependências**: US-5.1, US-4.2

**Labels**: `backend`, `api`

---

#### US-5.3: Criar Interface de Entregas (Frontend)
**Prioridade**: ALTA | **Story Points**: 8 | **Sprint**: 2

**User Story**:
Como gerenciador,
quero ter uma interface para gerenciar entregas,
para acompanhar andamento das entregas.

**Objetivo**: Tela de gerenciamento de entregas.

**Descrição**:
- Criar página de listagem com status visual
- Implementar filtros por status
- Criar formulário para atualizar status
- Integrar com API

**Critérios de Aceite**:
- [ ] Listagem exibe status com cores
- [ ] Filtro por status funciona
- [ ] Status pode ser atualizado
- [ ] Feedback de sucesso aparece

**Dependências**: US-5.2, US-1.4

**Labels**: `frontend`, `ui`

---

### ═══ ÉPICO 6: CONTROLE DE PAGAMENTOS ═══

#### US-6.1: Criar Modelo de Dados de Pagamento
**Prioridade**: ALTA | **Story Points**: 5 | **Sprint**: 2

**User Story**:
Como gerenciador financeiro,
quero que o sistema controle pagamentos,
para ter registro completo de qual cliente pagou o quê.

**Objetivo**: Modelo de dados para Pagamento.

**Descrição**:
- Criar entidade Pagamento (id, pedido_id, valor, data_pagamento, metodo_pagamento, status, observações)
- Status: PENDENTE, RECEBIDO, CANCELADO
- Métodos: DINHEIRO, CARTÃO, CHEQUE, TRANSFERÊNCIA
- Criar migration
- Validações: valor > 0, data válida

**Critérios de Aceite**:
- [ ] Entidade Pagamento criada
- [ ] Migration executa
- [ ] Enums criados
- [ ] Relacionamento com Pedido funciona

**Dependências**: US-4.1, US-1.1

**Labels**: `backend`, `database`, `domain-model`

---

#### US-6.2: Implementar API de Pagamentos
**Prioridade**: ALTA | **Story Points**: 8 | **Sprint**: 2

**User Story**:
Como desenvolvedor,
quero ter API para gerenciar pagamentos,
para registrar e controlar pagamentos de pedidos.

**Objetivo**: API REST para controle de pagamentos.

**Descrição**:
- Criar PagamentoRepository
- Criar PagamentoService
- Criar PagamentoController
- Implementar endpoints: listar, criar, atualizar status
- Validar: não duplicar pagamento, valor coerente

**Critérios de Aceite**:
- [ ] GET /api/pagamentos
- [ ] POST /api/pagamentos (registrar pagamento)
- [ ] PATCH /api/pagamentos/{id}/status
- [ ] Validações funcionam
- [ ] Testes implementados

**Dependências**: US-6.1, US-4.2

**Labels**: `backend`, `api`

---

#### US-6.3: Criar Interface de Pagamentos (Frontend)
**Prioridade**: ALTA | **Story Points**: 8 | **Sprint**: 2

**User Story**:
Como gerenciador,
quero ter uma interface para registrar e controlar pagamentos,
para manter registro de clientes que pagaram.

**Objetivo**: Tela de gerenciamento de pagamentos.

**Descrição**:
- Criar página de listagem de pagamentos
- Implementar formulário para registrar pagamento
- Implementar filtros por status, método, data
- Integrar com API

**Critérios de Aceite**:
- [ ] Listagem exibe pagamentos
- [ ] Novo pagamento pode ser registrado
- [ ] Status exibido corretamente
- [ ] Filtros funcionam
- [ ] Cálculo de débito/crédito exibido

**Dependências**: US-6.2, US-1.4

**Labels**: `frontend`, `ui`

---

### ═══ ÉPICO 7: HISTÓRICO E AUDITORIA ═══

#### US-7.1: Implementar Auditoria Global de Entidades
**Prioridade**: MÉDIA | **Story Points**: 8 | **Sprint**: 3

**User Story**:
Como administrador,
quero que o sistema registre todas as mudanças em entidades,
para ter rastreabilidade completa e compliance.

**Objetivo**: Sistema global de auditoria.

**Descrição**:
- Implementar usando Hibernate Envers
- Configurar para todas as entidades
- Registrar: usuário, timestamp, tipo de alteração, valores antigos/novos
- Criar tabelas de auditoria

**Critérios de Aceite**:
- [ ] Envers configurado
- [ ] Tabelas de auditoria criadas
- [ ] Todas entidades auditadas
- [ ] Histórico acessível via API

**Dependências**: Nenhuma (cross-cutting)

**Labels**: `backend`, `audit`

---

#### US-7.2: Criar APIs de Auditoria
**Prioridade**: MÉDIA | **Story Points**: 5 | **Sprint**: 3

**User Story**:
Como desenvolvedor,
quero ter APIs para acessar histórico de auditoria,
para exposição de dados de auditoria.

**Objetivo**: Endpoints para visualizar auditoria.

**Descrição**:
- Criar AuditoriaController
- Implementar endpoints: listar histórico por entidade, visualizar versão específica
- Adicionar filtros por data, usuário, tipo de alteração

**Critérios de Aceite**:
- [ ] GET /api/auditoria/{entidade}/{id}
- [ ] Histórico completo retornado
- [ ] Filtros funcionam
- [ ] Paginação implementada

**Dependências**: US-7.1

**Labels**: `backend`, `api`

---

#### US-7.3: Criar Interface de Auditoria (Frontend)
**Prioridade**: MÉDIA | **Story Points**: 5 | **Sprint**: 3

**User Story**:
Como administrador,
quero visualizar histórico de alterações no frontend,
para rastrear quem alterou o quê e quando.

**Objetivo**: Tela de visualização de auditoria.

**Descrição**:
- Criar página de auditoria com timeline
- Exibir mudanças em formato legível
- Integrar com API

**Critérios de Aceite**:
- [ ] Timeline exibe alterações
- [ ] Usuário e timestamp visíveis
- [ ] Mudanças em formato legível
- [ ] Filtros funcionam

**Dependências**: US-7.2, US-1.4

**Labels**: `frontend`, `ui`

---

### ═══ ÉPICO 8: RELATÓRIOS E DASHBOARD ═══

#### US-8.1: Criar Dashboard Principal
**Prioridade**: MÉDIA | **Story Points**: 13 | **Sprint**: 3

**User Story**:
Como gerenciador,
quero ter um dashboard que mostre resumo do negócio,
para ter visibilidade rápida do status operacional.

**Objetivo**: Dashboard com KPIs principais.

**Descrição**:
- Cards com: Total de pedidos hoje, Faturamento dia, Pagamentos recebidos, Entregas realizadas
- Gráfico de vendas últimos 7/30 dias
- Gráfico de clientes top
- Gráfico de produtos mais vendidos
- Tabela de pedidos pendentes

**Critérios de Aceite**:
- [ ] Dashboard carrega rapidamente (< 2s)
- [ ] Cards exibem dados corretos
- [ ] Gráficos renderizam
- [ ] Dados são atualizados em tempo real
- [ ] Responsivo em mobile

**Dependências**: US-4.2, US-6.2, US-5.2

**Labels**: `frontend`, `dashboard`, `feature`

---

#### US-8.2: Implementar API de Relatórios
**Prioridade**: MÉDIA | **Story Points**: 10 | **Sprint**: 3

**User Story**:
Como desenvolvedor,
quero ter endpoints para dados de relatórios,
para fornecer dados para dashboard e relatórios.

**Objetivo**: API especializada em relatórios.

**Descrição**:
- Criar RelatorioService
- Implementar métodos: vendas por período, clientes top, produtos top, faturamento
- Otimizar queries para performance

**Critérios de Aceite**:
- [ ] GET /api/relatorios/vendas-por-periodo
- [ ] GET /api/relatorios/clientes-top
- [ ] GET /api/relatorios/produtos-top
- [ ] GET /api/relatorios/faturamento
- [ ] Respostas em < 500ms
- [ ] Dados corretos validados

**Dependências**: US-4.2, US-6.2

**Labels**: `backend`, `api`, `performance`

---

#### US-8.3: Implementar Relatórios PDF/Excel
**Prioridade**: MÉDIA | **Story Points**: 8 | **Sprint**: 3

**User Story**:
Como usuário,
quero exportar relatórios em PDF e Excel,
para compartilhar informações com stakeholders.

**Objetivo**: Exportação de relatórios.

**Descrição**:
- Integrar biblioteca de geração PDF (iText ou similar)
- Integrar biblioteca Excel (Apache POI ou similar)
- Criar endpoints para download
- Implementar formatação profissional

**Critérios de Aceite**:
- [ ] Relatórios gerados em PDF
- [ ] Relatórios gerados em Excel
- [ ] Formatação profissional
- [ ] Download funciona
- [ ] Headers corretos no arquivo

**Dependências**: US-8.2

**Labels**: `backend`, `feature`, `external-lib`

---

#### US-8.4: Criar Interface de Relatórios (Frontend)
**Prioridade**: MÉDIA | **Story Points**: 8 | **Sprint**: 3

**User Story**:
Como gerenciador,
quero ter interface para gerar e visualizar relatórios,
para analisar dados do negócio.

**Objetivo**: Páginas de relatórios.

**Descrição**:
- Criar página de relatórios com filtros (data início/fim, cliente, produto)
- Integrar gráficos (Charts.js, D3, Recharts)
- Botões de export PDF/Excel
- Integrar com API de relatórios

**Critérios de Aceite**:
- [ ] Página de relatórios carrega
- [ ] Filtros funcionam
- [ ] Gráficos exibem
- [ ] Export PDF funciona
- [ ] Export Excel funciona

**Dependências**: US-8.2, US-1.4

**Labels**: `frontend`, `ui`, `charts`

---

#### US-8.5: Criar Relatório de Notas Fiscais para Impressão
**Prioridade**: ALTA | **Story Points**: 8 | **Sprint**: 2

**User Story**:
Como vendedor,
quero imprimir nota de venda para entregar com o pedido,
para manter o processo físico funcionando.

**Objetivo**: Geração de nota impressa.

**Descrição**:
- Criar template HTML/CSS para nota
- Implementar endpoint para gerar PDF da nota
- Incluir: cliente, produtos, quantidades, preços, total, observações
- Formatado para impressão A4

**Critérios de Aceite**:
- [ ] Nota gerada em PDF
- [ ] Nota formatada corretamente para impressão
- [ ] Todos dados do pedido presentes
- [ ] Download funciona
- [ ] Interface simples para imprimir

**Dependências**: US-4.2

**Labels**: `backend`, `frontend`, `feature`, `printing`

---

### ═══ ÉPICO 9: INTEGRAÇÃO COM FRENTE DE VENDAS ═══

#### US-9.1: Criar Formulário Web de Pedido para Cliente (Future)
**Prioridade**: BAIXA | **Story Points**: 13 | **Sprint**: 4+

**User Story**:
Como cliente,
quero poder fazer meu pedido diretamente no sistema web,
para não depender de telefonema e agilizar o processo.

**Objetivo**: Portal de pedidos para clientes.

**Descrição**:
- Criar formulário de novo pedido (cliente selecionado automaticamente)
- Permitir seleção de produtos e quantidades
- Visualizar disponibilidade
- Confirmar pedido
- Receber confirmação por email/SMS

**Critérios de Aceite**:
- [ ] Formulário acessível via URL pública (login cliente)
- [ ] Produtos disponíveis mostrados
- [ ] Pedido confirmado com sucesso
- [ ] Email de confirmação enviado
- [ ] Histórico de pedidos do cliente visível

**Dependências**: US-4.2, US-3.2, US-2.2

**Labels**: `frontend`, `feature`, `future`

---

#### US-9.2: Integrar com WhatsApp/SMS para Confirmação de Pedidos (Future)
**Prioridade**: BAIXA | **Story Points**: 8 | **Sprint**: 4+

**User Story**:
Como cliente,
quero receber confirmação de pedido por WhatsApp,
para ter rastreamento instantâneo.

**Objetivo**: Notificação por WhatsApp.

**Descrição**:
- Integrar com API de WhatsApp (Twilio ou similar)
- Enviar mensagem após criação de pedido
- Incluir: detalhes do pedido, data entrega, valor
- Implementar templates de mensagem

**Critérios de Aceite**:
- [ ] Integração com API funciona
- [ ] Mensagem enviada com sucesso
- [ ] Mensagem formatada corretamente
- [ ] Número do cliente usado corretamente

**Dependências**: US-4.2

**Labels**: `backend`, `integration`, `external-service`, `future`

---

### ═══ ÉPICO 10: APLICATIVO DO ENTREGADOR ═══

#### US-10.1: Criar App/Web do Entregador para Confirmação de Entrega (Future)
**Prioridade**: BAIXA | **Story Points**: 13 | **Sprint**: 4+

**User Story**:
Como entregador,
quero ter interface móvel para marcar entregas como realizadas,
para eliminar a dependência do papel.

**Objetivo**: Sistema de confirmação de entrega em tempo real.

**Descrição**:
- Criar interface mobile-first (React ou PWA)
- Listar pedidos para entrega do dia
- Botão para marcar como entregue
- Campo de observações
- Integrar com API backend

**Critérios de Aceite**:
- [ ] Interface funciona em mobile
- [ ] Carrega lista de pedidos
- [ ] Pode marcar como entregue
- [ ] Observações salvas
- [ ] Status atualizado em tempo real

**Dependências**: US-5.2

**Labels**: `frontend`, `mobile`, `feature`, `future`

---

## 📅 ROADMAP DE SPRINTS

### Sprint 0: Infraestrutura e Setup (1-2 semanas)
**Objetivo**: Preparar ambiente técnico e estrutura base do projeto.
**Incremento Funcional**: Setup técnico completo, pronto para desenvolvimento.

**User Stories**:
- US-1.1: Configurar Banco de Dados
- US-1.2: Estrutura de Pacotes
- US-1.3: CI/CD com GitHub Actions
- US-1.4: Projeto React + TypeScript
- US-1.5: Documentação de Arquitetura

**Deliverables**:
- ✅ PostgreSQL rodando em Docker
- ✅ Projeto Maven compilando
- ✅ Projeto React inicializando
- ✅ GitHub Actions executando
- ✅ Documentação arquitetural

---

### Sprint 1: MVP Base - Gestão de Clientes, Produtos e Pedidos (2-3 semanas)
**Objetivo**: Implementar funcionalidades básicas de cadastro.
**Incremento Funcional**: Sistema funcional para criar pedidos simples.

**User Stories**:
- US-2.1: Entidade Cliente
- US-2.2: CRUD Cliente (Backend)
- US-2.3: Interface Cliente (Frontend)
- US-3.1: Entidade Produto
- US-3.2: CRUD Produto (Backend)
- US-3.3: Interface Produto (Frontend)
- US-4.1: Entidades Pedido e ItemPedido
- US-4.2: CRUD Pedido (Backend)
- US-4.3: Interface Pedido (Frontend) - Parte 1

**Deliverables**:
- ✅ API de clientes funcional
- ✅ Interface de clientes funcionando
- ✅ API de produtos funcional
- ✅ Interface de produtos funcionando
- ✅ API de pedidos criando pedidos
- ✅ Interface básica de pedidos

---

### Sprint 2: Entregas, Pagamentos e Melhorias (2-3 semanas)
**Objetivo**: Adicionar controle de entregas e pagamentos.
**Incremento Funcional**: Pedidos com rastreamento de entrega e pagamento.

**User Stories**:
- US-3.4: Controle de Estoque
- US-2.4: Busca e Filtros Cliente
- US-4.4: Histórico de Pedidos
- US-5.1: Modelo Entrega
- US-5.2: API Entregas
- US-5.3: Interface Entregas
- US-6.1: Modelo Pagamento
- US-6.2: API Pagamentos
- US-6.3: Interface Pagamentos
- US-8.5: Relatório de Nota para Impressão

**Deliverables**:
- ✅ API de entregas e interface
- ✅ API de pagamentos e interface
- ✅ Nota fiscal impressa funcionando
- ✅ Estoque controlado
- ✅ Histórico de pedidos acessível

---

### Sprint 3: Auditoria, Relatórios e Dashboard (2-3 semanas)
**Objetivo**: Implementar auditoria e fornecer visibilidade através de dashboards.
**Incremento Funcional**: Dashboard operacional e relatórios completos.

**User Stories**:
- US-7.1: Auditoria Global
- US-7.2: APIs Auditoria
- US-7.3: Interface Auditoria
- US-8.1: Dashboard Principal
- US-8.2: API Relatórios
- US-8.3: Exportação PDF/Excel
- US-8.4: Interface Relatórios

**Deliverables**:
- ✅ Dashboard com KPIs principais
- ✅ Relatórios exportáveis
- ✅ Auditoria completa de entidades
- ✅ Histórico de auditoria acessível

---

### Sprint 4+: Extensões e Integrações (Future)
**Objetivo**: Adicionar funcionalidades avançadas.
**Incremento Funcional**: Portal do cliente, app do entregador, integrações.

**Possíveis User Stories**:
- US-9.1: Formulário Web Cliente
- US-9.2: Integração WhatsApp
- US-10.1: App Entregador
- Melhorias de performance
- Segurança adicional
- Mobile app nativo (se necessário)

---

## 🎯 MILESTONES

### MVP v1.0 (Final Sprint 2)
**Data Alvo**: 6-8 semanas
**Objetivo**: MVP funcional e utilizável em produção.

**Requisitos**:
- ✅ Cadastro de clientes
- ✅ Cadastro de produtos
- ✅ Criação de pedidos
- ✅ Controle de entregas
- ✅ Controle de pagamentos
- ✅ Nota de venda impressa
- ✅ Histórico completo
- ✅ Autenticação básica

**Deliverables**:
- Aplicação backend em produção
- Interface web em produção
- Base de dados estruturada
- Documentação de usuário

---

### MVP v1.1 - Melhorias (Final Sprint 3)
**Data Alvo**: 2 semanas após MVP v1.0
**Objetivo**: MVP com relatórios e dashboards.

**Requisitos**:
- ✅ Dashboard principal
- ✅ Relatórios detalhados
- ✅ Auditoria completa
- ✅ Busca e filtros avançados
- ✅ Relatórios exportáveis

---

### MVP v2.0 - Portal do Cliente (Sprint 4+)
**Data Alvo**: 4-6 semanas após MVP v1.1
**Objetivo**: Clientes podem fazer pedidos online.

**Requisitos**:
- ✅ Portal de pedidos para cliente
- ✅ Histórico de pedidos cliente
- ✅ Notificações por WhatsApp

---

### Aplicativo do Entregador (Sprint 4+)
**Data Alvo**: 6-8 semanas após MVP v2.0
**Objetivo**: App para entregador confirmar entregas.

**Requisitos**:
- ✅ Interface mobile de entrega
- ✅ Confirmação em tempo real
- ✅ Histórico de entregas

---

### Módulo Financeiro Avançado
**Data Alvo**: Posterior
**Objetivo**: Relatórios financeiros complexos e integração com contabilidade.

**Requisitos**:
- ✅ Fluxo de caixa
- ✅ Lucro por cliente/produto
- ✅ Integração com software contábil

---

## 🏷️ LABELS SUGERIDAS

### Por Tipo de Trabalho
- `epic` - Épico (grande feature)
- `feature` - Nova funcionalidade
- `bug` - Correção de bug
- `enhancement` - Melhoria
- `refactor` - Refatoração de código
- `documentation` - Documentação
- `testing` - Testes e QA

### Por Camada Técnica
- `backend` - Código Backend Java/Spring
- `frontend` - Código Frontend React/TypeScript
- `api` - Relacionado a API REST
- `database` - Banco de dados, migrations
- `infra` - Infraestrutura, DevOps, Docker
- `github-actions` - Workflows de CI/CD

### Por Domínio de Negócio
- `domain-model` - Definição de entidades/modelos
- `cliente` - Funcionalidade relacionada a clientes
- `produto` - Funcionalidade relacionada a produtos
- `pedido` - Funcionalidade relacionada a pedidos
- `entrega` - Funcionalidade relacionada a entregas
- `pagamento` - Funcionalidade relacionada a pagamentos
- `audit` - Auditoria e rastreabilidade
- `relatorio` - Relatórios e analytics
- `dashboard` - Dashboard e visualizações

### Por Prioridade
- `priority-critical` - Crítico, bloqueia outras tarefas
- `priority-high` - Alto, começar em breve
- `priority-medium` - Médio
- `priority-low` - Baixo, pode ser adiado

### Outros
- `security` - Relacionado a segurança
- `performance` - Otimização de performance
- `external-lib` - Integração com biblioteca externa
- `external-service` - Integração com serviço externo
- `printing` - Funcionalidade de impressão
- `charts` - Gráficos e visualizações
- `mobile` - Funcionalidade mobile
- `search` - Busca e filtros
- `future` - Funcionalidade para futuro
- `ui` - Interface do usuário
- `help-wanted` - Procurando ajuda da comunidade
- `good-first-issue` - Bom primeiro issue para novo desenvolvedor

---

## 🔄 ORDEM LÓGICA DE DESENVOLVIMENTO

### Fase 1: Fundação (Sprint 0)
```
1. US-1.1 (DB Setup)
   ↓
2. US-1.2 (Estrutura Pacotes)
   ↓
3. US-1.4 (React Setup)
   ↓
4. US-1.3 (CI/CD)
   ↓
5. US-1.5 (Documentação)
```

### Fase 2: Modelos Base (Sprint 1 - Semana 1)
```
1. US-2.1 (Entidade Cliente)
   ↓
2. US-3.1 (Entidade Produto)
   ↓
3. US-4.1 (Entidades Pedido)
```

### Fase 3: APIs e CRUD (Sprint 1 - Semana 2)
```
1. US-2.2 (CRUD Cliente Backend)
   ↓
2. US-3.2 (CRUD Produto Backend)
   ↓
3. US-4.2 (CRUD Pedido Backend)
   ↓
4. US-2.3 (Interface Cliente Frontend) - Paralelo com US-2.2
   ↓
5. US-3.3 (Interface Produto Frontend)
   ↓
6. US-4.3 (Interface Pedido Frontend)
```

### Fase 4: Entregas e Pagamentos (Sprint 2 - Semana 1)
```
1. US-5.1 (Modelo Entrega)
   ↓
2. US-6.1 (Modelo Pagamento)
   ↓
3. US-5.2 (API Entrega)
   ↓
4. US-6.2 (API Pagamento)
   ↓
5. US-5.3 (Interface Entrega) - Paralelo
   ↓
6. US-6.3 (Interface Pagamento)
```

### Fase 5: Melhorias e Relatórios (Sprint 2-3)
```
1. US-3.4 (Controle Estoque)
   ↓
2. US-4.4 (Histórico Pedidos)
   ↓
3. US-2.4 (Busca Clientes)
   ↓
4. US-8.5 (Nota Impressa)
   ↓
5. US-7.1 (Auditoria)
   ↓
6. US-8.1 (Dashboard)
   ↓
7. US-8.2 (API Relatórios)
   ↓
8. US-8.3 (Exportação PDF/Excel)
   ↓
9. US-8.4 (Interface Relatórios)
```

---

## 📦 MVP DEFINITION

### MVP v1.0 - Escopo Mínimo Viável

O MVP deve ser **pequeninino, funcional e utilizável** para resolver o problema principal:

**Problema Principal**: Eliminar notas manuscritas e reduzir perda de informações.

**Escopo do MVP**:
1. ✅ Cadastro de clientes
2. ✅ Cadastro de produtos (lista mínima)
3. ✅ Criar pedidos com múltiplos itens
4. ✅ Visualizar pedidos
5. ✅ Gerar nota de venda (PDF para impressão)
6. ✅ Controle simples de pagamento (pago/não pago)
7. ✅ Histórico básico de pedidos
8. ✅ Relatório simples de faturamento

**O que NÃO entra no MVP**:
- ❌ App do entregador
- ❌ Portal do cliente
- ❌ Integrações (WhatsApp, SMS, etc.)
- ❌ Relatórios avançados
- ❌ Dashboard complexo
- ❌ Múltiplos usuários com papéis
- ❌ Segurança avançada

**Timeline MVP**: 6-8 semanas

---

## 🎬 Visão Geral do Projeto

### Roadmap do Produto

```
Sprint 0 (1-2 semanas)
├── Setup Infraestrutura
├── Estrutura Projeto
├── CI/CD
└── Documentação

Sprint 1 (2-3 semanas)
├── Clientes (Backend + Frontend)
├── Produtos (Backend + Frontend)
└── Pedidos (Backend + Frontend)

Sprint 2 (2-3 semanas)
├── Entregas (Backend + Frontend)
├── Pagamentos (Backend + Frontend)
├── Estoque
├── Histórico de Pedidos
└── Nota de Venda

Sprint 3 (2-3 semanas)
├── Auditoria
├── Dashboard
├── Relatórios
└── Exportação PDF/Excel

MVP v1.0 ✅ (após Sprint 3)

Sprint 4+ (Future)
├── Portal do Cliente
├── App Entregador
├── Integrações WhatsApp
└── Melhorias conforme feedback
```

### Roadmap Técnico

```
Backend (Java/Spring)
├── Sprint 0: Setup Maven, DB, CI/CD
├── Sprint 1: Entidades, Repositories, Services, Controllers
├── Sprint 2: Lógica de Negócio Completa
├── Sprint 3: Auditoria, Relatórios
└── Sprint 4+: Integrações Externas

Frontend (React/TypeScript)
├── Sprint 0: Setup, Estrutura
├── Sprint 1: Componentes Base, Formulários
├── Sprint 2: Tabelas, Filtros, Integrações API
├── Sprint 3: Dashboard, Gráficos, Relatórios
└── Sprint 4+: Mobile, PWA

Database
├── Sprint 0: Schema Inicial
├── Sprint 1: Tabelas Domínio Principal
├── Sprint 2: Tabelas Entregas/Pagamentos
├── Sprint 3: Tabelas Auditoria
└── Sprint 4+: Otimizações, Índices
```

### Backlog Priorizado

```
1. CRÍTICO (Sprint 1)
   - US-1.1 ← Blocker
   - US-1.2 ← Blocker
   - US-2.1 ← Blocker
   - US-3.1 ← Blocker
   - US-4.1 ← Blocker
   - US-2.2 ← Blocker
   - US-3.2 ← Blocker
   - US-4.2 ← Blocker
   - US-2.3 ← MVP
   - US-3.3 ← MVP
   - US-4.3 ← MVP

2. ALTO (Sprint 2)
   - US-1.3 ← CI/CD
   - US-1.4 ← Frontend
   - US-5.1, US-5.2, US-5.3 ← Rastreamento
   - US-6.1, US-6.2, US-6.3 ← Financeiro
   - US-8.5 ← Nota Impressa
   - US-3.4 ← Estoque

3. MÉDIO (Sprint 3)
   - US-7.1, US-7.2, US-7.3 ← Auditoria
   - US-8.1, US-8.2, US-8.3, US-8.4 ← Relatórios
   - US-4.4 ← Histórico
   - US-2.4 ← Busca

4. BAIXO (Sprint 4+)
   - US-9.1, US-9.2 ← Futuro
   - US-10.1 ← Futuro
```

---

## ✅ Checklist Final

- ✅ 10 Épicos definidos
- ✅ 40+ User Stories com detalhes completos
- ✅ Critérios de Aceite claros
- ✅ Story Points estimados
- ✅ Dependências mapeadas
- ✅ 4 Sprints planejadas
- ✅ 4+ Milestones definidos
- ✅ Labels sugeridas
- ✅ Ordem de desenvolvimento lógica
- ✅ MVP pequeno e funcional definido
- ✅ Roadmap de produto e técnico claros

---

**Este documento é suficiente para criar automaticamente todas as Issues do GitHub Projects.**

**Próximo passo**: Executar script de criação automática de Issues/Épicos no GitHub Projects.
