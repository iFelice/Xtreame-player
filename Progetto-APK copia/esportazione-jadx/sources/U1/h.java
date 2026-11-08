package U1;

import android.content.Context;
import p032e0.C;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class h implements T1.f {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f6918G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f6919H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final T1.c f6920I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final boolean f6921J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final boolean f6922K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final p155t6.f f6923L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public boolean f6924M;

    public h(Context context, String str, T1.c cVar, boolean z7, boolean z8) {
        q0.h(context, "context");
        q0.h(cVar, "callback");
        this.f6918G = context;
        this.f6919H = str;
        this.f6920I = cVar;
        this.f6921J = z7;
        this.f6922K = z8;
        this.f6923L = new p155t6.f(new C(this, 2));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f6923L.f30316H != p155t6.g.f30318a) {
            ((g) this.f6923L.a()).close();
        }
    }

    @Override // T1.f
    public final T1.b getWritableDatabase() {
        return ((g) this.f6923L.a()).k(true);
    }

    @Override // T1.f
    public final void setWriteAheadLoggingEnabled(boolean z7) {
        if (this.f6923L.f30316H != p155t6.g.f30318a) {
            g gVar = (g) this.f6923L.a();
            q0.h(gVar, "sQLiteOpenHelper");
            gVar.setWriteAheadLoggingEnabled(z7);
        }
        this.f6924M = z7;
    }
}
