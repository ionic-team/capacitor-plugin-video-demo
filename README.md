# capacitor-plugin-video-demo

This plugin will be used as a tutorial on how to create custom Capacitor plugins for native applications

## Install

```bash
npm install capacitor-plugin-video-demo
npx cap sync
```

## API

<docgen-index>

* [`echo(...)`](#echo)
* [`playVideo(...)`](#playvideo)

</docgen-index>

<docgen-api>
<!--Update the source file JSDoc comments and rerun docgen to update the docs below-->

### echo(...)

```typescript
echo(options: { value: string; }) => Promise<{ value: string; }>
```

| Param         | Type                            |
| ------------- | ------------------------------- |
| **`options`** | <code>{ value: string; }</code> |

**Returns:** <code>Promise&lt;{ value: string; }&gt;</code>

--------------------


### playVideo(...)

```typescript
playVideo(video: string) => Promise<void>
```

| Param       | Type                |
| ----------- | ------------------- |
| **`video`** | <code>string</code> |

--------------------

</docgen-api>
