package p173w2;

import F2.j;
import F2.k;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class g implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InputStream f30992a;

    @Override // F2.k
    public final long b(long j8) throws IOException {
        if (j8 < 0) {
            return 0L;
        }
        long j9 = j8;
        while (j9 > 0) {
            InputStream inputStream = this.f30992a;
            long jSkip = inputStream.skip(j9);
            if (jSkip > 0) {
                j9 -= jSkip;
            } else {
                if (inputStream.read() == -1) {
                    break;
                }
                j9--;
            }
        }
        return j8 - j9;
    }

    @Override // F2.k
    public final int d() {
        return (e() << 8) | e();
    }

    @Override // F2.k
    public final short e() throws IOException {
        int i8 = this.f30992a.read();
        if (i8 != -1) {
            return (short) i8;
        }
        throw new j();
    }

    @Override // F2.k
    public final int f(int i8, byte[] bArr) throws j {
        int i9 = 0;
        int i10 = 0;
        while (i9 < i8 && (i10 = this.f30992a.read(bArr, i9, i8 - i9)) != -1) {
            i9 += i10;
        }
        if (i9 == 0 && i10 == -1) {
            throw new j();
        }
        return i9;
    }
}
