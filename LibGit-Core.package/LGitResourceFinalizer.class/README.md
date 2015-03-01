I'm a wrapper for the memory handle of an object that is to be garbage collected. I can be enabled or disabled to disable freeing of the memory handle by the garbage collection mechanism. This is useful when you want to free the object manually (otherwise you'll end up with a double free and that might free some other data that is now in that place).

Do not use me directly. Use the #freeAfterUse: method on LGit objects to enable or disable me.

I am enabled by default, i.e., upon garbage collection of the object (no strong pointers anymore) I allow the memory handle to be freed.