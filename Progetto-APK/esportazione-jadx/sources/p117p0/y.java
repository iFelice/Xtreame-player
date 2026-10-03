package p117p0;

import com.google.protobuf.U2;
import java.util.Arrays;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public final class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f28127a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long[] f28128b;

    public y() {
        this(32, 0);
    }

    public final void a(long j8) {
        int i8 = this.f28127a;
        long[] jArr = this.f28128b;
        if (i8 == jArr.length) {
            this.f28128b = Arrays.copyOf(jArr, i8 * 2);
        }
        long[] jArr2 = this.f28128b;
        int i9 = this.f28127a;
        this.f28127a = i9 + 1;
        jArr2[i9] = j8;
    }

    public final void b(long[] jArr) {
        int length = this.f28127a + jArr.length;
        long[] jArr2 = this.f28128b;
        if (length > jArr2.length) {
            this.f28128b = Arrays.copyOf(jArr2, Math.max(jArr2.length * 2, length));
        }
        System.arraycopy(jArr, 0, this.f28128b, this.f28127a, jArr.length);
        this.f28127a = length;
    }

    public final long c(int i8) {
        if (i8 >= 0 && i8 < this.f28127a) {
            return this.f28128b[i8];
        }
        StringBuilder sbK = r.k("Invalid index ", i8, ", size is ");
        sbK.append(this.f28127a);
        throw new IndexOutOfBoundsException(sbK.toString());
    }

    public final long d(int i8) {
        if (i8 < 0 || i8 >= this.f28127a) {
            throw new IndexOutOfBoundsException(U2.j("Invalid index ", i8, ", size is ", this.f28127a));
        }
        return this.f28128b[i8];
    }

    public y(int i8, int i9) {
        if (i9 != 1) {
            this.f28128b = new long[i8];
        } else {
            this.f28128b = new long[32];
        }
    }
}
