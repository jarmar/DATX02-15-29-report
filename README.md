# DATX02-15-29-report
Final report for the Haskerl bachelors thesis

## Things to do this afternoon
### Björns comments
 - glossary entry for type system to detailed
 - glossary entry for type varaible self explanatory? like dependency graph
 - 2.3: and are thus unambiguous -> and are unambiguous ? 
 
## Build instructions
TODO: work in progress

Run

1. `pdflatex Main.tex` to generate glossary files.
2. `makeglossaries Main` to create glossary.
3. `pdflatex Main.tex` again to complete the document.

## Alternative build with latexmk (should be included in your latex installation)
Create a .latexmkrc in your home directory containing

    add_cus_dep('glo', 'gls', 0, 'run_makeglossaries');
    add_cus_dep('acn', 'acr', 0, 'run_makeglossaries');

    sub run_makeglossaries {
      if ( $silent ) {
        system "makeglossaries -q '$_[0]'";
      }
      else {
        system "makeglossaries '$_[0]'";
      };
    }

    push @generated_exts, 'glo', 'gls', 'glg';
    push @generated_exts, 'acn', 'acr', 'alg';
    $clean_ext .= ' %R.ist %R.xdy';

Run `latexmk -g -f -pdf -silent Main.tex` to generate pdf
or  `latexmk -C` to clean out files

Copyright © 2015 DATX02-15 Group 29
