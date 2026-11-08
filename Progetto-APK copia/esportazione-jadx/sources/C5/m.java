package C5;

import java.util.Arrays;
import java.util.List;
import java.util.Map;
import org.videolan.libvlc.media.MediaPlayer;
import p130q5.o;
import p130q5.p;

/* JADX INFO: loaded from: classes2.dex */
public abstract class m extends j {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[] f1669d = {1, 1, 1};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int[] f1670e = {1, 1, 1, 1, 1};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int[][] f1671f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int[][] f1672g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final StringBuilder f1673a = new StringBuilder(20);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final l f1674b = new l();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final p096m2.e f1675c = new p096m2.e(24, (Object) null);

    static {
        int[][] iArr = {new int[]{3, 2, 1, 1}, new int[]{2, 2, 2, 1}, new int[]{2, 1, 2, 2}, new int[]{1, 4, 1, 1}, new int[]{1, 1, 3, 2}, new int[]{1, 2, 3, 1}, new int[]{1, 1, 1, 4}, new int[]{1, 3, 1, 2}, new int[]{1, 2, 1, 3}, new int[]{3, 1, 1, 2}};
        f1671f = iArr;
        int[][] iArr2 = new int[20][];
        f1672g = iArr2;
        System.arraycopy(iArr, 0, iArr2, 0, 10);
        for (int i8 = 10; i8 < 20; i8++) {
            int[] iArr3 = f1671f[i8 - 10];
            int[] iArr4 = new int[iArr3.length];
            for (int i9 = 0; i9 < iArr3.length; i9++) {
                iArr4[i9] = iArr3[(iArr3.length - i9) - 1];
            }
            f1672g[i8] = iArr4;
        }
    }

    public static int j(p176w5.a aVar, int[] iArr, int i8, int[][] iArr2) throws p130q5.i {
        j.g(i8, aVar, iArr);
        int length = iArr2.length;
        float f8 = 0.48f;
        int i9 = -1;
        for (int i10 = 0; i10 < length; i10++) {
            float f9 = j.f(iArr, iArr2[i10], 0.7f);
            if (f9 < f8) {
                i9 = i10;
                f8 = f9;
            }
        }
        if (i9 >= 0) {
            return i9;
        }
        throw p130q5.i.f29623I;
    }

    public static int[] n(p176w5.a aVar, int i8, boolean z7, int[] iArr, int[] iArr2) {
        int i9 = aVar.f31090H;
        int iF = z7 ? aVar.f(i8) : aVar.e(i8);
        int length = iArr.length;
        boolean z8 = z7;
        int i10 = 0;
        int i11 = iF;
        while (iF < i9) {
            if (aVar.d(iF) != z8) {
                iArr2[i10] = iArr2[i10] + 1;
            } else {
                if (i10 != length - 1) {
                    i10++;
                } else {
                    if (j.f(iArr2, iArr, 0.7f) < 0.48f) {
                        return new int[]{i11, iF};
                    }
                    i11 += iArr2[0] + iArr2[1];
                    int i12 = i10 - 1;
                    System.arraycopy(iArr2, 2, iArr2, 0, i12);
                    iArr2[i12] = 0;
                    iArr2[i10] = 0;
                    i10--;
                }
                iArr2[i10] = 1;
                z8 = !z8;
            }
            iF++;
        }
        throw p130q5.i.f29623I;
    }

    public static int[] o(p176w5.a aVar) {
        int[] iArr = new int[3];
        int[] iArrN = null;
        boolean zH = false;
        int i8 = 0;
        while (!zH) {
            Arrays.fill(iArr, 0, 3, 0);
            iArrN = n(aVar, i8, false, f1669d, iArr);
            int i9 = iArrN[0];
            int i10 = iArrN[1];
            int i11 = i9 - (i10 - i9);
            if (i11 >= 0) {
                zH = aVar.h(i11, i9);
            }
            i8 = i10;
        }
        return iArrN;
    }

    @Override // C5.j
    public p130q5.m d(int i8, p176w5.a aVar, Map map) {
        return m(i8, aVar, o(aVar), map);
    }

    public boolean i(String str) throws p130q5.e {
        int length = str.length();
        if (length == 0) {
            return false;
        }
        int i8 = length - 1;
        int iDigit = Character.digit(str.charAt(i8), 10);
        CharSequence charSequenceSubSequence = str.subSequence(0, i8);
        int length2 = charSequenceSubSequence.length();
        int i9 = 0;
        for (int i10 = length2 - 1; i10 >= 0; i10 -= 2) {
            int iCharAt = charSequenceSubSequence.charAt(i10) - '0';
            if (iCharAt < 0 || iCharAt > 9) {
                throw p130q5.e.a();
            }
            i9 += iCharAt;
        }
        int i11 = i9 * 3;
        for (int i12 = length2 - 2; i12 >= 0; i12 -= 2) {
            int iCharAt2 = charSequenceSubSequence.charAt(i12) - '0';
            if (iCharAt2 < 0 || iCharAt2 > 9) {
                throw p130q5.e.a();
            }
            i11 += iCharAt2;
        }
        return (1000 - i11) % 10 == iDigit;
    }

