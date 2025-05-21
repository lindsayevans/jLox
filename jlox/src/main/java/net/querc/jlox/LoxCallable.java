package net.querc.jlox;

import java.util.List;

interface LoxCallable {
    int arity();

    public boolean variadic();

    Object call(Interpreter interpreter, List<Object> arguments);
}