package F5;

import com.google.android.gms.internal.ads.C1093bD;
import p039f.H;

/* JADX INFO: loaded from: classes2.dex */
public abstract class e extends H {
    public final void s(int i8, StringBuilder sb) {
        sb.append("(01)");
        int length = sb.length();
        sb.append('9');
        t(sb, i8, length);
    }

    public final void t(StringBuilder sb, int i8, int i9) {
        for (int i10 = 0; i10 < 4; i10++) {
            int iF = ((C1093bD) this.f24906b).f((i10 * 10) + i8, 10);
            if (iF / 100 == 0) {
                sb.append('0');
            }
            if (iF / 10 == 0) {
                sb.append('0');
            }
            sb.append(iF);
        }
        int i11 = 0;
        for (int i12 = 0; i12 < 13; i12++) {
            int iCharAt = sb.charAt(i12 + i9) - '0';
            if ((i12 & 1) == 0) {
                iCharAt *= 3;
            }
            i11 += iCharAt;
        }
        int i13 = 10 - (i11 % 10);
        sb.append(i13 != 10 ? i13 : 0);
    }
}
