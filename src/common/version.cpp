#include "version.h"

const char* version::GetGitSha()
{
    return "fd959fec12cee6564d0a7dc57c257d33f73ff415";
}

const char* version::GetGitBranch()
{
    return "base";
}

const char* version::GetGitDate()
{
    return "Thu Apr 14 22:26:38 2022";
}

const char* version::GetGitCommitSubject()
{
    return "Merge branch 'base' of https://github.com/vrtra/vrtra_server into base";
}
