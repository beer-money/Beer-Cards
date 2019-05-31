<!-- AUTO-GENERATED: This section is auto-generated from schemas/adaptive-card.json. Do NOT add anything above this or edit anything inside, it MUST be the first thing in the document and will be overwritten. -->

# Action.ShowCard

| Property | Type | Required | Description | Version |
| -------- | ---- | -------- | ----------- | ------- |
| **type** | `"Action.ShowCard"` |  No | Must be `Action.ShowCard` | 1.0 |
| **card** | `object` |  No | The Adaptive Card to show. | 1.0 |
| **title** | `string` |  No | Label for button or link that represents this action. | 1.0 |
| **iconUrl** | `string` |  No | Optional icon to be shown on the action in conjunction with the title. | 1.1 |
<!-- END AUTO-GENERATED -->

## Rendering

Only allowed inside an `ActionSet` or `card.actions`. If anywhere else, drop and trigger warning.

See `ActionSet` for rendering.