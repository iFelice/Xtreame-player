package p132r;

import O1.L;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;
import p102n0.c;
import p162u6.j;

/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f29663a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f29664b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f29665c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[] f29666d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f29667e;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ h() {
        this(8);
        this.f29663a = 0;
    }

    public final void a(int i8) {
        int[] iArr = this.f29666d;
        int i9 = this.f29665c;
        iArr[i9] = i8;
        int i10 = this.f29667e & (i9 + 1);
        this.f29665c = i10;
        int i11 = this.f29664b;
        if (i10 == i11) {
            int length = iArr.length;
            int i12 = length - i11;
            int i13 = length << 1;
            if (i13 < 0) {
                throw new RuntimeException("Max array capacity exceeded");
            }
            int[] iArr2 = new int[i13];
            j.L(0, i11, length, iArr, iArr2);
            j.L(i12, 0, this.f29664b, this.f29666d, iArr2);
            this.f29666d = iArr2;
            this.f29664b = 0;
            this.f29665c = length;
            this.f29667e = i13 - 1;
        }
    }

    public final void b(int i8, int i9) {
        if (i8 < 0) {
            throw new IllegalArgumentException("Layout positions must be non-negative");
        }
        if (i9 < 0) {
            throw new IllegalArgumentException("Pixel distance must be non-negative");
        }
        int i10 = this.f29667e;
        int i11 = i10 * 2;
        int[] iArr = this.f29666d;
        if (iArr == null) {
            int[] iArr2 = new int[4];
            this.f29666d = iArr2;
            Arrays.fill(iArr2, -1);
        } else if (i11 >= iArr.length) {
            int[] iArr3 = new int[i10 * 4];
            this.f29666d = iArr3;
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
        }
        int[] iArr4 = this.f29666d;
        iArr4[i11] = i8;
        iArr4[i11 + 1] = i9;
        this.f29667e++;
    }

    public final void c(RecyclerView recyclerView, boolean z7) {
        this.f29667e = 0;
        int[] iArr = this.f29666d;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
        L l4 = recyclerView.f9646T;
        if (recyclerView.f9644S == null || l4 == null || !l4.f5287i) {
            return;
        }
        if (z7) {
            if (!recyclerView.f9628K.g()) {
                l4.j(recyclerView.f9644S.a(), this);
            }
        } else if (!recyclerView.O()) {
            l4.i(this.f29664b, this.f29665c, recyclerView.f9635N0, this);
        }
        int i8 = this.f29667e;
        if (i8 > l4.f5288j) {
            l4.f5288j = i8;
            l4.f5289k = z7;
            recyclerView.f9624I.n();
        }
    }

    public final int d(int i8) {
        switch (this.f29663a) {
            case 0:
                if (i8 < 0 || i8 >= h()) {
                    throw new ArrayIndexOutOfBoundsException();
                }
                return this.f29666d[this.f29667e & (this.f29664b + i8)];
            default:
                return this.f29666d[i8];
        }
    }

    public final boolean e(int i8) {
        return ((1 << i8) & this.f29664b) != 0;
    }

    public final int f() {
        int i8 = this.f29664b;
        if (i8 == this.f29665c) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i9 = this.f29666d[i8];
        this.f29664b = (i8 + 1) & this.f29667e;
        return i9;
    }

    public final void g(int i8, int i9) {
        int[] iArr = this.f29666d;
        if (i8 >= iArr.length) {
            return;
        }
        int i10 = 1 << i8;
        this.f29664b |= i10;
        this.f29665c &= ~i10;
        this.f29667e = (~i10) & this.f29667e;
        iArr[i8] = i9;
    }

    public final int h() {
        switch (this.f29663a) {
            case 0:
                return (this.f29665c - this.f29664b) & this.f29667e;
            default:
                return Integer.bitCount(this.f29664b);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public h(int i8, int i9) {
        this();
        this.f29663a = i8;
        if (i8 != 1) {
            if (i8 != 2) {
            } else {
                this.f29666d = new int[10];
            }
        }
    }

    public h(int i8) {
        this.f29663a = 0;
        if (!(i8 >= 1)) {
            c.p("capacity must be >= 1");
            throw null;
        }
        if (i8 <= 1073741824) {
            i8 = Integer.bitCount(i8) != 1 ? Integer.highestOneBit(i8 - 1) << 1 : i8;
            this.f29667e = i8 - 1;
            this.f29666d = new int[i8];
            return;
        }
        c.p("capacity must be <= 2^30");
        throw null;
    }
}
