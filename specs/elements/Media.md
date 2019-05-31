<!-- AUTO-GENERATED: This section is auto-generated from schemas/adaptive-card.json. Do NOT add anything above this or edit anything inside, it MUST be the first thing in the document and will be overwritten. -->

# Media

#### Introduced in version 1.1

| Property | Type | Required | Description | Version |
| -------- | ---- | -------- | ----------- | ------- |
| **type** | `"Media"` |  No | Must be `Media` | 1.1 |
| **sources** | `MediaSource[]` | Yes | Array of media sources to attempt to play. | 1.1 |
| **poster** | `string` |  No | URL of an image to display before playing. Supports data URI in version 1.2+ | 1.1 |
| **altText** | `string` |  No | Alternate text describing the audio or video. | 1.1 |
| **id** | `any` |  No | &nbsp; | 1.1 |
| **spacing** | `any` |  No | &nbsp; | 1.1 |
| **separator** | `any` |  No | &nbsp; | 1.1 |
<!-- END AUTO-GENERATED -->

## Rendering

1. Iterate through the `sources` and find the first supported source. If there's no supported source present, engage fallback and stop.
1. If the `poster` is present...
	1. Display the `poster`
1. Else
	1. Display the default host poster
1. Upon user clicking the element, start playing the video and display media controls. Basic controls should include play/pause, a seek bar, volume/fullscreen.
1. Set the `altText` in accessibility properties.