# Notes

Este projeto é uma continuação do projeto [ApiNotes](https://github.com/gfLobo/ApiNotes), adicionando uma interface front-end. A aplicação é construída usando Java e Maven.

## Arquitetura e Design

A arquitetura do projeto segue os princípios de SOLID e Design Orientado ao Domínio (DDD).

### Princípios SOLID

Os princípios SOLID são um conjunto de princípios de design de software que promovem a legibilidade do código, escalabilidade e manutenibilidade. Eles incluem:

- **Princípio da Responsabilidade Única (SRP)**: Uma classe deve ter apenas um motivo para mudar. Cada classe neste projeto tem uma única responsabilidade, tornando o código mais fácil de gerenciar e entender.

- **Princípio Aberto-Fechado (OCP)**: Entidades de software devem estar abertas para extensão, mas fechadas para modificação. A aplicação é projetada para permitir que novas funcionalidades sejam adicionadas com alterações mínimas no código existente.

- **Princípio da Substituição de Liskov (LSP)**: Subtipos devem ser substituíveis por seus tipos base. A aplicação mantém este princípio, garantindo que as subclasses possam substituir suas classes base sem afetar a correção do programa.

- **Princípio da Segregação da Interface (ISP)**: Os clientes não devem ser forçados a depender de interfaces que não usam. A aplicação usa interfaces para garantir que as classes não tenham dependências não utilizadas.

- **Princípio da Inversão de Dependência (DIP)**: Módulos de alto nível não devem depender de módulos de baixo nível. Ambos devem depender de abstrações. A aplicação segue este princípio, reduzindo a dependência nos detalhes de implementação e tornando o código mais flexível e adaptável às mudanças.

### Design Orientado ao Domínio (DDD)

Design Orientado ao Domínio é uma abordagem para o desenvolvimento de software que centraliza o projeto no domínio central e na lógica do domínio, baseando designs complexos em um modelo do domínio. A aplicação segue os princípios do DDD, focando no domínio central e em sua lógica, e usando um design baseado em modelo.

## Tecnologias Utilizadas

### Jakarta EE

Jakarta EE (anteriormente Java EE) é uma plataforma de desenvolvimento que fornece um conjunto de especificações para desenvolvimento de aplicações empresariais. Ela inclui várias tecnologias como Servlets, JSP, JSF, JPA, entre outras. No projeto, Jakarta EE é usado para definir a estrutura da aplicação web, como visto no arquivo `web.xml`.

### JSP

JSP (JavaServer Pages) é uma tecnologia usada para desenvolver páginas web dinâmicas. Ela permite que os desenvolvedores embutam código Java diretamente no HTML, permitindo a geração dinâmica de conteúdo. No projeto, JSP é usado para criar a interface do usuário, como visto no arquivo `index.jsp`.

### Servlets

Servlets são componentes Java que estendem as capacidades dos servidores que hospedam aplicações. Eles são usados para lidar com solicitações HTTP, gerar respostas e controlar o fluxo de negócios da aplicação. No projeto, Servlets são usados para lidar com operações de autenticação, como visto nos arquivos `LoginServlet.java` e `SignUpServlet.java`.