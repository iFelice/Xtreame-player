package L1;

import android.adservices.topics.GetTopicsResponse;
import android.adservices.topics.TopicsManager;
import android.content.Context;
import android.net.http.HttpEngine;
import android.net.http.UrlResponseInfo;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class d {
    public static /* bridge */ /* synthetic */ GetTopicsResponse c(Object obj) {
        return (GetTopicsResponse) obj;
    }

    public static /* bridge */ /* synthetic */ TopicsManager e(Object obj) {
        return (TopicsManager) obj;
    }

    public static /* synthetic */ HttpEngine.Builder i(Context context) {
        return new HttpEngine.Builder(context);
    }

    public static /* bridge */ /* synthetic */ HttpEngine k(Object obj) {
        return (HttpEngine) obj;
    }

    public static /* bridge */ /* synthetic */ UrlResponseInfo o(Object obj) {
        return (UrlResponseInfo) obj;
    }

    public static /* bridge */ /* synthetic */ Class q() {
        return TopicsManager.class;
    }

    public static /* synthetic */ void t() {
    }
}
