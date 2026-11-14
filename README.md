# EDNA Engine MCP Server

**Let AI feel the human behind the screen.** EDNA is a behavioral-biometric human-sensing engine that runs 100% on the user's device. Sixteen live channels turn mouse, touch, typing and motion into an AI-readable signal vector — presence, attention, hesitation, confidence — so AI systems can perceive the human behind the session instead of guessing from text alone.

## Install

```json
{
  "mcpServers": {
    "edna": {
      "command": "npx",
      "args": ["-y", "edna-mcp-server"],
      "env": { "EDNA_LICENSE_KEY": "edna_live_…" }
    }
  }
}
```

## Tools

- `edna.get_human_proof()` → `{ confidence, classification, consent }`
- `edna.get_signal_vector()` → 16 statistical humanness scores
- `edna.get_human_context()` → tempo trend, per-channel changes, pauses — with explicit uncertainty

## Privacy by architecture, not by policy

- All capture and scoring happens in the user's browser sandbox
- Zero raw biometrics leave the device — no keystroke content, no pointer paths, no motion data
- Shared proofs are non-personalized, irreversible cryptographic hash patterns only
- No server, no API keys, no analytics, no cookies

## Bot classification

Verified against published test vectors (see [EDNA-verification](https://github.com/sebklaey/EDNA-verification)): signature and cheap-evasion bots are caught; statistical mimicry is a documented open boundary (challenge-response v1.1).

## Links

- Live demo & docs: https://openos.space
- Remote MCP endpoint: `https://openos.space/mcp`
- REST API, JS SDK and PWA also available
- Evaluation/testing free (EPCAL-1.0); production via Stripe
- Contact: contact@openos.space
