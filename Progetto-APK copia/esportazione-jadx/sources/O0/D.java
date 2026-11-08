package O0;

import C0.C0079d;
import java.io.IOException;
import java.util.concurrent.CopyOnWriteArrayList;
import p039f.RunnableC3004t;
import p094m0.C3136t;
import p117p0.InterfaceC3172j;

/* JADX INFO: loaded from: classes.dex */
public final class D {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f5030a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C0300y f5031b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CopyOnWriteArrayList f5032c;

    public D(CopyOnWriteArrayList copyOnWriteArrayList, int i8, C0300y c0300y) {
        this.f5032c = copyOnWriteArrayList;
        this.f5030a = i8;
        this.f5031b = c0300y;
    }

    public final void a(InterfaceC3172j interfaceC3172j) {
        for (C c8 : this.f5032c) {
            p117p0.M.V(c8.f5028a, new RunnableC3004t(27, interfaceC3172j, c8.f5029b));
        }
    }

    public final void b(int i8, C3136t c3136t, int i9, Object obj, long j8) {
        a(new C0079d(12, this, new C0296u(1, i8, c3136t, i9, obj, p117p0.M.e0(j8), -9223372036854775807L)));
    }

    public final void c(C0292p c0292p, int i8, int i9, C3136t c3136t, int i10, Object obj, long j8, long j9) {
        a(new B(this, c0292p, new C0296u(i8, i9, c3136t, i10, obj, p117p0.M.e0(j8), p117p0.M.e0(j9)), 1));
    }

    public final void d(C0292p c0292p, int i8, int i9, C3136t c3136t, int i10, Object obj, long j8, long j9) {
        a(new B(this, c0292p, new C0296u(i8, i9, c3136t, i10, obj, p117p0.M.e0(j8), p117p0.M.e0(j9)), 0));
    }

    public final void e(C0292p c0292p, int i8, int i9, C3136t c3136t, int i10, Object obj, long j8, long j9, IOException iOException, boolean z7) {
        a(new C0.p(this, c0292p, new C0296u(i8, i9, c3136t, i10, obj, p117p0.M.e0(j8), p117p0.M.e0(j9)), iOException, z7));
    }

    public final void f(C0292p c0292p, int i8, IOException iOException, boolean z7) {
        e(c0292p, i8, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, iOException, z7);
    }

    public final void g(C0292p c0292p, int i8, int i9, C3136t c3136t, int i10, Object obj, long j8, long j9, int i11) {
        a(new C0.k(this, c0292p, new C0296u(i8, i9, c3136t, i10, obj, p117p0.M.e0(j8), p117p0.M.e0(j9)), i11, 2));
    }

    public final void h(int i8, long j8, long j9) {
        C0296u c0296u = new C0296u(1, i8, null, 3, null, p117p0.M.e0(j8), p117p0.M.e0(j9));
        C0300y c0300y = this.f5031b;
        c0300y.getClass();
        a(new A(this, c0300y, c0296u, 0));
    }
}
