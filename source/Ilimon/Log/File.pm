package Ilimon::Log::File;

use strict;
use warnings;

use FindBin qw($Bin);
use lib "$Bin";

our $lf = undef;
our $log_file = "$Bin/ilimon.log";

# level, message

sub LogWrite
{
	my ($log_level, $log_message) = @_;
	
	if (not defined($lf))
	{
		open ($lf, ">>", $log_file);
	}
		
	my $message = localtime() . " " .  $log_level . ": " . $log_message;
	
	say $lf $message;

	exit(1) if $log_level eq "error";
}

1;