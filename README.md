## JSON Transform Task

A simple data processing task where the agent reads JSON records from an input file, transforms the data (uppercase names, classify age groups), and writes the output.

### Task: `harbor_tasks/json-transform/`
- **Difficulty:** Easy
- **Category:** Data Processing
- **Input:** Line-delimited JSON records with `name` and `age` fields
- **Output:** JSON array with uppercase names and `age_group` classification

### Validation Results
- **Oracle test:** ✅ Returns **1.0**
- **NOP test:** ✅ Returns **0.0**
- **Ruff linting:** ✅ Passes

### Commands Used
```bash
uv run harbor run --agent oracle --path harbor_tasks/json-transform --job-name test-oracle
# Mean: 1.000

uv run harbor run --agent nop --path harbor_tasks/json-transform --job-name test-nop
# Mean: 0.000

uvx ruff check harbor_tasks/json-transform
# All checks passed!
```
<!-- devin-review-badge-begin -->

---

<a href="https://app.devin.ai/review/harbor-framework/harbor/pull/1151" target="_blank">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://static.devin.ai/assets/gh-open-in-devin-review-dark.svg?v=1">
    <img src="https://static.devin.ai/assets/gh-open-in-devin-review-light.svg?v=1" alt="Open with Devin">
  </picture>
</a>
<!-- devin-review-badge-end -->

<img width="1920" height="423" alt="image" src="https://github.com/user-attachments/assets/a2e4cf81-76a8-4744-a558-f3d0cd778389" />
<img width="1920" height="419" alt="image" src="https://github.com/user-attachments/assets/91a02440-93cc-46c5-b0d6-5a9def1f131a" />
<img width="1920" height="165" alt="image" src="https://github.com/user-attachments/assets/be79406f-b7b8-42ab-9579-7803312a6871" />

