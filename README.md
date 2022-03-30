# Todo
Make a list of the requirements for each secret scanner
 - gitleaks
   - https://github.com/zricethezav/gitleaks
   - Go application, it can build itself in a docker container
   - Needs python and python-pip to hook commit, it can run as a standalone scanner
   - It doesn't find obvious secrets (password= or secret =) 
   - When used in precommit it only sees new or changed secrets
   - Uses a combination of entropy and regexp to find secrets (regexp matches, and then entropy hones the match)
   - Allow liste

 
 - git-secrets
   - https://github.com/awslabs/git-secrets
   - Bash Scripts
   - Hooks commit
   - Specific features for AWS
   - Easily confused with git secret which is a git command to store secrets in a git repo.
   - 

 - talisman
   - https://github.com/thoughtworks/talisman
   - Go applications
   - Works by hooking commit, select between pre-push and pre-commit
   - Scans history (time?)
 
 - truffleHog
   - https://github.com/trufflesecurity/truffleHog
   - Standalone Python application and Python module uses git, doesn't integrate with it.
   - Doesn't pick up obvious secrets (strings called password or secret), did spot usernames in URLS
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
