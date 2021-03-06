internal extension Commit {
  /**
    Returns a pointer to the C struct representing
    the repository this commit belongs to.

    This pointer is not retained here, and so cannot
    be used to initialize a Repository object (which
    would call free on the pointer when it's deinitialized).
  */
  internal var cRepository: COpaquePointer {
    return git_commit_owner(cCommit)
  }
}
