package Ilimon::Control::Configuration;
use Exporter;
@ISA = qw(Exporter);
@EXPORT = qw(ConfigurationOpen ConfigurationSave ConfigurationClose);

use strict;
use warnings;

use FindBin qw($Bin);
use lib "$Bin";

use Ilimon::Control::Configuration::XMLFile;

# configuration file path as parameter
sub ConfigurationOpen
{
	Ilimon::Control::Configuration::XMLFile::ConfigurationOpen(@_);			
}

sub ConfigurationSave
{
	Ilimon::Control::Configuration::XMLFile::ConfigurationSave(@_);
}

sub ConfigurationClose
{
	Ilimon::Control::Configuration::XMLFile::ConfigurationSave(@_);
}

sub ConfigurationDump
{
	Ilimon::Control::Configuration::XMLFile::ConfigurationDump(@_);
}
1;