program numerosRomanos;

var
    numeroIngresado: string;
    cantidad, error, i: integer;

procedure imprimirLetrasRepetidas(letra: char; veces: integer);
    var
        j: integer;
    begin
        for j := 1 to veces do
            write(letra);
    end;

begin
    writeln('ingrese un numero:');
    readln(numeroIngresado);

    if length(numeroIngresado) = 4 then
        begin
            val(numeroIngresado[1], cantidad, error);
            imprimirLetrasRepetidas('M', cantidad);
            delete(numeroIngresado, 1, 1);
        end;
        
    if length(numeroIngresado) >= 3 then
        begin
            val(numeroIngresado[1], cantidad, error);
            case cantidad of
                1..3: imprimirLetrasRepetidas('C', cantidad);
                4: write('CD');
                5: write('D');
                6..8: begin write('D'); imprimirLetrasRepetidas('C', cantidad - 5); end;
                9: write('CM');
            end;
            delete(numeroIngresado, 1, 1);
        end;
    
    if length(numeroIngresado) >= 2 then
        begin
            val(numeroIngresado[1], cantidad, error);
            case cantidad of
                1..3: imprimirLetrasRepetidas('X', cantidad);
                4: write('XL');
                5: write('L');
                6..8: begin write('L'); imprimirLetrasRepetidas('X', cantidad - 5); end;
                9: write('XC');
            end;
            delete(numeroIngresado, 1, 1);
        end;
    
    if length(numeroIngresado) >= 1 then
        begin
            val(numeroIngresado[1], cantidad, error);
            case cantidad of
                1..3: imprimirLetrasRepetidas('I', cantidad);
                4: write('IV');
                5: write('V');
                6..8: begin write('V'); imprimirLetrasRepetidas('I', cantidad - 5); end;
                9: write('IX');
            end;
        end;
    
end.