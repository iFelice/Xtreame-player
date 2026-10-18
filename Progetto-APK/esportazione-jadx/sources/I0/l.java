package I0;

import java.util.List;
import java.util.Map;
import p094m0.C3131n;
import z4.H;
import z4.J;

/* JADX INFO: loaded from: classes.dex */
public final class l extends p {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f3878d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f3879e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f3880f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f3881g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f3882h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f3883i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f3884j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f3885k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f3886l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final long f3887m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final long f3888n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final boolean f3889o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final boolean f3890p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final C3131n f3891q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final H f3892r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final H f3893s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final J f3894t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final long f3895u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final k f3896v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final H f3897w;

    public l(int i8, String str, List list, long j8, boolean z7, long j9, boolean z8, int i9, long j10, int i10, long j11, long j12, boolean z9, boolean z10, boolean z11, C3131n c3131n, List list2, List list3, k kVar, Map map, List list4) {
        super(str, list, z9);
        this.f3878d = i8;
        this.f3882h = j9;
        this.f3881g = z7;
        this.f3883i = z8;
        this.f3884j = i9;
        this.f3885k = j10;
        this.f3886l = i10;
        this.f3887m = j11;
        this.f3888n = j12;
        this.f3889o = z10;
        this.f3890p = z11;
        this.f3891q = c3131n;
        this.f3892r = H.s(list2);
        this.f3893s = H.s(list3);
        this.f3894t = J.b(map);
        this.f3897w = H.s(list4);
        if (!list3.isEmpty()) {
            g gVar = (g) p190y4.k.G(list3);
            this.f3895u = gVar.f3866K + gVar.f3864I;
        } else if (list2.isEmpty()) {
            this.f3895u = 0L;
        } else {
            i iVar = (i) p190y4.k.G(list2);
            this.f3895u = iVar.f3866K + iVar.f3864I;
        }
        this.f3879e = j8 != -9223372036854775807L ? j8 >= 0 ? Math.min(this.f3895u, j8) : Math.max(0L, this.f3895u + j8) : -9223372036854775807L;
        this.f3880f = j8 >= 0;
        this.f3896v = kVar;
    }

    @Override // M0.a
    public final Object a(List list) {
        return this;
    }
}
