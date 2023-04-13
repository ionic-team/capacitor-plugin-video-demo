export interface CapacitorPluginVideoDemoPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
