package E0;

import B0.Z;
import O0.T;
import W0.K;
import W0.L;
import android.os.Handler;
import p094m0.C3136t;
import p094m0.InterfaceC3127j;
import p094m0.N;
import p094m0.P;
import p117p0.E;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class s implements L {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final T f2565a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Z f2566b = new Z();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final p033e1.a f2567c = new p033e1.a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f2568d = -9223372036854775807L;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ t f2569e;

    public s(t tVar, S0.d dVar) {
        this.f2569e = tVar;
        this.f2565a = new T(dVar, null, null);
    }

    @Override // W0.L
    public final void a(int i8, int i9, E e8) {
        T t7 = this.f2565a;
        t7.getClass();
        t7.a(i8, 0, e8);
    }

    @Override // W0.L
    public final void b(C3136t c3136t) {
        this.f2565a.b(c3136t);
    }

    @Override // W0.L
    public final int c(InterfaceC3127j interfaceC3127j, int i8, boolean z7) {
        T t7 = this.f2565a;
        t7.getClass();
        return t7.c(interfaceC3127j, i8, z7);
    }

    @Override // W0.L
    public final void d(long j8, int i8, int i9, int i10, K k8) {
        long jI;
        long jU;
        this.f2565a.d(j8, i8, i9, i10, k8);
        while (this.f2565a.y(false)) {
            p033e1.a aVar = this.f2567c;
            aVar.clear();
            if (this.f2565a.D(this.f2566b, aVar, 0, false) == -4) {
                aVar.g();
            } else {
                aVar = null;
            }
            if (aVar != null) {
                long j9 = aVar.f30906K;
                N nG = this.f2569e.f2572I.g(aVar);
                if (nG != null) {
                    p049g1.a aVar2 = (p049g1.a) nG.f26777a[0];
                    String str = aVar2.f25299a;
                    String str2 = aVar2.f25300b;
                    if ("urn:mpeg:dash:event:2012".equals(str) && ("1".equals(str2) || "2".equals(str2) || "3".equals(str2))) {
                        try {
                            jU = M.U(M.o(aVar2.f25303e));
                        } catch (P unused) {
                            jU = -9223372036854775807L;
                        }
                        if (jU != -9223372036854775807L) {
                            r rVar = new r(j9, jU);
                            Handler handler = this.f2569e.f2573J;
                            handler.sendMessage(handler.obtainMessage(1, rVar));
                        }
                    }
                }
            }
        }
        T t7 = this.f2565a;
        O0.P p7 = t7.f5139a;
        synchronized (t7) {
            int i11 = t7.f5157s;
            jI = i11 == 0 ? -1L : t7.i(i11);
        }
        p7.b(jI);
    }

    @Override // W0.L
    public final void e(int i8, E e8) {
        a(i8, 0, e8);
    }

    @Override // W0.L
    public final int f(InterfaceC3127j interfaceC3127j, int i8, boolean z7) {
        return c(interfaceC3127j, i8, z7);
    }
}
