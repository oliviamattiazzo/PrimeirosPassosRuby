# Primeiros Comandos e Controle de Fluxo
Este resumo corresponde à Aula 01 e 02 do [Codecademy](https://www.codecademy.com/learn/learn-ruby).

## Aula 01 - Introdução ao Ruby
* **Ruby on Rails** = web framework popular

### Ruby é...
* High level
* Interpretada
* Orientada a objeto 🠒 **tudo** em Ruby é um objeto
* Fácil de usar

**Observação:** Ruby é *case sensitive* e não tem ponto-e-vírgula ( ; )

### Tipos de dados
* Numérico
* Boolean
* String

**Observação:** a tipagem de uma variável em Ruby se dá a partir do valor
```ruby
my_num = 25
my_bool = false
my_string = "String"
```

### Matemática
A única operação mais "diferente" que existe no Ruby é o exponencial. O resto é bem parecido com o C#.
```ruby
my_exp = 3 ** 2
```

### Imprimir resultados na tela
* `print` 🠒 somente imprime o conteúdo
* `puts` 🠒 imprime o conteúdo e pula linha

### Comentários
* `#` 🠒 comentário de uma única linha
* `=begin` | `=end` 🠒 comentário multi-linha

### Convenções de nomes
* **Variáveis locais:** 1ª letra minúscula e palavras separadas por underline

### Ler input do usuário
```ruby
first_name = gets.chomp
```

### Interpolação de string
```ruby
puts "Valor da variável = #{variavel}"
```

### ! 🠒 Muda o valor de uma variável
* **Exemplo:** `answer.capitalize!`
* Caso o `!` não tivesse sido adicionado, o Ruby teria criado uma cópia desse objeto e aplicado o `.capitalize` nessa cópia
* **"Conclusão":** o `!` funciona como um `this` do C# ou do Javascript

### Converter string para numérico
```ruby
user_num = Integer(gets.chomp)
```

## Aula 02 - Controle de Fluxo
```ruby
if condicao
    # bloco de instruções
elsif condicao2
    # segundo bloco de instruções
else
    # terceiro bloco de instruções
end
```

**Observações:** 
* a identação dos comandos dentro de um `if` é uma convenção mas não é necessária no Ruby.
* condições no Ruby utilizam `==`, como no C#

### Para testar uma condição falsa, utilizamos o *unless*
```ruby
unless condicao
    # bloco de instruções
else
    # segundo bloco de instruções
end
```

**Observações:**
* *Unless* pode ser usado depois de um comando:
    ```ruby
    print "Bora lá" unless problem
    # problem é uma variável boolean OU uma condição
    ```
* Os operadores de comparação são iguais ao C#: `= , !=, <, <=, >, >=`
* Operadores lógicos também são iguais ao C#:
`&&, ||, !`

### Método .include?
* Métodos do Ruby que terminam em `?` geralmente retornam `true` ou `false`