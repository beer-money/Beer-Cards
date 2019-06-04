<!-- AUTO-GENERATED: This section is auto-generated from schemas/adaptive-card.json. Do NOT add anything above this or edit anything inside, it MUST be the first thing in the document and will be overwritten. -->

# Media

| Property | Type | Required | Description | Version |
| -------- | ---- | -------- | ----------- | ------- |
| **type** | `string` | Depends | Must be `"Media"`. | 1.0 |
| **sources** | `MediaSource[]` | Yes | Array of media sources to attempt to play. | 1.0 |
| **poster** | `uri` | No | URL of an image to display before playing. Supports data URI in version 1.2+ | 1.0 |
| **altText** | `string` | No | Alternate text describing the audio or video. | 1.0 |
| **id** | `string` | No | A unique identifier associated with the element. | 1.0 |
| **spacing** | `Spacing` | No | Controls the amount of spacing between this element and the preceding element. | 1.0 |
| **separator** | `boolean` | No | When `true`, draw a separating line at the top of the element. | 1.0 |
<!-- END AUTO-GENERATED -->

## Rendering

1. Iterate through the `sources` and find the first supported source. If there's no supported source present, engage fallback and stop.
1. If the `poster` is present...
	1. Display the `poster`
1. Else
	1. Display the default host poster
1. Upon user clicking the element, start playing the video and display media controls. Basic controls should include play/pause, a seek bar, volume/fullscreen.
1. Set the `altText` in accessibility properties.