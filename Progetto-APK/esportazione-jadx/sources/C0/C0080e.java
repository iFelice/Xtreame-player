package C0;

import com.google.android.gms.internal.measurement.H1;
import p117p0.InterfaceC3172j;

/* JADX INFO: renamed from: C0.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0080e implements p117p0.u, InterfaceC3172j {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f1296G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f1297H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ long f1298I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ int f1299J;

    public /* synthetic */ C0080e(int i8, int i9, long j8, Object obj) {
        this.f1296G = i9;
        this.f1297H = obj;
        this.f1298I = j8;
        this.f1299J = i8;
    }

    @Override // p117p0.InterfaceC3172j
    public final void accept(Object obj) {
        p126q1.o oVar = (p126q1.o) this.f1297H;
        p126q1.a aVar = (p126q1.a) obj;
        H1.j(oVar.f29571i);
        z4.H h8 = aVar.f29531a;
        oVar.f29565c.getClass();
        byte[] bArrB = F2.G.B(aVar.f29533c, h8);
        p117p0.E e8 = oVar.f29566d;
        e8.getClass();
        e8.J(bArrB.length, bArrB);
        oVar.f29563a.e(bArrB.length, e8);
        long j8 = this.f1298I;
        long j9 = aVar.f29532b;
        if (j9 == -9223372036854775807L) {
            H1.i(oVar.f29571i.f27046t == Long.MAX_VALUE);
        } else {
            long j10 = oVar.f29571i.f27046t;
            j8 = j10 == Long.MAX_VALUE ? j8 + j9 : j9 + j10;
        }
        oVar.f29563a.d(j8, this.f1299J | 1, bArrB.length, 0, null);
    }

    @Override // p117p0.u
    public final void invoke(Object obj) {
        InterfaceC0078c interfaceC0078c = (InterfaceC0078c) obj;
        switch (this.f1296G) {
            case 0:
                interfaceC0078c.getClass();
                break;
            default:
                interfaceC0078c.getClass();
                break;
        }
    }

    public /* synthetic */ C0080e(int i8, long j8, C0077b c0077b) {
        this.f1296G = 0;
        this.f1297H = c0077b;
        this.f1299J = i8;
        this.f1298I = j8;
    }
}
