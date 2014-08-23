###libgit2 bindings for Pharo

The goal of this project is the development of [libgit2](http://libgit2.github.com) bindings for [Pharo](http://pharo-project.org).

####prerequisites

To use these bindings you will need a Pharo 3 or 4 image and the latest VM:

    curl get.pharo.org/40+vmLatest | bash
    ./pharo-ui Pharo.image

####installation

Evaluate the following in a workspace:
  
    Gofer it
      smalltalkhubUser: 'FileSystemGitDev' project: 'LibGit2';
      configurationOf: 'LibGit';
      loadBleedingEdge

####github support

The current bindings include very crude patches to allow pull and push operations to / from remote repositories (e.g. github). For this to work you will need a repository with [FileTree](https://github.com/dalehenrich/filetree) layout, where the FileTree packages are in the top level directory (the same the .git directory is in).


####disclaimer

This project is still very experimental and push / pull operations have been implemented for convenience only. I use them for daily development but be prepared for unexpected behavior and VM crashes.