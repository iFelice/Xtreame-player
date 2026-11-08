package C5;

import java.util.Arrays;
import java.util.Map;
import org.videolan.libvlc.MediaPlayer;
import p130q5.o;

/* JADX INFO: loaded from: classes2.dex */
public final class c extends j {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[] f1641d = {52, 289, 97, 352, 49, 304, 112, 37, 292, 100, MediaPlayer.Event.EndReached, 73, 328, 25, 280, 88, 13, MediaPlayer.Event.PositionChanged, 76, 28, MediaPlayer.Event.Buffering, 67, 322, 19, MediaPlayer.Event.Vout, 82, 7, MediaPlayer.Event.Stopped, 70, 22, 385, 193, 448, 145, 400, 208, 133, 388, 196, 168, 162, 138, 42};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f1642a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final StringBuilder f1643b = new StringBuilder(20);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int[] f1644c = new int[9];

    public c(boolean z7) {
        this.f1642a = z7;
    }

    public static int i(int[] iArr) {
        int length = iArr.length;
        int i8 = 0;
        while (true) {
            int i9 = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
            for (int i10 : iArr) {
                if (i10 < i9 && i10 > i8) {
                    i9 = i10;
                }
            }
            int i11 = 0;
            int i12 = 0;
            int i13 = 0;
            for (int i14 = 0; i14 < length; i14++) {
                int i15 = iArr[i14];
                if (i15 > i9) {
                    i12 |= 1 << ((length - 1) - i14);
                    i11++;
                    i13 += i15;
                }
            }
            if (i11 == 3) {
                for (int i16 = 0; i16 < length && i11 > 0; i16++) {
                    int i17 = iArr[i16];
                    if (i17 > i9) {
                        i11--;
                        if ((i17 << 1) >= i13) {
                            return -1;
                        }
                    }
                }
                return i12;
            }
            if (i11 <= 3) {
                return -1;
            }
            i8 = i9;
        }
    }

    @Override // C5.j
    public final p130q5.m d(int i8, p176w5.a aVar, Map map) throws p130q5.i, p130q5.b {
        char cCharAt;
        int i9 = 2;
        int[] iArr = this.f1644c;
        Arrays.fill(iArr, 0);
        StringBuilder sb = this.f1643b;
        sb.setLength(0);
        int i10 = aVar.f31090H;
        int iE = aVar.e(0);
        int length = iArr.length;
        int i11 = iE;
        boolean z7 = false;
        int i12 = 0;
        while (iE < i10) {
            if (aVar.d(iE) != z7) {
                iArr[i12] = iArr[i12] + 1;
            } else {
                if (i12 == length - 1) {
                    int i13 = 148;
                    if (i(iArr) == 148 && aVar.h(Math.max(0, i11 - ((iE - i11) / i9)), i11)) {
                        int[] iArr2 = {i11, iE};
                        int iE2 = aVar.e(iArr2[1]);
                        int i14 = aVar.f31090H;
                        while (true) {
                            j.g(iE2, aVar, iArr);
                            int i15 = i(iArr);
                            if (i15 < 0) {
                                throw p130q5.i.f29623I;
                            }
                            int i16 = 0;
                            while (true) {
                                if (i16 >= 43) {
                                    if (i15 != i13) {
                                        throw p130q5.i.f29623I;
                                    }
                                    cCharAt = '*';
                                    break;
                                }
                                if (f1641d[i16] == i15) {
                                    cCharAt = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".charAt(i16);
                                    break;
                                }
                                i16++;
                            }
                            sb.append(cCharAt);
                            int i17 = iE2;
                            for (int i18 : iArr) {
                                i17 += i18;
                            }
                            int iE3 = aVar.e(i17);
                            if (cCharAt == '*') {
                                sb.setLength(sb.length() - 1);
                                int i19 = 0;
                                for (int i20 : iArr) {
                                    i19 += i20;
                                }
                                int i21 = (iE3 - iE2) - i19;
                                if (iE3 != i14 && (i21 << 1) < i19) {
                                    throw p130q5.i.f29623I;
                                }
                                if (this.f1642a) {
                                    int length2 = sb.length() - 1;
                                    int iIndexOf = 0;
                                    for (int i22 = 0; i22 < length2; i22++) {
                                        iIndexOf += "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".indexOf(sb.charAt(i22));
                                    }
                                    if (sb.charAt(length2) != "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".charAt(iIndexOf % 43)) {
                                        throw p130q5.b.a();
                                    }
                                    sb.setLength(length2);
                                }
                                if (sb.length() == 0) {
                                    throw p130q5.i.f29623I;
                                }
                                String string = sb.toString();
                                float f8 = (iArr2[1] + iArr2[0]) / 2.0f;
                                float f9 = (i19 / 2.0f) + iE2;
                                float f10 = i8;
                                return new p130q5.m(string, null, new o[]{new o(f8, f10), new o(f9, f10)}, p130q5.a.f29580I);
                            }
                            iE2 = iE3;
                            i13 = 148;
                        }
                    } else {
                        i11 += iArr[0] + iArr[1];
                        int i23 = i12 - 1;
                        System.arraycopy(iArr, 2, iArr, 0, i23);
                        iArr[i23] = 0;
                        iArr[i12] = 0;
                        i12--;
                    }
                } else {
                    i12++;
                }
                iArr[i12] = 1;
                z7 = !z7;
            }
            iE++;
            i9 = 2;
        }
        throw p130q5.i.f29623I;
    }
}
