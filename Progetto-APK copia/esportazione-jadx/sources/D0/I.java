package D0;

import android.content.Context;
import com.google.android.gms.internal.measurement.H1;

/* JADX INFO: loaded from: classes.dex */
public final class I {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f1754a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public C0114d f1755b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public p096m2.u f1756c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1757d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f1758e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f1759f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final T f1760g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final U4.b f1761h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public C f1762i;

    public I() {
        this.f1754a = null;
        this.f1755b = C0114d.f1916c;
        this.f1760g = G.f1752a;
        this.f1761h = H.f1753b;
    }

    public final S a() {
        H1.i(!this.f1759f);
        this.f1759f = true;
        if (this.f1756c == null) {
            this.f1756c = new p096m2.u(new p102n0.g[0]);
        }
        if (this.f1762i == null) {
            this.f1762i = new C(this.f1754a);
        }
        return new S(this);
    }

    public I(Context context) {
        this.f1754a = context;
        this.f1755b = C0114d.f1916c;
        this.f1760g = G.f1752a;
        this.f1761h = H.f1753b;
    }
}
