# Arquitetura do backend

## Decisão

O backend será inicialmente um **monólito modular**, organizado principalmente por
funcionalidade (*package-by-feature*) e, dentro de cada funcionalidade, por
responsabilidade (*package-by-layer*).

Essa combinação mantém o código relacionado a uma capacidade de negócio no mesmo
local, reduz o acoplamento entre módulos e continua simples para uma equipe pequena.
Não serão adotados, neste momento, microserviços, Clean Architecture, Arquitetura
Hexagonal ou DDD completo. O custo operacional e a quantidade de abstrações dessas
abordagens não se justificam para o estágio atual do produto.

O package base é `br.com.granja.api`. Os módulos usam termos do domínio em português
e os packages técnicos mantêm os nomes convencionais do ecossistema Java em inglês.

## Estrutura planejada

Os packages abaixo são uma referência para evolução, não uma exigência de que todos
existam desde o início:

```text
br.com.granja.api
├── GranjaApiApplication.java
├── config/                 # configurações técnicas globais do Spring
├── shared/                 # código realmente compartilhado entre funcionalidades
├── cliente/
│   ├── controller/         # endpoints HTTP e adaptação de entrada/saída
│   ├── dto/                # contratos da API da funcionalidade
│   ├── service/            # casos de uso e coordenação das regras
│   ├── entity/             # modelo persistido com JPA
│   ├── repository/         # acesso aos dados da funcionalidade
│   └── mapper/             # conversões não triviais entre DTOs e entidades
├── produto/                # mesma organização, apenas conforme a necessidade
├── pedido/
├── entrega/
├── pagamento/
└── relatorio/
```

Os packages principais são materializados por `package-info.java`, que registra sua
responsabilidade sem introduzir classes artificiais. Subpackages como `controller`,
`dto` e `mapper` só serão criados quando houver componentes reais que os utilizem.

## Responsabilidades e dependências

- `controller`: valida o contrato HTTP, chama um serviço e devolve a resposta; não
  contém regra de negócio nem acessa repositórios diretamente.
- `service`: implementa casos de uso, coordena transações e aplica regras de negócio.
- `repository`: encapsula persistência e consultas; não contém regra de negócio.
- `entity`: representa o estado persistido. Entidades não devem ser expostas como
  contrato HTTP quando isso acoplar a API ao banco.
- `dto`: contém objetos de entrada e saída necessários ao contrato REST.
- `mapper`: concentra conversões quando elas deixarem de ser simples; não deve ser
  criado por padrão.
- `config`: contém somente configuração transversal da aplicação.
- `shared`: recebe apenas conceitos técnicos ou de domínio comprovadamente usados
  por mais de uma funcionalidade; não é um pacote genérico para conveniência.

Uma funcionalidade não deve acessar diretamente o repositório ou a entidade interna
de outra. Quando surgir comunicação entre funcionalidades, ela deve ocorrer por um
serviço público e pequeno da funcionalidade responsável. Interfaces, classes base e
abstrações só serão introduzidas quando houver substituição, múltiplas implementações
ou benefício de teste concreto.

## Regras para novos componentes

1. Criar o código dentro do package da funcionalidade a que ele pertence.
2. Criar apenas as camadas necessárias para a história em implementação.
3. Manter controllers finos e transações delimitadas na camada de serviço.
4. Escrever packages em minúsculas, usar classes no singular e manter termos do
   domínio em português.
5. Nomear componentes com sufixos que expressem sua responsabilidade, como
   `ClienteController`, `ClienteService`, `ClienteRepository`, `ClienteRequest` e
   `ClienteResponse`.
6. Não acessar repositories diretamente a partir de controllers e não expor
   entidades JPA como contratos HTTP quando isso acoplar a API ao banco.
7. Não criar interfaces para services por padrão; uma interface precisa atender a
   múltiplas implementações, uma fronteira real ou uma necessidade concreta de teste.
8. Criar mappers somente para conversões não triviais e evitar packages genéricos
   como `util`, `common`, `helper` ou `helpers`.
9. Versionar alterações de schema com Flyway quando ele for configurado; não usar a
   geração automática do Hibernate como estratégia de evolução de produção.
10. Espelhar em `src/test/java` a estrutura do código testado, priorizando testes de
   unidade para regras e testes de integração para persistência e endpoints.

## Alternativas consideradas

- **Package-by-layer global** (`controller`, `service`, `repository`): simples no
  começo, mas espalha cada funcionalidade por toda a árvore e tende a piorar a
  navegação conforme o sistema cresce.
- **Package-by-feature sem divisão interna**: adequado para módulos muito pequenos,
  porém perde clareza quando uma funcionalidade acumula API, persistência e regras.
- **Microserviços**: não são recomendados agora. O domínio, os limites dos módulos e
  a carga operacional ainda precisam amadurecer; serviços separados adicionariam
  deploy, observabilidade, comunicação distribuída e consistência de dados sem um
  benefício atual demonstrado.

## Decisões a revisar

- Configurar Flyway antes das primeiras tabelas e substituir `ddl-auto=update` por
  uma política segura, normalmente `validate`, nos ambientes persistentes.
- Definir quando DTOs próprios são obrigatórios e quando mapeamento manual deixa de
  ser suficiente, com base na complexidade real da API.
- Reavaliar limites entre funcionalidades quando aparecerem dependências cíclicas ou
  regras compartilhadas frequentes.
- Considerar extração de um módulo ou serviço somente quando houver necessidade
  mensurável de escala, autonomia de deploy, isolamento de dados ou equipe dedicada.
