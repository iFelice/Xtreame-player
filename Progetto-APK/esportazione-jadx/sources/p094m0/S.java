package p094m0;

import com.google.android.gms.internal.measurement.H1;
import java.util.Locale;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class S {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final S f26785d = new S(1.0f, 1.0f);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f26786a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f26787b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f26788c;

    static {
        M.L(0);
        M.L(1);
    }

    public S(float f8, float f9) {
        H1.d(f8 > 0.0f);
        H1.d(f9 > 0.0f);
        this.f26786a = f8;
        this.f26787b = f9;
        this.f26788c = Math.round(f8 * 1000.0f);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || S.class != obj.getClass()) {
            return false;
        }
        S s7 = (S) obj;
        return this.f26786a == s7.f26786a && this.f26787b == s7.f26787b;
    }

    public final int hashCode() {
        return Float.floatToRawIntBits(this.f26787b) + ((Float.floatToRawIntBits(this.f26786a) + 527) * 31);
    }

    public final String toString() {
        Object[] objArr = {Float.valueOf(this.f26786a), Float.valueOf(this.f26787b)};
        String str = M.f28050a;
        return String.format(Locale.US, "PlaybackParameters(speed=%.2f, pitch=%.2f)", objArr);
    }
}
