package p102n0;

import java.util.Objects;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final e f27321e = new e(-1, -1, -1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f27322a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f27323b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f27324c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f27325d;

    public e(int i8, int i9, int i10) {
        this.f27322a = i8;
        this.f27323b = i9;
        this.f27324c = i10;
        this.f27325d = M.M(i10) ? M.s(i10) * i9 : -1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f27322a == eVar.f27322a && this.f27323b == eVar.f27323b && this.f27324c == eVar.f27324c;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.f27322a), Integer.valueOf(this.f27323b), Integer.valueOf(this.f27324c));
    }

    public final String toString() {
        return "AudioFormat[sampleRate=" + this.f27322a + ", channelCount=" + this.f27323b + ", encoding=" + this.f27324c + ']';
    }
}
