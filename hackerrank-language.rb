LANGS = %w(C CPP JAVA PYTHON PERL PHP RUBY CSHARP HASKELL CLOJURE BASH SCALA ERLANG CLISP LUA BRAINFUCK JAVASCRIPT GO D OCAML R PASCAL SBCL DART GROOVY OBJECTIVEC).sort{|a, b| b.size <=> a.size}

length = gets.chomp.to_i

tests = []
1.upto(length) do
  line = gets.chomp
  found = LANGS.detect do |lang|
    line.match(/\b#{lang}\b/)
  end
  puts found ? "VALID" : "INVALID"
end