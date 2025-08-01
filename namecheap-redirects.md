# Namecheap URL Redirect Setup

## Go to Namecheap Dashboard → Domain List → Manage

### Advanced DNS → URL Redirect Records:

| Type | Host | Value |
|------|------|-------|
| URL Redirect | @ | https://raw.githubusercontent.com/heyjoenash/terminal-logo-animation/main/flow.sh |
| URL Redirect | show | https://raw.githubusercontent.com/heyjoenash/terminal-logo-animation/main/flow.sh |
| URL Redirect | flow | https://raw.githubusercontent.com/heyjoenash/terminal-logo-animation/main/flow.sh |
| URL Redirect | bt | https://raw.githubusercontent.com/heyjoenash/terminal-logo-animation/main/bt |

### Result:
- `curl -s brandtrackers.xyz | bash` ✅
- `curl -s brandtrackers.xyz/show | bash` ✅
- `curl -s brandtrackers.xyz/flow | bash` ✅
- `curl -s brandtrackers.xyz/bt | bash` ✅

### Setup Time: 2 minutes
### Propagation: 10-30 minutes