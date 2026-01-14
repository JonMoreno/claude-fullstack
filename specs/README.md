# Feature Specs

This folder contains feature specification documents that Claude Code uses for context.

## Usage

Create `.md` files for your features:
- `auth.md` - Authentication feature spec
- `billing.md` - Billing feature spec
- etc.

Specs are loaded by the `/.spec` command and synced to matching agents.

## Template

```markdown
# Feature Name Spec

## Overview
Brief description of the feature.

## Requirements
- [ ] Requirement 1
- [ ] Requirement 2

## Data Model
Describe entities and relationships.

## API Endpoints
List relevant endpoints.

## Current Status
Track progress here.
```
