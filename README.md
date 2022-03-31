# Todo
Make a list of the requirements for each secret scanner
 - gitleaks
   - https://github.com/zricethezav/gitleaks
   - Go application, it can build itself in a docker container
   - Needs python and python-pip to hook commit, it can run as a standalone scanner
   - It doesn't find obvious secrets (password= or secret =) 
   - When used in precommit it only sees new or changed secrets
   - Uses a combination of entropy and regexp to find secrets (regexp matches, and then entropy hones the match)
   - Has an allow list
 
 - git-secrets
   - https://github.com/awslabs/git-secrets
   - Bash Script
   - Hooks commit
   - By default it doesn't scan for anything!
   - Easily confused with git secret which is a git command to store secrets in a git repo.
   - Has an allow list, can be configured to ignore specific files or specific lines in files
   

 - talisman
   - https://github.com/thoughtworks/talisman
   - Go application
   - Works by hooking commit, select between pre-push and pre-commit
   - Finds trivial secrets out of the box (variables called password or secret)
   - Scans history
   - Html reporting!
   - Needs local repo access
 
 - truffleHog
   - https://github.com/trufflesecurity/truffleHog
   - Standalone Python application and Python module uses git, doesn't integrate with it.
   - Doesn't pick up trivial secrets (strings called password or secret), did spot usernames in URLs
   - Can be pointed at a remote repo rather than a local one
   - 

 # Mechanisms for Scanning
  - Hook commit, pre-push or pre-commit (Talisman,git-secrets)
    - Pros:
        - Prevents secrets getting into public history
        - Distribute scanning between developers
        - integrates directly with git
    - Cons:
       - Schedule a scan?
       - CI/CD configuration -  
       - Enforcement policy? Evidence of compliance/scan.
       - Doesn't help with direct editing of files (i.e. edit with online github code editor)
       - Doesn't see branches.
       - Each scanner has different features and/or syntax for bypass and ignore
       - You may have multiple git tools (on windows VSCode/Visual Studio and SCM git, plus git in WSL2) this is not garaunteed to work for every git.
  - Standalone scanner
    - Pros:
      - 
    - Cons:
      - Requires scheduling
