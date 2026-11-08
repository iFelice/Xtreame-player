package F5;

import com.google.android.gms.internal.ads.C1093bD;

/* JADX INFO: loaded from: classes2.dex */
public abstract class f extends e {
    public abstract void u(int i8, StringBuilder sb);

    public abstract int v(int i8);

    public final void w(StringBuilder sb, int i8, int i9) {
        int iF = ((C1093bD) this.f24906b).f(i8, i9);
        u(iF, sb);
        int iV = v(iF);
        int i10 = 100000;
        for (int i11 = 0; i11 < 5; i11++) {
            if (iV / i10 == 0) {
                sb.append('0');
            }
            i10 /= 10;
        }
        sb.append(iV);
    }
}
