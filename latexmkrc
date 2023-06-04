# https://sdoerner.de/2022/05/31/tikz-image-externalization-with-overleaf/
$pdflatex = 'pdflatex -shell-escape';

# Custom dependency and function for nomencl package
# https://tex.stackexchange.com/a/105978
add_cus_dep( 'nlo', 'nls', 0, 'makenlo2nls' );
sub makenlo2nls {
system( "makeindex -s nomencl.ist -o \"$_[0].nls\" \"$_[0].nlo\"" );
}
