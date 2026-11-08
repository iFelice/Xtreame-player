package p021c4;

import P3.b;
import com.bumptech.glide.c;

/* JADX INFO: loaded from: classes.dex */
public final class z1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final A1 f11420a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11421b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f11422c = a();

    public z1(A1 a8) {
        this.f11420a = a8;
    }

    public final long a() {
        A1 a8 = this.f11420a;
        c.h(a8);
        long jLongValue = ((Long) E.f10825v.a(null)).longValue();
        long jLongValue2 = ((Long) E.f10827w.a(null)).longValue();
        for (int i8 = 1; i8 < this.f11421b; i8++) {
            jLongValue += jLongValue;
            if (jLongValue >= jLongValue2) {
                break;
            }
        }
        ((b) a8.c()).getClass();
        return Math.min(jLongValue, jLongValue2) + System.currentTimeMillis();
    }
}
