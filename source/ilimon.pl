#!/usr/bin/perl

use strict;
use warnings;

use FindBin qw($Bin);
use lib "$Bin";

use Ilimon::Log;
use Ilimon::Control::Configuration;

ConfigurationOpen("$Bin/ilimon.config");

Ilimon::Control::Configuration::ConfigurationDump();