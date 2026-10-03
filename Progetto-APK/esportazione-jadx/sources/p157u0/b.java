package p157u0;

import org.chromium.net.UrlRequest;
import p117p0.C3171i;

/* JADX INFO: loaded from: classes.dex */
public final class b extends UrlRequest.StatusListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int[] f30376a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C3171i f30377b;

    public b(int[] iArr, C3171i c3171i) {
        this.f30376a = iArr;
        this.f30377b = c3171i;
    }

    @Override // org.chromium.net.UrlRequest.StatusListener
    public final void onStatus(int i8) {
        this.f30376a[0] = i8;
        this.f30377b.f();
    }
}
