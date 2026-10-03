package p125q0;

import com.google.android.gms.internal.measurement.H1;
import java.nio.ByteBuffer;
import p117p0.D;

/* JADX INFO: loaded from: classes.dex */
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f29514a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f29515b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f29516c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f29517d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f29518e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f29519f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f29520g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f29521h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f29522i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f29523j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f29524k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final boolean f29525l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final byte f29526m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final byte f29527n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final byte f29528o;

    public s(r rVar) {
        H1.d(rVar.f29512a == 1);
        ByteBuffer byteBuffer = rVar.f29513b;
        byte[] bArr = new byte[byteBuffer.remaining()];
        byteBuffer.asReadOnlyBuffer().get(bArr);
        D d6 = new D(bArr, 0, (Object) null);
        this.f29520g = d6.i(3);
        d6.t();
        boolean zH = d6.h();
        this.f29514a = zH;
        if (zH) {
            d6.i(5);
            this.f29515b = false;
            this.f29521h = false;
        } else {
            if (d6.h()) {
                d6.u(64);
                if (d6.h()) {
                    int i8 = 0;
                    while (!d6.h()) {
                        i8++;
                    }
                    if (i8 < 32) {
                        d6.u(i8);
                    }
                }
                boolean zH2 = d6.h();
                this.f29515b = zH2;
                if (zH2) {
                    d6.u(47);
                }
            } else {
                this.f29515b = false;
            }
            this.f29521h = d6.h();
            int i9 = d6.i(5);
            for (int i10 = 0; i10 <= i9; i10++) {
                d6.u(12);
                if (i10 == 0) {
                    if (d6.i(5) > 7) {
                        d6.h();
                    }
                } else if (d6.i(5) > 7) {
                    d6.t();
                }
                if (this.f29515b) {
                    d6.t();
                }
                if (this.f29521h && d6.h()) {
                    if (i10 == 0) {
                        d6.i(4);
                    } else {
                        d6.u(4);
                    }
                }
            }
        }
        int i11 = d6.i(4);
        int i12 = d6.i(4);
        d6.u(i11 + 1);
        d6.u(i12 + 1);
        if (this.f29514a) {
            this.f29516c = false;
        } else {
            this.f29516c = d6.h();
        }
        if (this.f29516c) {
            d6.u(4);
            d6.u(3);
        }
        d6.u(3);
        if (this.f29514a) {
            this.f29518e = true;
            this.f29517d = true;
            this.f29519f = 0;
        } else {
            d6.u(4);
            boolean zH3 = d6.h();
            if (zH3) {
                d6.u(2);
            }
            if (d6.h()) {
                this.f29517d = true;
            } else {
                this.f29517d = d6.h();
            }
            if (!this.f29517d || d6.h()) {
                this.f29518e = true;
            } else {
                this.f29518e = d6.h();
            }
            if (zH3) {
                this.f29519f = d6.i(3) + 1;
            } else {
                this.f29519f = 0;
            }
        }
        d6.u(3);
        boolean zH4 = d6.h();
        if (this.f29520g == 2 && zH4) {
            this.f29522i = d6.h();
        } else {
            this.f29522i = false;
        }
        if (this.f29520g != 1) {
            this.f29523j = d6.h();
        } else {
            this.f29523j = false;
        }
        if (d6.h()) {
            this.f29526m = (byte) d6.i(8);
            this.f29527n = (byte) d6.i(8);
            this.f29528o = (byte) d6.i(8);
        } else {
            this.f29526m = (byte) 0;
            this.f29527n = (byte) 0;
            this.f29528o = (byte) 0;
        }
        if (this.f29523j) {
            d6.t();
            this.f29524k = false;
            this.f29525l = false;
        } else if (this.f29526m == 1 && this.f29527n == 13 && this.f29528o == 0) {
            this.f29524k = false;
            this.f29525l = false;
        } else {
            d6.t();
            int i13 = this.f29520g;
            if (i13 == 0) {
                this.f29524k = true;
                this.f29525l = true;
            } else if (i13 == 1) {
                this.f29524k = false;
                this.f29525l = false;
            } else if (this.f29522i) {
                boolean zH5 = d6.h();
                this.f29524k = zH5;
                if (zH5) {
                    this.f29525l = d6.h();
                } else {
                    this.f29525l = false;
                }
            } else {
                this.f29524k = true;
                this.f29525l = false;
            }
            if (this.f29524k && this.f29525l) {
                d6.i(2);
            }
        }
        d6.t();
    }
}
