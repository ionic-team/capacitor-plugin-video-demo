import { WebPlugin } from '@capacitor/core';

import type { CapacitorPluginVideoDemoPlugin } from './definitions';

export class CapacitorPluginVideoDemoWeb
  extends WebPlugin
  implements CapacitorPluginVideoDemoPlugin
{
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
  async playVideo(video: string): Promise<void> {
    console.log('ECHO', video);
  }
}
