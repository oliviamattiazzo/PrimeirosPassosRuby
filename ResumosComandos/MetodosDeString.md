# Métodos de String - Cheatsheet

1. `.length`
2. `.reverse`
3. `.upcase`
4. `.downcase`
5. `.capitalize`
6. `.include?`
    ```ruby
    if my_string.include? "s"
        #do something
    end
    ```
7. `.gsub()`
    * **G**lobal **Sub**stitution
    * **Parâmetros:**
        1. Regex
        2. O que vai substituir os valores apanhados pelo regex
    ```ruby
    user_input.gsub!(/s/, "th")
    ```
8. `.split()`
    * **Retorno:** array