import {
  XtreamAuthResponse,
  XtreamCategory,
  XtreamVodStream,
  XtreamLiveStream,
  XtreamSeries,
  XtreamSeriesInfo,
  XtreamVodDetails,
} from '../types/xtream';

async function fetchFromXtream<T>(url: string): Promise<T> {
  const proxyUrl = `/api/proxy/api?url=${encodeURIComponent(url)}`;
  const res = await fetch(proxyUrl);
  if (!res.ok) {
    const errorText = await res.text();
    let msg = `HTTP ${res.status}`;
    try {
      const parsed = JSON.parse(errorText);
      if (parsed.error) msg = parsed.error;
    } catch {}
    throw new Error(msg);
  }
  return res.json();
}

export const xtreamClient = {
  /**
   * Authenticate and get user info / server info
   */
  async authenticate(serverUrl: string, user: string, pass: string): Promise<XtreamAuthResponse> {
    const cleanServer = serverUrl.replace(/\/+$/, '');
    const url = `${cleanServer}/player_api.php?username=${encodeURIComponent(user)}&password=${encodeURIComponent(pass)}`;
    return fetchFromXtream<XtreamAuthResponse>(url);
  },

  /**
   * Fetch VOD (Film) categories
   */
  async getVodCategories(serverUrl: string, user: string, pass: string): Promise<XtreamCategory[]> {
    const cleanServer = serverUrl.replace(/\/+$/, '');
    const url = `${cleanServer}/player_api.php?username=${encodeURIComponent(user)}&password=${encodeURIComponent(pass)}&action=get_vod_categories`;
    const res = await fetchFromXtream<XtreamCategory[] | any>(url);
    return Array.isArray(res) ? res : [];
  },

  /**
   * Fetch VOD (Film) streams
   */
  async getVodStreams(
    serverUrl: string,
    user: string,
    pass: string,
    categoryId?: string
  ): Promise<XtreamVodStream[]> {
    const cleanServer = serverUrl.replace(/\/+$/, '');
    let url = `${cleanServer}/player_api.php?username=${encodeURIComponent(user)}&password=${encodeURIComponent(pass)}&action=get_vod_streams`;
    if (categoryId && categoryId !== 'all') {
      url += `&category_id=${encodeURIComponent(categoryId)}`;
    }
    const res = await fetchFromXtream<XtreamVodStream[] | any>(url);
    return Array.isArray(res) ? res : [];
  },

  /**
   * Fetch detailed info for a single VOD movie
   */
  async getVodInfo(
    serverUrl: string,
    user: string,
    pass: string,
    vodId: string | number
  ): Promise<XtreamVodDetails> {
    const cleanServer = serverUrl.replace(/\/+$/, '');
    const url = `${cleanServer}/player_api.php?username=${encodeURIComponent(user)}&password=${encodeURIComponent(pass)}&action=get_vod_info&vod_id=${encodeURIComponent(vodId)}`;
    return fetchFromXtream<XtreamVodDetails>(url);
  },

  /**
   * Fetch Live TV categories
   */
  async getLiveCategories(serverUrl: string, user: string, pass: string): Promise<XtreamCategory[]> {
    const cleanServer = serverUrl.replace(/\/+$/, '');
    const url = `${cleanServer}/player_api.php?username=${encodeURIComponent(user)}&password=${encodeURIComponent(pass)}&action=get_live_categories`;
    const res = await fetchFromXtream<XtreamCategory[] | any>(url);
    return Array.isArray(res) ? res : [];
  },

  /**
   * Fetch Live TV streams
   */
  async getLiveStreams(
    serverUrl: string,
    user: string,
    pass: string,
    categoryId?: string
  ): Promise<XtreamLiveStream[]> {
    const cleanServer = serverUrl.replace(/\/+$/, '');
    let url = `${cleanServer}/player_api.php?username=${encodeURIComponent(user)}&password=${encodeURIComponent(pass)}&action=get_live_streams`;
    if (categoryId && categoryId !== 'all') {
      url += `&category_id=${encodeURIComponent(categoryId)}`;
    }
    const res = await fetchFromXtream<XtreamLiveStream[] | any>(url);
    return Array.isArray(res) ? res : [];
  },

  /**
   * Fetch Series categories
   */
  async getSeriesCategories(serverUrl: string, user: string, pass: string): Promise<XtreamCategory[]> {
    const cleanServer = serverUrl.replace(/\/+$/, '');
    const url = `${cleanServer}/player_api.php?username=${encodeURIComponent(user)}&password=${encodeURIComponent(pass)}&action=get_series_categories`;
    const res = await fetchFromXtream<XtreamCategory[] | any>(url);
    return Array.isArray(res) ? res : [];
  },

  /**
   * Fetch Series list
   */
  async getSeries(
    serverUrl: string,
    user: string,
    pass: string,
    categoryId?: string
  ): Promise<XtreamSeries[]> {
    const cleanServer = serverUrl.replace(/\/+$/, '');
    let url = `${cleanServer}/player_api.php?username=${encodeURIComponent(user)}&password=${encodeURIComponent(pass)}&action=get_series`;
    if (categoryId && categoryId !== 'all') {
      url += `&category_id=${encodeURIComponent(categoryId)}`;
    }
    const res = await fetchFromXtream<XtreamSeries[] | any>(url);
    return Array.isArray(res) ? res : [];
  },

  /**
   * Fetch Series detail & episodes
   */
  async getSeriesInfo(
    serverUrl: string,
    user: string,
    pass: string,
    seriesId: string | number
  ): Promise<XtreamSeriesInfo> {
    const cleanServer = serverUrl.replace(/\/+$/, '');
    const url = `${cleanServer}/player_api.php?username=${encodeURIComponent(user)}&password=${encodeURIComponent(pass)}&action=get_series_info&series_id=${encodeURIComponent(seriesId)}`;
    return fetchFromXtream<XtreamSeriesInfo>(url);
  },
};
