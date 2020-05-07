package Ilimon::Control::Configuration::XMLFile;

use strict;
use warnings;

use XML::Simple qw(:strict);
use Data::Dumper;
use FindBin qw($Bin);

use lib "$Bin";

use Ilimon::Log;

our $config = undef;

# configuration file path as parameter
sub ConfigurationOpen
{
	my $conf_file = shift;
	
	$config = XMLin($conf_file, ForceArray => 1, KeyAttr => {'node' => 'name', 'environment' => 'name'}) or
		LogWrite("error", "Can't get configuration from $conf_file")		
}

sub ConfigurationSave
{
	my $conf_file = shift;
	
	if (defined($config))
	{
		open my $fh, '>', $conf_file or 
			LogWrite("error", "Opening configuration file $conf_file, $!");

		XMLout($config, OutputFile => $fh) or
			LogWrite("error", "XML output, $!");
		
		close $fh;		
		
	} else {
		LogWrite("error", "No configuration to save.");
	}
}

sub ConfigurationClose
{
	ConfigurationSave();
}

sub ConfigurationDump
{
	LogWrite("info", Dumper($config));
} 


1;