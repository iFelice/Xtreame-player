package K;

import android.content.ContentProviderClient;
import android.content.Context;
import android.net.Uri;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4268a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ContentProviderClient f4269b;

    public c(Context context, Uri uri, int i8) {
        this.f4268a = i8;
        if (i8 != 1) {
            this.f4269b = context.getContentResolver().acquireUnstableContentProviderClient(uri);
        } else {
            this.f4269b = context.getContentResolver().acquireUnstableContentProviderClient(uri);
        }
    }
}
