package p094m0;

import com.google.android.gms.internal.measurement.H1;
import java.util.Arrays;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class l0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f26948a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final g0 f26949b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f26950c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int[] f26951d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean[] f26952e;

    static {
        M.L(0);
        M.L(1);
        M.L(3);
        M.L(4);
    }

    public l0(g0 g0Var, boolean z7, int[] iArr, boolean[] zArr) {
        int i8 = g0Var.f26857a;
        this.f26948a = i8;
        boolean z8 = false;
        H1.d(i8 == iArr.length && i8 == zArr.length);
        this.f26949b = g0Var;
        if (z7 && i8 > 1) {
            z8 = true;
        }
        this.f26950c = z8;
        this.f26951d = (int[]) iArr.clone();
        this.f26952e = (boolean[]) zArr.clone();
    }

    public final int a() {
        return this.f26949b.f26859c;
    }

    public final boolean b() {
        for (boolean z7 : this.f26952e) {
            if (z7) {
                return true;
            }
        }
        return false;
    }

    public final boolean c() {
        for (int i8 = 0; i8 < this.f26951d.length; i8++) {
            if (d(i8)) {
                return true;
            }
        }
        return false;
    }

    public final boolean d(int i8) {
        return this.f26951d[i8] == 4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || l0.class != obj.getClass()) {
            return false;
        }
        l0 l0Var = (l0) obj;
        return this.f26950c == l0Var.f26950c && this.f26949b.equals(l0Var.f26949b) && Arrays.equals(this.f26951d, l0Var.f26951d) && Arrays.equals(this.f26952e, l0Var.f26952e);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f26952e) + ((Arrays.hashCode(this.f26951d) + (((this.f26949b.hashCode() * 31) + (this.f26950c ? 1 : 0)) * 31)) * 31);
    }
}
