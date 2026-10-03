package p094m0;

import java.util.Arrays;
import java.util.List;
import okhttp3.HttpUrl;
import p117p0.M;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class N {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final M[] f26777a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f26778b;

    public N(List list) {
        this((M[]) list.toArray(new M[0]));
    }

    public final N a(M... mArr) {
        if (mArr.length == 0) {
            return this;
        }
        String str = M.f28050a;
        M[] mArr2 = this.f26777a;
        Object[] objArrCopyOf = Arrays.copyOf(mArr2, mArr2.length + mArr.length);
        System.arraycopy(mArr, 0, objArrCopyOf, mArr2.length, mArr.length);
        return new N(this.f26778b, (M[]) objArrCopyOf);
    }

    public final N b(N n7) {
        return n7 == null ? this : a(n7.f26777a);
    }

    public final M c(int i8) {
        return this.f26777a[i8];
    }

    public final int d() {
        return this.f26777a.length;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || N.class != obj.getClass()) {
            return false;
        }
        N n7 = (N) obj;
        return Arrays.equals(this.f26777a, n7.f26777a) && this.f26778b == n7.f26778b;
    }

    public final int hashCode() {
        return q0.y(this.f26778b) + (Arrays.hashCode(this.f26777a) * 31);
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("entries=");
        sb.append(Arrays.toString(this.f26777a));
        long j8 = this.f26778b;
        if (j8 == -9223372036854775807L) {
            str = HttpUrl.FRAGMENT_ENCODE_SET;
        } else {
            str = ", presentationTimeUs=" + j8;
        }
        sb.append(str);
        return sb.toString();
    }

    public N(M... mArr) {
        this(-9223372036854775807L, mArr);
    }

    public N(long j8, M... mArr) {
        this.f26778b = j8;
        this.f26777a = mArr;
    }
}
