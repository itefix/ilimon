package Ilimon::Log;
use Exporter;
@ISA = qw(Exporter);
@EXPORT = qw(LogWrite);

use strict;
use warnings;

use FindBin qw($Bin);
use lib "$Bin";

use Ilimon::Log::File;


# level, message

sub LogWrite
{	
	Ilimon::Log::File::LogWrite(@_)
}

1;