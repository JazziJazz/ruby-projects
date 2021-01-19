pretty_print = -> (arguments) {
    return print("#{'~' * (arguments.length + 4)}\n#{arguments.center(arguments.length + 4)}\n#{'~' * (arguments.length + 4)}\n")
}

def pretty_print(arguments)
    print("#{'~' * (arguments.length + 4)}\n#{arguments.center(arguments.length + 4)}\n#{'~' * (arguments.length + 4)}\n")
end

pretty_print.call("Aprendendo a Syntax de Ruby! Projeto Ruby 2021!")
pretty_print("Projeto rubão 2021! Saradão de Ruby!")
