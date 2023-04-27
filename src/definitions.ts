export interface CapacitorPluginVideoDemoPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
  playVideo(video: string): Promise<void>;
}
