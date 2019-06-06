<!-- AUTO-GENERATED: This section is auto-generated from schemas/adaptive-card.json. Do NOT add anything above this or edit anything inside, it MUST be the first thing in the document and will be overwritten. -->

# Container

| Property | Type | Required | Description | Version |
| -------- | ---- | -------- | ----------- | ------- |
| **type** | `"Container"` | Yes | Must be `"Container"`. | 1.0 |
| **items** | `Element[]` | Yes | The card elements to render inside the `Container`. | 1.0 |
| **selectAction** | `ISelectAction` | No | An Action that will be invoked when the `Container` is tapped or selected. `Action.ShowCard` is not supported. | 1.1 |
| **style** | `ContainerStyle?` | No | Style hint for `Container`. | 1.0 |
| **verticalContentAlignment** | `VerticalContentAlignment` | No, default: `"top"` | Defines how the content should be aligned vertically within the container. | 1.1 |
| **bleed** | `boolean` | No | Determines whether the element should bleed through its parent's padding. | 1.2 |
| **backgroundImage** | `BackgroundImage`, `uri` | No | Specifies the background image. | 1.2 |
| **minHeight** | `string` | No | Specifies the minimum height of the container. | 1.2 |
| **fallback** | `Element`, `FallbackOption` | No | Describes what to do when an unknown element is encountered or the requires of this or any children can't be met. | 1.2 |
| **height** | `BlockElementHeight` | No | Specifies the height of the element. | 1.1 |
| **separator** | `boolean` | No | When `true`, draw a separating line at the top of the element. | 1.0 |
| **spacing** | `Spacing` | No | Controls the amount of spacing between this element and the preceding element. | 1.0 |
| **id** | `string` | No | A unique identifier associated with the item. | 1.0 |
| **isVisible** | `boolean` | No, default: `true` | If `false`, this item will be removed from the visual tree. | 1.2 |
| **requires** | `Dictionary<string>` | No | A series of key/value pairs indicating features that the item requires with corresponding minimum version. When a feature is missing or of insufficient version, fallback is triggered. | 1.2 |
<!-- END AUTO-GENERATED -->

## Rendering

1. Determine the padding...
	1. If 