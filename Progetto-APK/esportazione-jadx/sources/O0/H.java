package O0;

import android.net.Uri;
import com.google.android.gms.internal.measurement.H1;
import java.util.Collections;
import java.util.Map;
import p117p0.C3171i;
import p141s0.C3188m;
import p141s0.InterfaceC3184i;

/* JADX INFO: loaded from: classes.dex */
public final class H implements S0.j {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Uri f5037H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final p141s0.M f5038I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final p096m2.u f5039J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final W0.u f5040K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final C3171i f5041L;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public volatile boolean f5043N;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public long f5045P;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public W0.L f5047R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public boolean f5048S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final /* synthetic */ L f5049T;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final W0.w f5042M = new W0.w();

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public boolean f5044O = true;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final long f5036G = C0292p.f5227c.getAndIncrement();

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public C3188m f5046Q = a(0);

    public H(L l4, Uri uri, InterfaceC3184i interfaceC3184i, p096m2.u uVar, W0.u uVar2, C3171i c3171i) {
        this.f5049T = l4;
        this.f5037H = uri;
        this.f5038I = new p141s0.M(interfaceC3184i);
        this.f5039J = uVar;
        this.f5040K = uVar2;
        this.f5041L = c3171i;
    }

    @Override // S0.j
    public final void I() {
        this.f5043N = true;
    }

    public final C3188m a(long j8) {
        Collections.emptyMap();
        String str = this.f5049T.f5068O;
        Map map = L.f5058x0;
        Uri uri = this.f5037H;
        H1.k(uri, "The uri must be set.");
        return new C3188m(uri, 0L, 1, null, map, j8, -1L, str, 6, null);
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0053 */
    @Override // S0.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void p() {
        /*
            Method dump skipped, instruction units count: 348
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: O0.H.p():void");
    }
}
