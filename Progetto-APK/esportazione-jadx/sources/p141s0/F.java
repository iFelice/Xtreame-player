package p141s0;

import android.net.http.UrlRequest;
import p117p0.C3171i;

/* JADX INFO: loaded from: classes.dex */
public final class F implements UrlRequest.StatusListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int[] f29872a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C3171i f29873b;

    public F(int[] iArr, C3171i c3171i) {
        this.f29872a = iArr;
        this.f29873b = c3171i;
    }

    @Override // android.net.http.UrlRequest.StatusListener
    public final void onStatus(int i8) {
        this.f29872a[0] = i8;
        this.f29873b.f();
    }
}
