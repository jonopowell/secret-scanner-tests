# Todo
Make a list of the requirements for each secret scanner
 - git-secrets
   - Hooks the commit, but can scan the history
 - gitleaks
 - talisman
   - Works by hooking commit (client side)

 - truffleHog

 # Mechanisms for Scanning
  - Hook commit (Talisman,)
    - Pros:
        - Easy deployment
        
    - Cons:
       - Schedule a scan?
       - CI/CD configuration 
       - Enforcement policy? 
