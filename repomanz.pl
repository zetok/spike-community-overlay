### add most repoman fuctions into a shell that should take care of the repo.
#### since I am new @ repoman I figgured best to script many of the use cases.... 
## and a few extra uses for those more stuborn ebuilds.... 
## now if I could only make a Meta gen recursive script... 
use File::Find qw(find);
my $dir     = '.';
my $pattern = 'foo';
find sub {print $File::Find::name if /$pattern/}, $dir;
repoman manifest
repoman full
repoman commit
repoman -m "Version bump" commit
