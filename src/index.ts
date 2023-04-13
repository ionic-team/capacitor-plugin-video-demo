import { registerPlugin } from '@capacitor/core';

import type { CapacitorPluginVideoDemoPlugin } from './definitions';

const CapacitorPluginVideoDemo = registerPlugin<CapacitorPluginVideoDemoPlugin>(
  'CapacitorPluginVideoDemo',
  {
    web: () => import('./web').then(m => new m.CapacitorPluginVideoDemoWeb()),
  },
);

export * from './definitions';
export { CapacitorPluginVideoDemo };
