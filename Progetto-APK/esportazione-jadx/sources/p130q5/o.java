package p130q5;

import p027d2.v;

/* JADX INFO: loaded from: classes2.dex */
public class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f29645a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f29646b;

    public o(float f8, float f9) {
        this.f29645a = f8;
        this.f29646b = f9;
    }

    public static float a(o oVar, o oVar2) {
        return v.h(oVar.f29645a, oVar.f29646b, oVar2.f29645a, oVar2.f29646b);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof o) {
            o oVar = (o) obj;
            if (this.f29645a == oVar.f29645a && this.f29646b == oVar.f29646b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.f29646b) + (Float.floatToIntBits(this.f29645a) * 31);
    }

    public final String toString() {
        return "(" + this.f29645a + ',' + this.f29646b + ')';
    }
}
