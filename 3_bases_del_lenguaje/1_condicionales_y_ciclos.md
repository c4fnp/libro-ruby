# 3.1 - Condicionales y ciclos

## If - Else - Elif

```(ruby)
algo = 5
if algo.is_a? String
  puts "Es un String"
elif algo.is_a? Number
 puts "Es un número"
else
  puts "No es un string"
end

# o en una sola linea
algo = "ahora si"
puts "Es un string" if algo.is_a? String
```

## Ciclos

```(ruby)
# While
x = 1
while x < 5 do
  puts "x es #{x}"
  x += 1
end

# Loop
x = 1
loop do
  puts "x es #{x}"
  x += 1
  break if x >= 5
end

# For
for i in 1..x do
  puts i
end

# Otro for
x = [1, 2, 3, 4, 5]

for i in x do
  puts i
end

# Usando Arrays, Ranges y bloques

(1..3).each { |x| puts x }
["x", "y", "z"].each { |x| puts x }
("a".."h").each { |x| puts x }
4.times { |x| puts "#{x}" }
```

Puedes encontrar más ejemplos en
[LaunchSchool](https://launchschool.com/books/ruby/read/loops_iterators)
