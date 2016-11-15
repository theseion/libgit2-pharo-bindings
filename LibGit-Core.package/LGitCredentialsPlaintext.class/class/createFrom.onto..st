libgit-calls
createFrom: provider onto: lgitCredentials
	| credentials |
	[
		credentials := self new.
		provider providePlaintextCredentialsTo: credentials.
		credentials createWith: lgitCredentials.
		^ 0
	]
	on: IceNoCredentialsProvided do: [ 
		^ -1 "GIT_PASSTHROUGH"
	]
