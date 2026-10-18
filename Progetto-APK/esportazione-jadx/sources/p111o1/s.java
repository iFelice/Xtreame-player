package p111o1;

import com.google.android.gms.internal.measurement.H1;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p f27832a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f27833b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long[] f27834c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int[] f27835d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f27836e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long[] f27837f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int[] f27838g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f27839h;

    public s(p pVar, long[] jArr, int[] iArr, int i8, long[] jArr2, int[] iArr2, long j8) {
        H1.d(iArr.length == jArr2.length);
        H1.d(jArr.length == jArr2.length);
        H1.d(iArr2.length == jArr2.length);
        this.f27832a = pVar;
        this.f27834c = jArr;
        this.f27835d = iArr;
        this.f27836e = i8;
        this.f27837f = jArr2;
        this.f27838g = iArr2;
        this.f27839h = j8;
        this.f27833b = jArr.length;
        if (iArr2.length > 0) {
            int length = iArr2.length - 1;
            iArr2[length] = iArr2[length] | 536870912;
        }
    }

    public final int a(long j8) {
        long[] jArr = this.f27837f;
        for (int iA = M.a(jArr, j8, true); iA < jArr.length; iA++) {
            if ((this.f27838g[iA] & 1) != 0) {
                return iA;
            }
        }
        return -1;
    }
}
