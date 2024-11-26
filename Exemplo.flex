%%

%standalone
%unicode
%public

Keyword = (if|else|while|return|for|int|float|boolean|char|void)
Identificador = [a-zA-Z_][a-zA-Z0-9_]* 
NumeroInteiro = [0-9]+
NumeroFloat = [0-9]*"."[0-9]+
Operador = (\+|\-|\*|\/|\=\=|\!\=|\<|\>|\+\+|\-\-|\=)
Delimitador = (\;|\{|\}|\(|\)|\,|\.)
ComentarioLinha = "//[^\n]*"
ComentarioBloco = "/\\*([^\*]|(\*+[^\/]))*\\*+/"


%%

{Keyword} {
    return new java_cup.runtime.Symbol(sym.Keyword, yytext());
}

{Identificador} {
    return new java_cup.runtime.Symbol(sym.Identificador, yytext());
}

{NumeroInteiro} {
    return new java_cup.runtime.Symbol(sym.NumeroInteiro, yytext());
}

{NumeroFloat} {
    return new java_cup.runtime.Symbol(sym.NumeroFloat, yytext());
}

{Operador} {
    return new java_cup.runtime.Symbol(sym.Operador, yytext());
}

{Delimitador} {
    return new java_cup.runtime.Symbol(sym.Delimitador, yytext());
}

{ComentarioLinha} {
    // Ignora o comentário de linha
}

{ComentarioBloco} {
    // Ignora o comentário de bloco
}

.|\n { /* Ignora qualquer outro caractere */ }

%%
