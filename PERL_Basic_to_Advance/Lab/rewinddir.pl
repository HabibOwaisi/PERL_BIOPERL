#!/usr/bin/perl -w

# Open the current directory
opendir(DIR, ".");

# Print all of the directory entries.
print("1st Time: \n");
map( print("$_ \n") , readdir(DIR));
print("\n");

# Print message verifying that there are
# no more directory entries to read.
print("The last file has already been read!\n\n")
 unless readdir(DIR);
 rewinddir(DIR); # Go back to the beginning.

# Print all of the directory entries again.
print("2nd Time: \n");
map( print("$_ \n") , readdir(DIR));
print("\n");

closedir(DIR);