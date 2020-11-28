class CuentaBancaria
    attr_accessor :nombre_de_usuario, :numero_de_cuenta, :vip

    def initialize(nombre_de_usuario, numero_de_cuenta, vip = 0)
        raise ArgumentError, "El número de cuenta debe tener 8 dígitos" if numero_de_cuenta.digits.count != 8
        raise ArgumentError, "El digito VIP debe ser 0 o 1" if vip != 0 && vip != 1
        @nombre_de_usuario = nombre_de_usuario
        @numero_de_cuenta = numero_de_cuenta
        @vip = vip
    end

end

def numero_de_cuenta(cuenta)
    if cuenta.vip == 0
        prefijo = "0-"
    else
        prefijo = "1-"
    end
    prefijo + cuenta.numero_de_cuenta.to_s
end

cuenta1 = CuentaBancaria.new('Fernando', 55648957, 1)
cuenta2 = CuentaBancaria.new('Ignacio', 67850432)
# cuenta3 = CuentaBancaria.new('Sixto', 65897411, 2) #No funcionaría con esto porque el dígito de VIP no es 1 ni 0

puts cuenta1.nombre_de_usuario
puts numero_de_cuenta(cuenta1)

puts cuenta2.nombre_de_usuario
puts numero_de_cuenta(cuenta2)

#puts cuenta3.nombre_de_usuario
#puts numero_de_cuenta(cuenta3)

