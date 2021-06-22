import random
import time

decisao='SIM'
somaj=0
print('GAME BLACKJACK (OU 21)')
handj=[]
quant=2

print('TURNO DO JOGADOR')   
#TURNO DO JOGADOR
while decisao=='SIM' or decisao=='S':
    
    for i in range(0,quant):
        jogada=random.randint(1,10)
        handj.append(jogada)
        somaj=somaj+jogada

    if somaj>21:
        print('ESTOROU A PONTUAÇÃO!')
        print('Essa são suas cartas',handj)
        print('Somatório dos pontos=',somaj)
        decisao='NÃO'

    else:
        print('')
        print('Essa são suas cartas',handj)
        print('Somatório dos pontos=',somaj)
        decisao=input('Deseja pedir mais uma carta?(s ou n)')
        decisao=decisao.upper()
        print('')
        quant=1

#TURNO DA BANCA(PC)
print('')
print('TURNO DA BANCA')
quant=2
handb=[]
somab=0
decisao='SIM'

while decisao=='SIM' or decisao=='S':

    for i in range(0,quant):
        jogada=random.randint(1,10)
        handb.append(jogada)
        somab=somab+jogada
 
    if somab>=18:
        decisao='NÃO'
        print('')
        print('Essa são as cartas da banca',handb)
        print('Somatório dos pontos=',somab)
        print('A banca não quer mais cartas...')
        print('')
        

    else:
        print('')
        print('Essa são as cartas da banca',handb)
        print('Somatório dos pontos=',somab)
        print('')
        print('A banca pede mais uma carta...')
        time.sleep(3)
        quant=1

if somab>21 and somaj>21:
    print('AMBOS ESTOURARAM!')

elif somab==somaj:
    print('EMPATE!')

elif (somab>somaj and somab<=21) or somaj>21:
    print('A BANCA VENCEU!')

elif (somaj>somab and somaj<=21) or somab>21:
    print('O JOGADOR VENCEU!')