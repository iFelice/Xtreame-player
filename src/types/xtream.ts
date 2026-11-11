export interface XtreamParsedUrl {
  originalUrl: string;
  serverUrl: string;
  host: string;
  port: string;
  protocol: string;
  username: string;
  password: string;
  streamType?: 'movie' | 'series' | 'live' | 'unknown';
  streamId?: string;
  containerExtension?: string;
  isDirectStream: boolean;
}

export interface XtreamUserInfo {
  username?: string;
  password?: string;
  message?: string;
  auth?: number;
  status?: string;
  exp_date?: string | null;
  is_trial?: string;
  active_cons?: string | number;
  max_connections?: string | number;
  created_at?: string;
  allowed_output_formats?: string[];
}

export interface XtreamServerInfo {
  url?: string;
  port?: string;
  https_port?: string;
  server_protocol?: string;
  rtmp_port?: string;
  timezone?: string;
  time_now?: string;
  timestamp_now?: number;
}

export interface XtreamAuthResponse {
  user_info?: XtreamUserInfo;
  server_info?: XtreamServerInfo;
}

export interface XtreamCategory {
  category_id: string;
  category_name: string;
  parent_id?: number | string;
}

export interface XtreamVodStream {
  num?: number;
  name: string;
  stream_type?: string;
  stream_id: number | string;
  stream_icon?: string;
  rating?: string | number;
  rating_5based?: number;
  added?: string;
  category_id: string;
  container_extension?: string;
  custom_sid?: string;
  direct_source?: string;
  year?: string;
}

export interface XtreamLiveStream {
  num?: number;
  name: string;
  stream_type?: string;
  stream_id: number | string;
  stream_icon?: string;
  epg_channel_id?: string;
  added?: string;
  category_id: string;
  custom_sid?: string;
  tv_archive?: number;
  direct_source?: string;
  tv_archive_duration?: number;
}

export interface XtreamSeries {
  num?: number;
  name: string;
  series_id: number | string;
  cover?: string;
  plot?: string;
  cast?: string;
  director?: string;
  genre?: string;
  releaseDate?: string;
  last_modified?: string;
  rating?: string;
  rating_5based?: number;
  category_id: string;
}

export interface XtreamEpisode {
  id: string;
  episode_num: number | string;
  title: string;
  container_extension: string;
  info?: {
    plot?: string;
    duration_secs?: number;
    duration?: string;
    movie_image?: string;
    rating?: number | string;
    releasedate?: string;
  };
}

export interface XtreamSeriesInfo {
  seasons?: Array<{
    air_date?: string;
    episode_count?: number;
    id?: number;
    name?: string;
    overview?: string;
    season_number: number;
    cover?: string;
  }>;
  info?: {
    name?: string;
    cover?: string;
    plot?: string;
    cast?: string;
    director?: string;
    genre?: string;
    releaseDate?: string;
    release_date?: string;
    rating?: string | number;
    episode_run_time?: string | number;
    backdrop_path?: string[];
  };
  episodes?: Record<string, XtreamEpisode[]>;
}

export interface XtreamVodDetails {
  info?: {
    movie_image?: string;
    tmdb_id?: string;
    name?: string;
    o_name?: string;
    cover_big?: string;
    releasedate?: string;
    episode_run_time?: string | number;
    youtube_trailer?: string;
    director?: string;
    actors?: string;
    cast?: string;
    description?: string;
    plot?: string;
    age?: string;
    country?: string;
    genre?: string;
    backdrop_path?: string[];
    duration_secs?: number;
    duration?: string;
    rating?: string | number;
  };
  movie_data?: {
    stream_id: number | string;
    name: string;
    container_extension: string;
  };
}

export interface PlayableMediaItem {
  id: string;
  title: string;
  type: 'movie' | 'live' | 'series' | 'direct';
  streamUrl: string;
  poster?: string;
  backdrop?: string;
  categoryName?: string;
  description?: string;
  rating?: string | number;
  year?: string;
  containerExtension?: string;
  seriesName?: string;
  seasonNumber?: number;
  episodeNumber?: number;
}
