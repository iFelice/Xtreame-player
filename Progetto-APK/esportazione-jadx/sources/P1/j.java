package P1;

import java.util.Arrays;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long[] f5793a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean[] f5794b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int[] f5795c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f5796d;

    public j(int i8) {
        this.f5793a = new long[i8];
        this.f5794b = new boolean[i8];
        this.f5795c = new int[i8];
    }

    public final int[] a() {
        synchronized (this) {
            try {
                if (!this.f5796d) {
                    return null;
                }
                long[] jArr = this.f5793a;
                int length = jArr.length;
                int i8 = 0;
                int i9 = 0;
                while (i8 < length) {
                    int i10 = i9 + 1;
                    int i11 = 1;
                    boolean z7 = jArr[i8] > 0;
                    boolean[] zArr = this.f5794b;
                    if (z7 != zArr[i9]) {
                        int[] iArr = this.f5795c;
                        if (!z7) {
                            i11 = 2;
                        }
                        iArr[i9] = i11;
                    } else {
                        this.f5795c[i9] = 0;
                    }
                    zArr[i9] = z7;
                    i8++;
                    i9 = i10;
                }
                this.f5796d = false;
                return (int[]) this.f5795c.clone();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean b(int... iArr) {
        boolean z7;
        q0.h(iArr, "tableIds");
        synchronized (this) {
            z7 = false;
            for (int i8 : iArr) {
                long[] jArr = this.f5793a;
                long j8 = jArr[i8];
                jArr[i8] = 1 + j8;
                if (j8 == 0) {
                    z7 = true;
                    this.f5796d = true;
                }
            }
        }
        return z7;
    }

    public final boolean c(int... iArr) {
        boolean z7;
        q0.h(iArr, "tableIds");
        synchronized (this) {
            z7 = false;
            for (int i8 : iArr) {
                long[] jArr = this.f5793a;
                long j8 = jArr[i8];
                jArr[i8] = j8 - 1;
                if (j8 == 1) {
                    z7 = true;
                    this.f5796d = true;
                }
            }
        }
        return z7;
    }

    public final void d() {
        synchronized (this) {
            Arrays.fill(this.f5794b, false);
            this.f5796d = true;
        }
    }
}
