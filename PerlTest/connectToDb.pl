#!/usr/bin/perl

use 5.010;
use strict;
use warnings;
use DBI;


my $host = "DESKTOP-CSEFKH1";
my $database = "PerlTestDB";
my $user = "mary";
my $auth = "lamb";

my $dbh = DBI->connect("dbi:ODBC:Driver={SQL Server};Server=$host;database=$database;UID=$user;PWD=$auth");
print "Connected!\n";


my $query = $dbh->prepare("Insert into Category (CategoryName) Values('veggies')");
$query->execute();
print "Inserted!\n";


$query = $dbh->prepare("Select * from Category");
$query->execute();

while (my @row = $query->fetchrow_array ){
	print "@row\n";
}

print "DONE!\n";