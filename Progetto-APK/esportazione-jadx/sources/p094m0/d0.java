package p094m0;

import com.google.protobuf.U2;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f26825a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f26826b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f26827c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f26828d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f26829e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f26830f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public C3120c f26831g = C3120c.f26819c;

    static {
        U2.r(0, 1, 2, 3, 4);
    }

    public final long a(int i8, int i9) {
        C3119b c3119bA = this.f26831g.a(i8);
        if (c3119bA.f26806b != -1) {
            return c3119bA.f26811g[i9];
        }
        return -9223372036854775807L;
    }

    public final int b(long j8) {
        int i8;
        C3119b c3119bA;
        int i9;
        C3120c c3120c = this.f26831g;
        long j9 = this.f26828d;
        c3120c.getClass();
        if (j8 == Long.MIN_VALUE) {
            return -1;
        }
        if (j9 != -9223372036854775807L && j8 >= j9) {
            return -1;
        }
        int i10 = 0;
        while (true) {
            i8 = c3120c.f26821a;
            if (i10 >= i8 || ((c3120c.a(i10).f26805a == Long.MIN_VALUE || c3120c.a(i10).f26805a > j8) && ((i9 = (c3119bA = c3120c.a(i10)).f26806b) == -1 || c3119bA.a(-1) < i9))) {
                break;
            }
            i10++;
        }
        if (i10 >= i8) {
            return -1;
        }
        if (j9 == -9223372036854775807L || c3120c.a(i10).f26805a <= j9) {
            return i10;
        }
        return -1;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0026  */
    public final int c(long j8) {
        int i8;
        C3120c c3120c = this.f26831g;
        long j9 = this.f26828d;
        int i9 = c3120c.f26821a;
        int i10 = i9 - 1;
        if (i10 == i9 - 1) {
            C3119b c3119bA = c3120c.a(i10);
            if (c3119bA.f26815k && c3119bA.f26805a == Long.MIN_VALUE && c3119bA.f26806b == -1) {
                i8 = 1;
            } else {
                i8 = 0;
            }
        } else {
            i8 = 0;
        }
        int i11 = i10 - i8;
        while (i11 >= 0 && j8 != Long.MIN_VALUE) {
            C3119b c3119bA2 = c3120c.a(i11);
            long j10 = c3119bA2.f26805a;
            if (j10 != Long.MIN_VALUE) {
                if (j8 >= j10) {
                    break;
                }
                i11--;
            } else {
                if (j9 != -9223372036854775807L && ((!c3119bA2.f26815k || j10 != Long.MIN_VALUE || c3119bA2.f26806b != -1) && j8 >= j9)) {
                    break;
                }
                i11--;
            }
        }
        if (i11 < 0) {
            return -1;
        }
        C3119b c3119bA3 = c3120c.a(i11);
        int i12 = c3119bA3.f26806b;
        if (i12 != -1) {
            for (int i13 = 0; i13 < i12; i13++) {
                int i14 = c3119bA3.f26810f[i13];
                if (i14 != 0 && i14 != 1) {
                }
            }
            return -1;
        }
        return i11;
    }

    public final long d(int i8) {
        return this.f26831g.a(i8).f26805a;
    }

    public final int e(int i8, int i9) {
        C3119b c3119bA = this.f26831g.a(i8);
        if (c3119bA.f26806b != -1) {
            return c3119bA.f26810f[i9];
        }
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !d0.class.equals(obj.getClass())) {
            return false;
        }
        d0 d0Var = (d0) obj;
        return Objects.equals(this.f26825a, d0Var.f26825a) && Objects.equals(this.f26826b, d0Var.f26826b) && this.f26827c == d0Var.f26827c && this.f26828d == d0Var.f26828d && this.f26829e == d0Var.f26829e && this.f26830f == d0Var.f26830f && Objects.equals(this.f26831g, d0Var.f26831g);
    }

    public final int f(int i8) {
        return this.f26831g.a(i8).a(-1);
    }

    public final long g() {
        return this.f26829e;
    }

    public final boolean h(int i8) {
        C3120c c3120c = this.f26831g;
        int i9 = c3120c.f26821a;
        if (i8 == i9 - 1 && i8 == i9 - 1) {
            C3119b c3119bA = c3120c.a(i8);
            if (c3119bA.f26815k && c3119bA.f26805a == Long.MIN_VALUE && c3119bA.f26806b == -1) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        Object obj = this.f26825a;
        int iHashCode = (217 + (obj == null ? 0 : obj.hashCode())) * 31;
        Object obj2 = this.f26826b;
        int iHashCode2 = (((iHashCode + (obj2 != null ? obj2.hashCode() : 0)) * 31) + this.f26827c) * 31;
        long j8 = this.f26828d;
        int i8 = (iHashCode2 + ((int) (j8 ^ (j8 >>> 32)))) * 31;
        long j9 = this.f26829e;
        return this.f26831g.hashCode() + ((((i8 + ((int) (j9 ^ (j9 >>> 32)))) * 31) + (this.f26830f ? 1 : 0)) * 31);
    }

    public final boolean i(int i8) {
        return this.f26831g.a(i8).f26814j;
    }
}
