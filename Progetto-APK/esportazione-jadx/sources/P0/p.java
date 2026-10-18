package P0;

import p094m0.C3136t;
import p141s0.C3188m;
import p141s0.InterfaceC3184i;

/* JADX INFO: loaded from: classes.dex */
public abstract class p extends f {

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final long f5770P;

    public p(InterfaceC3184i interfaceC3184i, C3188m c3188m, C3136t c3136t, int i8, Object obj, long j8, long j9, long j10) {
        super(interfaceC3184i, c3188m, 1, c3136t, i8, obj, j8, j9);
        c3136t.getClass();
        this.f5770P = j10;
    }

    public long a() {
        long j8 = this.f5770P;
        if (j8 != -1) {
            return 1 + j8;
        }
        return -1L;
    }

    public abstract boolean b();
}
