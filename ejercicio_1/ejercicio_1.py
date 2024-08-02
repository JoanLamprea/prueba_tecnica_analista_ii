def suma_diferencia_3(numero):
    if numero <= 0:
        return 0
    else:
        return numero + suma_diferencia_3(numero - 3)