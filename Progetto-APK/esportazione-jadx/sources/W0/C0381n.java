package W0;

import com.google.android.gms.internal.measurement.H1;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Arrays;
import p094m0.InterfaceC3127j;

/* JADX INFO: renamed from: W0.n, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0381n implements t {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InterfaceC3127j f7442b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f7443c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f7444d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f7446f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f7447g;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte[] f7445e = new byte[65536];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f7441a = new byte[4096];

    static {
        p094m0.J.a("media3.extractor");
    }

    public C0381n(InterfaceC3127j interfaceC3127j, long j8, long j9) {
        this.f7442b = interfaceC3127j;
        this.f7444d = j8;
        this.f7443c = j9;
    }

    @Override // W0.t
    public final boolean b(byte[] bArr, int i8, int i9, boolean z7) throws EOFException, InterruptedIOException {
        int iMin;
        int i10 = this.f7447g;
        if (i10 == 0) {
            iMin = 0;
        } else {
            iMin = Math.min(i10, i9);
            System.arraycopy(this.f7445e, 0, bArr, i8, iMin);
            u(iMin);
        }
        int iT = iMin;
        while (iT < i9 && iT != -1) {
            iT = t(bArr, i8, i9, iT, z7);
        }
        if (iT != -1) {
            this.f7444d += (long) iT;
        }
        return iT != -1;
    }

    @Override // W0.t
    public final void c(int i8, byte[] bArr, int i9) {
        e(bArr, i8, i9, false);
    }

    @Override // W0.t
    public final boolean d(int i8, boolean z7) throws EOFException, InterruptedIOException {
        int iMin = Math.min(this.f7447g, i8);
        u(iMin);
        int iT = iMin;
        while (iT < i8 && iT != -1) {
            iT = t(this.f7441a, -iT, Math.min(i8, this.f7441a.length + iT), iT, z7);
        }
        if (iT != -1) {
            this.f7444d += (long) iT;
        }
        return iT != -1;
    }

    @Override // W0.t
    public final boolean e(byte[] bArr, int i8, int i9, boolean z7) {
        if (!o(i9, z7)) {
            return false;
        }
        System.arraycopy(this.f7445e, this.f7446f - i9, bArr, i8, i9);
        return true;
    }

    @Override // W0.t
    public final long f() {
        return this.f7444d + ((long) this.f7446f);
    }

    @Override // W0.t
    public final void g(int i8) throws EOFException, InterruptedIOException {
        o(i8, false);
    }

    @Override // W0.t
    public final int h(int i8, byte[] bArr, int i9) throws EOFException, InterruptedIOException {
        int iMin;
        s(i9);
        int i10 = this.f7447g;
        int i11 = this.f7446f;
        int i12 = i10 - i11;
        if (i12 == 0) {
            iMin = t(this.f7445e, i11, i9, 0, true);
            if (iMin == -1) {
                return -1;
            }
            this.f7447g += iMin;
        } else {
            iMin = Math.min(i9, i12);
        }
        System.arraycopy(this.f7445e, this.f7446f, bArr, i8, iMin);
        this.f7446f += iMin;
        return iMin;
    }

    @Override // W0.t
    public final int i(int i8) throws EOFException, InterruptedIOException {
        int iMin = Math.min(this.f7447g, i8);
        u(iMin);
        if (iMin == 0) {
            byte[] bArr = this.f7441a;
            iMin = t(bArr, 0, Math.min(i8, bArr.length), 0, true);
        }
        if (iMin != -1) {
            this.f7444d += (long) iMin;
        }
        return iMin;
    }

    @Override // W0.t
    public final long j() {
        return this.f7443c;
    }

    @Override // W0.t
    public final void l(long j8, IOException iOException) throws IOException {
        H1.d(j8 >= 0);
        this.f7444d = j8;
        throw iOException;
    }

    @Override // W0.t
    public final void m() {
        this.f7446f = 0;
    }

    @Override // W0.t
    public final void n(int i8) throws EOFException, InterruptedIOException {
        d(i8, false);
    }

    @Override // W0.t
    public final boolean o(int i8, boolean z7) throws EOFException, InterruptedIOException {
        s(i8);
        int iT = this.f7447g - this.f7446f;
        while (iT < i8) {
            iT = t(this.f7445e, this.f7446f, i8, iT, z7);
            if (iT == -1) {
                return false;
            }
            this.f7447g = this.f7446f + iT;
        }
        this.f7446f += i8;
        return true;
    }

    @Override // p094m0.InterfaceC3127j
    public final int q(byte[] bArr, int i8, int i9) throws EOFException, InterruptedIOException {
        int i10 = this.f7447g;
        int iT = 0;
        if (i10 != 0) {
            int iMin = Math.min(i10, i9);
            System.arraycopy(this.f7445e, 0, bArr, i8, iMin);
            u(iMin);
            iT = iMin;
        }
        if (iT == 0) {
            iT = t(bArr, i8, i9, 0, true);
        }
        if (iT != -1) {
            this.f7444d += (long) iT;
        }
        return iT;
    }

    @Override // W0.t
    public final long r() {
        return this.f7444d;
    }

    @Override // W0.t
    public final void readFully(byte[] bArr, int i8, int i9) throws EOFException, InterruptedIOException {
        b(bArr, i8, i9, false);
    }

    public final void s(int i8) {
        int i9 = this.f7446f + i8;
        byte[] bArr = this.f7445e;
        if (i9 > bArr.length) {
            this.f7445e = Arrays.copyOf(this.f7445e, p117p0.M.i(bArr.length * 2, 65536 + i9, i9 + 524288));
        }
    }

    public final int t(byte[] bArr, int i8, int i9, int i10, boolean z7) throws EOFException, InterruptedIOException {
        if (Thread.interrupted()) {
            throw new InterruptedIOException();
        }
        int iQ = this.f7442b.q(bArr, i8 + i10, i9 - i10);
        if (iQ != -1) {
            return i10 + iQ;
        }
        if (i10 == 0 && z7) {
            return -1;
        }
        throw new EOFException();
    }

    public final void u(int i8) {
        int i9 = this.f7447g - i8;
        this.f7447g = i9;
        this.f7446f = 0;
        byte[] bArr = this.f7445e;
        byte[] bArr2 = i9 < bArr.length - 524288 ? new byte[65536 + i9] : bArr;
        System.arraycopy(bArr, i8, bArr2, 0, i9);
        this.f7445e = bArr2;
    }
}
