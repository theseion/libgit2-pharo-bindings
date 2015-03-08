accessing
asRepositorySpecFor: aMetacelloMCProject
    ^ aMetacelloMCProject repositorySpec
        description: self description;
        type: 'git';
        yourself