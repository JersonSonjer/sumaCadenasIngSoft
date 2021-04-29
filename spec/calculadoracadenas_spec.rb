RSpec.describe "Calculadora De Cadenas" do
    it "Deberia devolver el numero 3 para la cadena 3" do
        expect(calcularCadena("3")).to eq(3)
    end

    it "Deberia devolver el numero 5 para la cadena 5" do
        expect(calcularCadena("5")).to eq(5)
    end

    it "Deberia devolver el numero 6 para la cadena 5 y 1" do
        expect(calcularCadena("5,1")).to eq(6)
    end

    it "Deberia devolver el numero 15 para la cadena 1, 2,4 y 8" do
        expect(calcularCadena("1,2,4,8")).to eq(15)
    end

    #it "Deberia devolver el numero 2 para la cadena 2, 1000" do
    #    expect(calcularCadena("2,1000")).to eq(2)
    #end

    it "Deberia devolver el numero 6 para la cadena 1\n2,3" do
        expect(calcularCadena("1 \n2 ,3")).to eq(6)
    end
end


def calcularCadena(cad)
    num=cad.split(/,*\n*/)
    num.delete_if{|e| e.length == 0}#para eliminar espacios vacios
    suma=0
    num.each do|num|
        if(num.to_i <1000)
            suma = suma+num.to_i
        else    
            suma=num.to_i
        end
    end
    return suma
end