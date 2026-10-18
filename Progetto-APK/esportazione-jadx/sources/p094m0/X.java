package p094m0;

import com.google.protobuf.U2;
import java.util.Objects;
import p000a.r;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class X {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f26792a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f26793b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final I f26794c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f26795d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f26796e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f26797f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f26798g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f26799h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f26800i;

    static {
        U2.r(0, 1, 2, 3, 4);
        M.L(5);
        M.L(6);
    }

    public X(Object obj, int i8, I i9, Object obj2, int i10, long j8, long j9, int i11, int i12) {
        this.f26792a = obj;
        this.f26793b = i8;
        this.f26794c = i9;
        this.f26795d = obj2;
        this.f26796e = i10;
        this.f26797f = j8;
        this.f26798g = j9;
        this.f26799h = i11;
        this.f26800i = i12;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || X.class != obj.getClass()) {
            return false;
        }
        X x7 = (X) obj;
        return this.f26793b == x7.f26793b && this.f26796e == x7.f26796e && this.f26797f == x7.f26797f && this.f26798g == x7.f26798g && this.f26799h == x7.f26799h && this.f26800i == x7.f26800i && Objects.equals(this.f26794c, x7.f26794c) && Objects.equals(this.f26792a, x7.f26792a) && Objects.equals(this.f26795d, x7.f26795d);
    }

    public final int hashCode() {
        return Objects.hash(this.f26792a, Integer.valueOf(this.f26793b), this.f26794c, this.f26795d, Integer.valueOf(this.f26796e), Long.valueOf(this.f26797f), Long.valueOf(this.f26798g), Integer.valueOf(this.f26799h), Integer.valueOf(this.f26800i));
    }

    public final String toString() {
        String str = "mediaItem=" + this.f26793b + ", period=" + this.f26796e + ", pos=" + this.f26797f;
        int i8 = this.f26799h;
        if (i8 == -1) {
            return str;
        }
        StringBuilder sbL = r.l(str, ", contentPos=");
        sbL.append(this.f26798g);
        sbL.append(", adGroup=");
        sbL.append(i8);
        sbL.append(", ad=");
        sbL.append(this.f26800i);
        return sbL.toString();
    }
}
