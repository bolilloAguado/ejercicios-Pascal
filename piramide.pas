program piramide;
    var
        misNumeros: array[1..10] of Integer = (1,2,3,4,5,6,7,8,9,0);
        posicion, cantidadNumeros, cantidadEspacios: Integer;
        i, n, indice: Integer;
begin
    posicion := 1;
    cantidadNumeros := 1;
    cantidadEspacios := 10;
    
    for i := 1 to 10 do
        begin
            write(StringOfChar(' ', cantidadEspacios));
            
            for n := 0 to cantidadNumeros - posicion do
                begin
                    indice := ((posicion - 1 + n) mod 10) + 1;
                    write(misNumeros[indice]);
                end;
                
            if i > 1 then
                begin
                    for n := cantidadNumeros - posicion - 1 downto 0 do
                        begin
                            indice := ((posicion - 1 + n) mod 10) + 1;
                            write(misNumeros[indice]);
                        end;
                end;
                
            writeln;
            
            posicion := posicion + 1;
            cantidadNumeros := cantidadNumeros + 2;
            cantidadEspacios := cantidadEspacios - 1;
        end;
end.