# Modern Dark

| JSON key | Original value | Custom value | Comment |
| -------- | -------------- | ------------ | ------- |
|`text.muted`|#9d9d9d|#cccccc|The sidebar uses `text.muted`, but VS Code shows text in regular colors.|
|`created`|#2ea043|#73c991|From `gitDecoration.untrackedResourceForeground`|
|`ignored`|null|#8c8c8c|From `gitDecoration.ignoredResourceForeground`|
|`modified`|#0078d4|#e2c08d|From `gitDecoration.modifiedResourceForeground`|
|`predictive`|null|#6B6B6B|Color picked using a screenshot of a suggestion containing the "■" character, since `editorGhostText.foreground` uses transparency in VS Code which isn't supported in Zed.|

# Modern Light

| JSON key | Original value | Custom value | Comment |
| -------- | -------------- | ------------ | ------- |
|`text.muted`|#868686|#3b3b3b|See reasoning dark theme.|
|`element.background`|#0078d4|null|It's not possible to set the text color on elements, and black on blue is hard to read.|
|`element.hover`|#2a2d2e|null|Not relevant since `element.background` is set to null.|
|`element.selected`|#04395e|null|Not relevant since `element.background` is set to null.|
|`created`|#2ea043|#587c0c|Picked using VS Code's dev tools.|
|`ignored`|null|#8e8e90|Picked using VS Code's dev tools.|
|`modified`|#005fb8|#895503|Picked using VS Code's dev tools.|
|`predictive`|null|#878787|See reasoning dark theme.|
