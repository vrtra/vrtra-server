#include "version.h"

const char* version::GetGitSha()
{
    return "16a66a1da36957c5aeadde0061a66ad96a9bb0e3-dirty";
}

const char* version::GetGitBranch()
{
    return "base";
}

const char* version::GetGitDate()
{
    return "Mon Apr 11 01:44:45 2022";
}

const char* version::GetGitCommitSubject()
{
    return "Added names to Teleport command";
}
