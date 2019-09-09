This directory tree contains variables when running on AWS. You probably wouldn't typically run both kops and EKS clusters but this tree demonstrate how Sugarkube is flexible enough to allow you to do so while minimising duplication. An alternative approach to having configs for both cluster types would be to create separate directories called `kops` and `eks` and keep settings for each cluster type under those directories.

Settings could also be organised by cluster name, region, profile, etc. There are lots of possible ways to organise these variables depending on your preferences.
