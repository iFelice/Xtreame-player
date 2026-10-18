package A1;

import W0.L;
import com.google.android.gms.internal.ads.InterfaceC1234e0;
import com.google.android.gms.internal.measurement.H1;

/* JADX INFO: loaded from: classes.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f440a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f441b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f442c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f443d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f444e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f445f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f446g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Object f447h;

    public /* synthetic */ n(Object obj) {
        this.f447h = obj;
    }

    public final void a(int i8, byte[] bArr, int i9) {
        if (this.f441b) {
            int i10 = this.f444e;
            int i11 = (i8 + 1) - i10;
            if (i11 >= i9) {
                this.f444e = (i9 - i8) + i10;
            } else {
                this.f442c = ((bArr[i11] & 192) >> 6) == 0;
                this.f441b = false;
            }
        }
    }

    public final void b(int i8, long j8, boolean z7) {
        H1.i(this.f446g != -9223372036854775807L);
        if (this.f443d == 182 && z7 && this.f440a) {
            ((L) this.f447h).d(this.f446g, this.f442c ? 1 : 0, (int) (j8 - this.f445f), i8, null);
        }
        if (this.f443d != 179) {
            this.f445f = j8;
        }
    }

    public final void c(int i8, byte[] bArr, int i9) {
        if (this.f441b) {
            int i10 = this.f444e;
            int i11 = (i8 + 1) - i10;
            if (i11 >= i9) {
                this.f444e = (i9 - i8) + i10;
            } else {
                this.f442c = ((bArr[i11] & 192) >> 6) == 0;
                this.f441b = false;
            }
        }
    }

    public final void d(int i8, long j8, boolean z7) {
        p113o3.r.M(this.f446g != -9223372036854775807L);
        if (this.f443d == 182 && z7 && this.f440a) {
            ((InterfaceC1234e0) this.f447h).b(this.f446g, this.f442c ? 1 : 0, (int) (j8 - this.f445f), i8, null);
        }
        if (this.f443d != 179) {
            this.f445f = j8;
        }
    }
}
