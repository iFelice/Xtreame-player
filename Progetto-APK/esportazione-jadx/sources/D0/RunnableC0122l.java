package D0;

import C0.C0077b;
import O0.C0300y;
import java.util.HashMap;

/* JADX INFO: renamed from: D0.l, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0122l implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f1953G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ int f1954H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ long f1955I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ long f1956J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ Object f1957K;

    public /* synthetic */ RunnableC0122l(Object obj, int i8, long j8, long j9, int i9) {
        this.f1953G = i9;
        this.f1957K = obj;
        this.f1954H = i8;
        this.f1955I = j8;
        this.f1956J = j9;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f1953G;
        Object obj = this.f1957K;
        switch (i8) {
            case 0:
                C0124n c0124n = (C0124n) obj;
                c0124n.getClass();
                String str = p117p0.M.f28050a;
                C0.A a8 = (C0.A) ((B0.L) c0124n.f1962b).f743G.f790X;
                final C0077b c0077bT = a8.T();
                final int i9 = this.f1954H;
                final int i10 = 0;
                final long j8 = this.f1955I;
                final long j9 = this.f1956J;
                a8.U(c0077bT, 1011, new p117p0.u(c0077bT, i9, j8, j9, i10) { // from class: C0.w

                    /* JADX INFO: renamed from: G, reason: collision with root package name */
                    public final /* synthetic */ int f1328G;

                    /* JADX INFO: renamed from: H, reason: collision with root package name */
                    public final /* synthetic */ C0077b f1329H;

                    /* JADX INFO: renamed from: I, reason: collision with root package name */
                    public final /* synthetic */ int f1330I;

                    /* JADX INFO: renamed from: J, reason: collision with root package name */
                    public final /* synthetic */ long f1331J;

                    {
                        this.f1328G = i10;
                    }

                    @Override // p117p0.u
                    public final void invoke(Object obj2) {
                        InterfaceC0078c interfaceC0078c = (InterfaceC0078c) obj2;
                        switch (this.f1328G) {
                            case 0:
                                interfaceC0078c.getClass();
                                break;
                            default:
                                F f8 = (F) interfaceC0078c;
                                f8.getClass();
                                C0077b c0077b = this.f1329H;
                                C0300y c0300y = c0077b.f1286d;
                                if (c0300y != null) {
                                    String strD = f8.f1255c.d(c0077b.f1284b, c0300y);
                                    HashMap map = f8.f1261i;
                                    Long l4 = (Long) map.get(strD);
                                    HashMap map2 = f8.f1260h;
                                    Long l8 = (Long) map2.get(strD);
                                    map.put(strD, Long.valueOf((l4 == null ? 0L : l4.longValue()) + this.f1331J));
                                    map2.put(strD, Long.valueOf((l8 != null ? l8.longValue() : 0L) + ((long) this.f1330I)));
                                }
                                break;
                        }
                    }
                });
                break;
            default:
                C0.A a9 = (C0.A) ((S0.b) obj).f6320b;
                C0.z zVar = a9.f1229J;
                final C0077b c0077bQ = a9.Q(zVar.f1337b.isEmpty() ? null : (C0300y) p190y4.k.G(zVar.f1337b));
                final int i11 = this.f1954H;
                final int i12 = 1;
                final long j10 = this.f1955I;
                final long j11 = this.f1956J;
                a9.U(c0077bQ, 1006, new p117p0.u(c0077bQ, i11, j10, j11, i12) { // from class: C0.w

                    /* JADX INFO: renamed from: G, reason: collision with root package name */
                    public final /* synthetic */ int f1328G;

                    /* JADX INFO: renamed from: H, reason: collision with root package name */
                    public final /* synthetic */ C0077b f1329H;

                    /* JADX INFO: renamed from: I, reason: collision with root package name */
                    public final /* synthetic */ int f1330I;

                    /* JADX INFO: renamed from: J, reason: collision with root package name */
                    public final /* synthetic */ long f1331J;

                    {
                        this.f1328G = i12;
                    }

                    @Override // p117p0.u
                    public final void invoke(Object obj2) {
                        InterfaceC0078c interfaceC0078c = (InterfaceC0078c) obj2;
                        switch (this.f1328G) {
                            case 0:
                                interfaceC0078c.getClass();
                                break;
                            default:
                                F f8 = (F) interfaceC0078c;
                                f8.getClass();
                                C0077b c0077b = this.f1329H;
                                C0300y c0300y = c0077b.f1286d;
                                if (c0300y != null) {
                                    String strD = f8.f1255c.d(c0077b.f1284b, c0300y);
                                    HashMap map = f8.f1261i;
                                    Long l4 = (Long) map.get(strD);
                                    HashMap map2 = f8.f1260h;
                                    Long l8 = (Long) map2.get(strD);
                                    map.put(strD, Long.valueOf((l4 == null ? 0L : l4.longValue()) + this.f1331J));
                                    map2.put(strD, Long.valueOf((l8 != null ? l8.longValue() : 0L) + ((long) this.f1330I)));
                                }
                                break;
                        }
                    }
                });
                break;
        }
    }
}
