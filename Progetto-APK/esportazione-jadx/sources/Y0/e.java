package Y0;

import W0.E;
import W0.G;
import W0.L;
import com.google.android.gms.internal.measurement.H1;
import java.math.RoundingMode;
import org.videolan.libvlc.interfaces.IMediaList;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d f8029a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final L f8030b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f8031c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f8032d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f8033e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f8034f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f8035g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f8036h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f8037i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f8038j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f8039k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f8040l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long[] f8041m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int[] f8042n;

    public e(int i8, d dVar, L l4) {
        this.f8029a = dVar;
        int iA = dVar.a();
        boolean z7 = true;
        if (iA != 1 && iA != 2) {
            z7 = false;
        }
        H1.d(z7);
        int i9 = (((i8 % 10) + 48) << 8) | ((i8 / 10) + 48);
        this.f8031c = (iA == 2 ? 1667497984 : 1651965952) | i9;
        int i10 = dVar.f8026d;
        long j8 = ((long) dVar.f8024b) * 1000000;
        long j9 = dVar.f8025c;
        String str = M.f28050a;
        this.f8033e = M.Z(i10, j8, j9, RoundingMode.DOWN);
        this.f8030b = l4;
        this.f8032d = iA == 2 ? i9 | 1650720768 : -1;
        this.f8040l = -1L;
        this.f8041m = new long[IMediaList.Event.ItemAdded];
        this.f8042n = new int[IMediaList.Event.ItemAdded];
        this.f8034f = i10;
    }

    public final G a(int i8) {
        return new G(((this.f8033e * ((long) 1)) / ((long) this.f8034f)) * ((long) this.f8042n[i8]), this.f8041m[i8]);
    }

    public final E b(long j8) {
        if (this.f8039k == 0) {
            G g8 = new G(0L, this.f8040l);
            return new E(g8, g8);
        }
        int i8 = (int) (j8 / ((this.f8033e * ((long) 1)) / ((long) this.f8034f)));
        int iD = M.d(this.f8042n, i8, true, true);
        if (this.f8042n[iD] == i8) {
            G gA = a(iD);
            return new E(gA, gA);
        }
        G gA2 = a(iD);
        int i9 = iD + 1;
        return i9 < this.f8041m.length ? new E(gA2, a(i9)) : new E(gA2, gA2);
    }
}
