package W0;

import A0.O;
import com.google.android.gms.internal.ads.AbstractC1717nH;

/* JADX INFO: renamed from: W0.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0369b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f7373a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f7374b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7375c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f7376d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f7377e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f7378f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f7379g;

    public final boolean a(int i8) {
        int i9;
        int i10;
        int i11;
        int i12;
        if (!((i8 & (-2097152)) == -2097152) || (i9 = (i8 >>> 19) & 3) == 1 || (i10 = (i8 >>> 17) & 3) == 0 || (i11 = (i8 >>> 12) & 15) == 0 || i11 == 15 || (i12 = (i8 >>> 10) & 3) == 3) {
            return false;
        }
        this.f7373a = i9;
        this.f7374b = AbstractC0368a.f7366s[3 - i10];
        int i13 = AbstractC0368a.f7367t[i12];
        this.f7376d = i13;
        if (i9 == 2) {
            this.f7376d = i13 / 2;
        } else if (i9 == 0) {
            this.f7376d = i13 / 4;
        }
        int i14 = (i8 >>> 9) & 1;
        int i15 = 1152;
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    throw new IllegalArgumentException();
                }
                i15 = 384;
            }
        } else if (i9 != 3) {
            i15 = 576;
        }
        this.f7379g = i15;
        if (i10 == 3) {
            int i16 = i9 == 3 ? AbstractC0368a.f7368u[i11 - 1] : AbstractC0368a.f7369v[i11 - 1];
            this.f7378f = i16;
            this.f7375c = (((i16 * 12) / this.f7376d) + i14) * 4;
        } else {
            if (i9 == 3) {
                int i17 = i10 == 2 ? AbstractC0368a.f7370w[i11 - 1] : AbstractC0368a.f7371x[i11 - 1];
                this.f7378f = i17;
                this.f7375c = ((i17 * 144) / this.f7376d) + i14;
            } else {
                int i18 = AbstractC0368a.f7372y[i11 - 1];
                this.f7378f = i18;
                this.f7375c = (((i10 == 1 ? 72 : 144) * i18) / this.f7376d) + i14;
            }
        }
        this.f7377e = ((i8 >> 6) & 3) == 3 ? 1 : 2;
        return true;
    }

    public final boolean b(int i8) {
        int i9;
        int i10;
        int i11;
        int i12;
        if ((i8 & (-2097152)) != -2097152 || (i9 = (i8 >>> 19) & 3) == 1 || (i10 = (i8 >>> 17) & 3) == 0 || (i11 = (i8 >>> 12) & 15) == 0 || i11 == 15 || (i12 = (i8 >>> 10) & 3) == 3) {
            return false;
        }
        int i13 = i11 - 1;
        this.f7373a = i9;
        this.f7374b = AbstractC1717nH.f20144s[3 - i10];
        int i14 = AbstractC1717nH.f20146t[i12];
        this.f7376d = i14;
        if (i9 == 2) {
            i14 /= 2;
            this.f7376d = i14;
        } else if (i9 == 0) {
            i14 /= 4;
            this.f7376d = i14;
        }
        int i15 = (i8 >>> 9) & 1;
        int i16 = 1152;
        if (i10 != 1) {
            if (i10 != 2) {
                i16 = 384;
            }
        } else if (i9 != 3) {
            i16 = 576;
        }
        this.f7379g = i16;
        if (i10 == 3) {
            int i17 = i9 == 3 ? AbstractC1717nH.f20147u[i13] : AbstractC1717nH.f20148v[i13];
            this.f7378f = i17;
            this.f7375c = (((i17 * 12) / i14) + i15) * 4;
        } else {
            if (i9 == 3) {
                int i18 = i10 == 2 ? AbstractC1717nH.f20149w[i13] : AbstractC1717nH.f20150x[i13];
                this.f7378f = i18;
                this.f7375c = O.v(i18, 144, i14, i15);
            } else {
                int i19 = AbstractC1717nH.f20151y[i13];
                this.f7378f = i19;
                this.f7375c = O.v(i10 == 1 ? 72 : 144, i19, i14, i15);
            }
        }
        this.f7377e = ((i8 >> 6) & 3) == 3 ? 1 : 2;
        return true;
    }
}
