# try:
#    idade = int(input("Por favor, insira a idade do aluno: "))
# except ValueError:
#    print("Você não inseriu uma idade válida. Por favor, insira um número inteiro.")
# else:
#    print("A idade do aluno é:", idade)
# finally:
#    print("Obrigado por usar nosso programa!")

# The else statement is not needed. The exception will be raised whenever there is a 'ValueError Exception'. Therefore, if python can't convert the charachter to int it will stop the execution inside try and go to except!  ->
try:
   idade = int(input("Por favor, insira a idade do aluno: "))
   print("A idade do aluno é:", idade)
except ValueError:
   print("Você não inseriu uma idade válida. Por favor, insira um número inteiro.")
finally:
   print("Obrigado por usar nosso programa!")


# Raise exception ->
# try:
#    idade = int(input("Insira sua idade: "))
#    if idade < 0:
#       raise ValueError("Idade não pode ser menor que 0")
# except ValueError as error:
#    print("Erro:", error)