    public int[] k(int i8, p176w5.a aVar) {
        return n(aVar, i8, false, f1669d, new int[3]);
    }

    public abstract int l(p176w5.a aVar, int[] iArr, StringBuilder sb);

    public p130q5.m m(int i8, p176w5.a aVar, int[] iArr, Map map) throws p130q5.i, p130q5.b, p130q5.e {
        int length;
        String str = null;
        p pVar = map == null ? null : (p) map.get(p130q5.c.f29605P);
        if (pVar != null) {
            pVar.a(new o((iArr[0] + iArr[1]) / 2.0f, i8));
        }
        StringBuilder sb = this.f1673a;
        sb.setLength(0);
        int iL = l(aVar, iArr, sb);
        if (pVar != null) {
            pVar.a(new o(iL, i8));
        }
        int[] iArrK = k(iL, aVar);
        if (pVar != null) {
            pVar.a(new o((iArrK[0] + iArrK[1]) / 2.0f, i8));
        }
        int i9 = iArrK[1];
        int i10 = (i9 - iArrK[0]) + i9;
        if (i10 >= aVar.f31090H || !aVar.h(i9, i10)) {
            throw p130q5.i.f29623I;
        }
        String string = sb.toString();
        if (string.length() < 8) {
            throw p130q5.e.a();
        }
        if (!i(string)) {
            throw p130q5.b.a();
        }
        float f8 = (iArr[1] + iArr[0]) / 2.0f;
        float f9 = (iArrK[1] + iArrK[0]) / 2.0f;
        p130q5.a aVarP = p();
        float f10 = i8;
        p130q5.m mVar = new p130q5.m(string, null, new o[]{new o(f8, f10), new o(f9, f10)}, aVarP);
        try {
            p130q5.m mVarA = this.f1674b.a(i8, iArrK[1], aVar);
            mVar.b(p130q5.n.f29640M, mVarA.f29629a);
            mVar.a(mVarA.f29633e);
            o[] oVarArr = mVarA.f29631c;
            o[] oVarArr2 = mVar.f29631c;
            if (oVarArr2 == null) {
                mVar.f29631c = oVarArr;
            } else if (oVarArr != null && oVarArr.length > 0) {
                o[] oVarArr3 = new o[oVarArr2.length + oVarArr.length];
                System.arraycopy(oVarArr2, 0, oVarArr3, 0, oVarArr2.length);
                System.arraycopy(oVarArr, 0, oVarArr3, oVarArr2.length, oVarArr.length);
                mVar.f29631c = oVarArr3;
            }
            length = mVarA.f29629a.length();
        } catch (p130q5.l unused) {
            length = 0;
        }
        int[] iArr2 = map == null ? null : (int[]) map.get(p130q5.c.f29606Q);
        if (iArr2 != null) {
            int length2 = iArr2.length;
            int i11 = 0;
            while (true) {
                if (i11 >= length2) {
                    throw p130q5.i.f29623I;
                }
                if (length == iArr2[i11]) {
                    break;
                }
                i11++;
            }
        }
        if (aVarP == p130q5.a.f29585N || aVarP == p130q5.a.f29592U) {
            p096m2.e eVar = this.f1675c;
            synchronized (eVar) {
                if (((List) eVar.f27215H).isEmpty()) {
                    eVar.f("US/CA", new int[]{0, 19});
                    eVar.f("US", new int[]{30, 39});
                    eVar.f("US/CA", new int[]{60, 139});
                    eVar.f("FR", new int[]{300, 379});
                    eVar.f("BG", new int[]{380});
                    eVar.f("SI", new int[]{383});
                    eVar.f("HR", new int[]{385});
                    eVar.f("BA", new int[]{387});
                    eVar.f("DE", new int[]{400, 440});
                    eVar.f("JP", new int[]{450, 459});
                    eVar.f("RU", new int[]{460, 469});
                    eVar.f("TW", new int[]{471});
                    eVar.f("EE", new int[]{474});
                    eVar.f("LV", new int[]{475});
                    eVar.f("AZ", new int[]{476});
                    eVar.f("LT", new int[]{477});
                    eVar.f("UZ", new int[]{478});
                    eVar.f("LK", new int[]{479});
                    eVar.f("PH", new int[]{480});
                    eVar.f("BY", new int[]{481});
                    eVar.f("UA", new int[]{482});
                    eVar.f("MD", new int[]{484});
                    eVar.f("AM", new int[]{485});
                    eVar.f("GE", new int[]{486});
                    eVar.f("KZ", new int[]{487});
                    eVar.f("HK", new int[]{489});
                    eVar.f("JP", new int[]{490, 499});
                    eVar.f("GB", new int[]{500, 509});
                    eVar.f("GR", new int[]{520});
                    eVar.f("LB", new int[]{528});
                    eVar.f("CY", new int[]{529});
                    eVar.f("MK", new int[]{531});
                    eVar.f("MT", new int[]{535});
                    eVar.f("IE", new int[]{539});
                    eVar.f("BE/LU", new int[]{540, 549});
                    eVar.f("PT", new int[]{560});
                    eVar.f("IS", new int[]{569});
                    eVar.f("DK", new int[]{570, 579});
                    eVar.f("PL", new int[]{590});
                    eVar.f("RO", new int[]{594});
                    eVar.f("HU", new int[]{599});
                    eVar.f("ZA", new int[]{600, 601});
                    eVar.f("GH", new int[]{603});
                    eVar.f("BH", new int[]{608});
                    eVar.f("MU", new int[]{609});
                    eVar.f("MA", new int[]{611});
                    eVar.f("DZ", new int[]{613});
                    eVar.f("KE", new int[]{616});
                    eVar.f("CI", new int[]{618});
                    eVar.f("TN", new int[]{619});
                    eVar.f("SY", new int[]{621});
                    eVar.f("EG", new int[]{622});
                    eVar.f("LY", new int[]{624});
                    eVar.f("JO", new int[]{625});
                    eVar.f("IR", new int[]{626});
                    eVar.f("KW", new int[]{627});
                    eVar.f("SA", new int[]{628});
                    eVar.f("AE", new int[]{629});
                    eVar.f("FI", new int[]{640, 649});
                    eVar.f("CN", new int[]{690, 695});
                    eVar.f("NO", new int[]{MediaPlayer.MEDIA_INFO_VIDEO_TRACK_LAGGING, 709});
                    eVar.f("IL", new int[]{729});
                    eVar.f("SE", new int[]{730, 739});
                    eVar.f("GT", new int[]{740});
                    eVar.f("SV", new int[]{741});
                    eVar.f("HN", new int[]{742});
                    eVar.f("NI", new int[]{743});
                    eVar.f("CR", new int[]{744});
                    eVar.f("PA", new int[]{745});
                    eVar.f("DO", new int[]{746});
                    eVar.f("MX", new int[]{750});
                    eVar.f("CA", new int[]{754, 755});
                    eVar.f("VE", new int[]{759});
                    eVar.f("CH", new int[]{760, 769});
                    eVar.f("CO", new int[]{770});
                    eVar.f("UY", new int[]{773});
                    eVar.f("PE", new int[]{775});
                    eVar.f("BO", new int[]{777});
                    eVar.f("AR", new int[]{779});
                    eVar.f("CL", new int[]{780});
                    eVar.f("PY", new int[]{784});
                    eVar.f("PE", new int[]{785});
                    eVar.f("EC", new int[]{786});
                    eVar.f("BR", new int[]{789, 790});
                    eVar.f("IT", new int[]{MediaPlayer.MEDIA_INFO_BAD_INTERLEAVING, 839});
                    eVar.f("ES", new int[]{840, 849});
                    eVar.f("CU", new int[]{850});
                    eVar.f("SK", new int[]{858});
                    eVar.f("CZ", new int[]{859});
                    eVar.f("YU", new int[]{860});
                    eVar.f("MN", new int[]{865});
                    eVar.f("KP", new int[]{867});
                    eVar.f("TR", new int[]{868, 869});
                    eVar.f("NL", new int[]{870, 879});
                    eVar.f("KR", new int[]{880});
                    eVar.f("TH", new int[]{885});
                    eVar.f("SG", new int[]{888});
                    eVar.f("IN", new int[]{890});
                    eVar.f("VN", new int[]{893});
                    eVar.f("PK", new int[]{896});
                    eVar.f("ID", new int[]{899});
                    eVar.f("AT", new int[]{MediaPlayer.MEDIA_INFO_TIMED_TEXT_ERROR, 919});
                    eVar.f("AU", new int[]{930, 939});
                    eVar.f("AZ", new int[]{940, 949});
                    eVar.f("MY", new int[]{955});
                    eVar.f("MO", new int[]{958});
                }
            }
            int i12 = Integer.parseInt(string.substring(0, 3));
            int size = ((List) eVar.f27215H).size();
            for (int i13 = 0; i13 < size; i13++) {
                int[] iArr3 = (int[]) ((List) eVar.f27215H).get(i13);
                int i14 = iArr3[0];
                if (i12 < i14) {
                    break;
                }
                if (iArr3.length != 1) {
                    i14 = iArr3[1];
                }
                if (i12 <= i14) {
                    str = (String) ((List) eVar.f27216I).get(i13);
                    break;
                }
            }
            if (str != null) {
                mVar.b(p130q5.n.f29639L, str);
            }
        }
        return mVar;
    }

    public abstract p130q5.a p();
}
