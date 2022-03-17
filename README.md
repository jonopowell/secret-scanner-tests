# Todo
Make a list of the requirements for each secret scanner
 - gitleaks
   - Go application, builds itself in a docker container
   - Needs python and python-pip because it relies on pre-commit to work
   - In my tests it didn't work on commit and had to be invoked separately
 
 - git-secrets
   - Bash Scripts
   - Hooks commit
   - Specific features for AWS

 - talisman
   - Go applications
   - Works by hooking commit, select between pre-push and pre-commit
   - Scans history (time?)
 
 - truffleHog
   - Standalone Python application, uses git, doesn't integrate with it.
   - Doesn't pick up obvious secrets (strings called password or secret)
   - Can be pointed at a remote repo rather than a local one

 # Mechanisms for Scanning
  - Hook commit, pre-push or pre-commit (Talisman,git-secrets)
    - Pros:
        - Easy deployment
        - Prevents secrets getting into public history
        - Distribute scanning between developers
        - Distribute setup and install with code
        
    - Cons:
       - Schedule a scan?
       - CI/CD configuration -  
       - Enforcement policy? Evidence of compliance/scan.
       - Doesn't help with direct editing of files (i.e. edit with online github code editor)
       - Doesn't see branches.
  - Standalone scanner
    - Pros:

    - Cons:
