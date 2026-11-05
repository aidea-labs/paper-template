# Search the project templates before the standard TeX directories.
$ENV{'TEXINPUTS'} = './templates:' . ($ENV{'TEXINPUTS'} // '');
