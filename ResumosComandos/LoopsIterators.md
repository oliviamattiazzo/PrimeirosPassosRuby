# Loops & Iterators
Este resumo corresponde à Aula 03 do [Codecademy](https://www.codecademy.com/learn/learn-ruby).

## While
```ruby
while condicao
    # bloco de instruções
end
```

## Until
```ruby
until condicao
    # bloco de instruções
end
```
**Observação:** lógica parecida com o `do-while` do C#

### Atenção!
Ruby não tem os operadores incrementais `++` e `--`. Para isso, utilizar os seguintes: `+=, -=, *=, /=`

## For
```ruby
for num in 1..10
    # bloco de instruções
end
```
**Observação:** lógica parecida com o `foreach` do C#

### Atenção! 🠒 Ranges
* **1..15** 🠒 range inclusivo: vai de 1 a 15
* **1...15** 🠒 range exclusivo: vai de 1 a 14

## Iterators
Métodos do Ruby que invoca repetidamente um determinado bloco de código.

### Iterator mais simples: *loop*
```ruby
loop { print "Hello World!" }

loop do 
    # bloco de instruções
end
```

#### **Atenção!**
* No Ruby, os símbolos `{ }` geralmente podem ser trocados pelas palavras `do` e `end`

### Keyword: *next*
* Faz um skip em valores que atendam determinada condição
```ruby
next if i % 2 == 0
```

### Array
```
my_array = [ ]
```

### .each
* Para arrays
* Similar ao .ForEach() do LINQ
```ruby
array.each { |x|
    print "#{x}"
}
```

### .times
* É um `for` compacto
```ruby
10.times { print "Hello World" }
```

### Concatenação de string
```ruby
word = "string"
print word + " "
```