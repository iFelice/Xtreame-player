package E0;

import I0.u;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class f implements T0.b, S0.n {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ j f2479G;

    public final void a() {
        long j8;
        j jVar = this.f2479G;
        synchronized (T0.c.f6514b) {
            try {
                j8 = T0.c.f6515c ? T0.c.f6516d : -9223372036854775807L;
            } catch (Throwable th) {
                throw th;
            }
        }
        jVar.f2504L = j8;
        jVar.x(true);
    }

    @Override // S0.n
    public final void b() throws IOException {
        j jVar = this.f2479G;
        jVar.f2493A.b();
        u uVar = jVar.f2495C;
        if (uVar != null) {
            throw uVar;
        }
    }
}
