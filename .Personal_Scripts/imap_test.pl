#!/usr/bin/perl
use strict;
use warnings;

use Mail::IMAPClient;
use Term::ReadKey;

print "Enter your username: ";

my $username = ReadLine(0);
ReadMode('noecho');

print "Enter your password: ";
my $password = ReadLine(0);
ReadMode('restore');
my $imap = Mail::IMAPClient->new;

my $host = "outlook.office365.com";

$imap = Mail::IMAPClient->new(
    Server => $host,
    Port => 993,
    Ssl=> 1,
    Authmechanism =>"PLAIN",
    User => "cbasile\@zixcorp.com",
    Password => "Ilike31people",
    Clear => 5 ) or die "Can't connect to $host as $username";

print $imap->folders;
    
