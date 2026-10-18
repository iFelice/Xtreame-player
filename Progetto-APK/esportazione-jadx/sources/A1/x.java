package A1;

import com.google.android.gms.internal.measurement.H1;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f594a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f595b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f596c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public byte[] f597d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f598e;

    public x(int i8, int i9) {
        if (i9 != 1) {
            this.f594a = i8;
            byte[] bArr = new byte[131];
            this.f597d = bArr;
            bArr[2] = 1;
            return;
        }
        this.f594a = i8;
        byte[] bArr2 = new byte[131];
        this.f597d = bArr2;
        bArr2[2] = 1;
    }

    public final void a(int i8, byte[] bArr, int i9) {
        if (this.f595b) {
            int i10 = i9 - i8;
            byte[] bArr2 = this.f597d;
            int length = bArr2.length;
            int i11 = this.f598e;
            if (length < i11 + i10) {
                this.f597d = Arrays.copyOf(bArr2, (i11 + i10) * 2);
            }
            System.arraycopy(bArr, i8, this.f597d, this.f598e, i10);
            this.f598e += i10;
        }
    }

    public final boolean b(int i8) {
        if (!this.f595b) {
            return false;
        }
        this.f598e -= i8;
        this.f595b = false;
        this.f596c = true;
        return true;
    }

    public final void c() {
        this.f595b = false;
        this.f596c = false;
    }

    public final void d(int i8) {
        H1.i(!this.f595b);
        boolean z7 = i8 == this.f594a;
        this.f595b = z7;
        if (z7) {
            this.f598e = 3;
            this.f596c = false;
        }
    }

    public final void e(int i8, byte[] bArr, int i9) {
        if (this.f595b) {
            int i10 = i9 - i8;
            byte[] bArr2 = this.f597d;
            int length = bArr2.length;
            int i11 = this.f598e + i10;
            if (length < i11) {
                this.f597d = Arrays.copyOf(bArr2, i11 + i11);
            }
            System.arraycopy(bArr, i8, this.f597d, this.f598e, i10);
            this.f598e += i10;
        }
    }

    public final void f() {
        this.f595b = false;
        this.f596c = false;
    }

    public final void g(int i8) {
        p113o3.r.M(!this.f595b);
        boolean z7 = i8 == this.f594a;
        this.f595b = z7;
        if (z7) {
            this.f598e = 3;
            this.f596c = false;
        }
    }

    public final boolean h(int i8) {
        if (!this.f595b) {
            return false;
        }
        this.f598e -= i8;
        this.f595b = false;
        this.f596c = true;
        return true;
    }
}
