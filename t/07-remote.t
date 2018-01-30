use Test;
use File::Temp;
use LibGit2;

ok my $repo = Git::Repository.open-ext($*PROGRAM.Str), 'open';

my $remote = $repo.remote-lookup('origin');

is $remote.name, 'origin', 'name';

like $remote.url, /libgit2/, 'url';