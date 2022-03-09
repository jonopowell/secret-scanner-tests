# Todo
Make a list of the requirements for each secret scanner
 - git-secrets
   - 
 - gitleaks
 - talisman
   - Works by hooking commit (client side)

 - truffleHog

 # Mechanisms for Scanning
  - Hook commit (Talisman,)
    - Pros:
        - Easy deployment
        - No cloud compute required
    - Cons: 
       - Not obvious how to enforce across an organisation
       - Potential to be subverted to exfiltrate secrets 
