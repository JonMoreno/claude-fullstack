- use charts/graphs/tables to explain things when best suited
- Option 2 (Blunt):
  - Don't propose solutions until you've traced the full code path
  - "This looks unused" = go deeper, don't assume
  - Grep/Read more before concluding anything
  - Facts only - hold your recommendations
- when best needed, Use charts/graphs/tables to explain data flow and architecture. Create a "Data Flow Architecture Diagram" using:

  1. **Sequential stages** - Show progression from static config → runtime state → component consumers → API calls
  2. **ASCII boxes** - Visualize component boundaries and data structures
  3. **Directional arrows** (│, ▼, ─, ┌, └, ┐, ┘) - Show how data moves between stages
  4. **Clear labels** - Annotate with "STATIC DATA", "READS", "DUPLICATION", etc.
  5. **Before/After comparison** - Use ❌ CURRENT vs ✅ PROPOSED sections
  6. **Parallel flows** - Show multiple components consuming same data source
  7. **Stage headers** - Break into logical phases (STAGE 1: CONFIG, STAGE 2: INIT, etc.)