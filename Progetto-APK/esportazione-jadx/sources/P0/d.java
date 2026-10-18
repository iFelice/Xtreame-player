package P0;

import A0.O;
import W0.K;
import W0.L;
import p094m0.C3136t;
import p094m0.InterfaceC3127j;
import p117p0.E;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class d implements L {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f5704a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C3136t f5705b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final W0.q f5706c = new W0.q();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public C3136t f5707d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public L f5708e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f5709f;

    public d(C3136t c3136t, int i8, int i9) {
        this.f5704a = i9;
        this.f5705b = c3136t;
    }

    @Override // W0.L
    public final void a(int i8, int i9, E e8) {
        L l4 = this.f5708e;
        String str = M.f28050a;
        l4.e(i8, e8);
    }

    @Override // W0.L
    public final void b(C3136t c3136t) {
        C3136t c3136t2 = this.f5705b;
        if (c3136t2 != null) {
            c3136t = c3136t.e(c3136t2);
        }
        this.f5707d = c3136t;
        L l4 = this.f5708e;
        String str = M.f28050a;
        l4.b(c3136t);
    }

    @Override // W0.L
    public final int c(InterfaceC3127j interfaceC3127j, int i8, boolean z7) {
        L l4 = this.f5708e;
        String str = M.f28050a;
        return l4.f(interfaceC3127j, i8, z7);
    }

    @Override // W0.L
    public final void d(long j8, int i8, int i9, int i10, K k8) {
        long j9 = this.f5709f;
        if (j9 != -9223372036854775807L && j8 >= j9) {
            this.f5708e = this.f5706c;
        }
        L l4 = this.f5708e;
        String str = M.f28050a;
        l4.d(j8, i8, i9, i10, k8);
    }

    @Override // W0.L
    public final /* synthetic */ void e(int i8, E e8) {
        O.b(this, e8, i8);
    }

    @Override // W0.L
    public final int f(InterfaceC3127j interfaceC3127j, int i8, boolean z7) {
        return c(interfaceC3127j, i8, z7);
    }
}
