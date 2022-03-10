# Todo
Make a list of the requirements for each secret scanner
 - git-secrets
   - Hooks the commit, but can scan the history
 - gitleaks
 - talisman
   - Works by hooking commit, select between pre-push and pre-commit
   - Scans history (time?)
   - 

 - truffleHog

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
