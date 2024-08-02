def division_por_cero(func):
    def wrapper(*args):
        try:
            resultado = func(*args)
            return resultado
        except ZeroDivisionError:
            return "No se puede dividir por cero"
    return wrapper

@division_por_cero
def division_secuencial(*args):
    if len(args) < 2:
        raise ValueError("Se requieren al menos 2 argumentos numéricos")
    resultado = args[0]
    for num in args[1:]:
        resultado /= num
    return resultado

