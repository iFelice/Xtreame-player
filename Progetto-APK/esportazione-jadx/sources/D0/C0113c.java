package D0;

import android.os.Build;
import com.google.android.gms.internal.ads.AbstractC1349gB;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: renamed from: D0.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0113c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final C0113c f1912d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1913a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f1914b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final z4.L f1915c;

    static {
        C0113c c0113c;
        if (Build.VERSION.SDK_INT >= 33) {
            z4.K k8 = new z4.K(4);
            for (int i8 = 1; i8 <= 10; i8++) {
                k8.g0(Integer.valueOf(p117p0.M.r(i8)));
            }
            c0113c = new C0113c(2, k8.n0());
        } else {
            c0113c = new C0113c(2, 10);
        }
        f1912d = c0113c;
    }

    public C0113c(int i8, Set set) {
        this.f1913a = i8;
        z4.L lR = z4.L.r(set);
        this.f1915c = lR;
        AbstractC1349gB it = lR.iterator();
        int iMax = 0;
        while (it.hasNext()) {
            iMax = Math.max(iMax, Integer.bitCount(((Integer) it.next()).intValue()));
        }
        this.f1914b = iMax;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0113c)) {
            return false;
        }
        C0113c c0113c = (C0113c) obj;
        return this.f1913a == c0113c.f1913a && this.f1914b == c0113c.f1914b && Objects.equals(this.f1915c, c0113c.f1915c);
    }

    public final int hashCode() {
        int i8 = ((this.f1913a * 31) + this.f1914b) * 31;
        z4.L l4 = this.f1915c;
        return i8 + (l4 == null ? 0 : l4.hashCode());
    }

    public final String toString() {
        return "AudioProfile[format=" + this.f1913a + ", maxChannelCount=" + this.f1914b + ", channelMasks=" + this.f1915c + "]";
    }

    public C0113c(int i8, int i9) {
        this.f1913a = i8;
        this.f1914b = i9;
        this.f1915c = null;
    }
}
