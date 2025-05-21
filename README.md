# jLox

https://craftinginterpreters.com/

```sh
mvn archetype:generate -DgroupId=net.querc.jlox -DartifactId=jlox -DarchetypeArtifactId=maven-archetype-quickstart -DarchetypeVersion=1.5 -DinteractiveMode=false
```

## Build & run

```sh
cd jlox
mvn package
# REPL:
./jlox
# Script file:
./jlox example.lox
```

### Generate AST

```sh
./generate_ast ./src/main/java/net/querc/jlox
```

## Debug

TODO

# clox

```
cd clox
make
./bin/clox
```
