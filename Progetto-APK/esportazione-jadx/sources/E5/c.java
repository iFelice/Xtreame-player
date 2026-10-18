package E5;

import C5.j;
import F5.g;
import com.google.android.gms.internal.ads.C1093bD;
import com.google.protobuf.U2;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import okhttp3.internal.ws.WebSocketProtocol;
import org.eclipse.paho.client.mqttv3.MqttConnectOptions;
import org.videolan.libvlc.media.MediaPlayer;
import p027d2.v;
import p039f.H;
import p130q5.i;
import p130q5.m;
import p130q5.o;
import p190y4.k;

/* JADX INFO: loaded from: classes2.dex */
public final class c extends D5.a {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int[] f2936k = {7, 5, 4, 3, 1};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int[] f2937l = {4, 20, 52, 104, 204};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int[] f2938m = {0, 348, 1388, 2948, 3988};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int[][] f2939n = {new int[]{1, 8, 4, 1}, new int[]{3, 6, 4, 1}, new int[]{3, 4, 6, 1}, new int[]{3, 2, 8, 1}, new int[]{2, 6, 5, 1}, new int[]{2, 2, 9, 1}};

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int[][] f2940o = {new int[]{1, 3, 9, 27, 81, 32, 96, 77}, new int[]{20, 60, 180, 118, 143, 7, 21, 63}, new int[]{189, 145, 13, 39, 117, 140, 209, 205}, new int[]{193, 157, 49, 147, 19, 57, 171, 91}, new int[]{62, 186, 136, 197, 169, 85, 44, 132}, new int[]{185, 133, 188, 142, 4, 12, 36, 108}, new int[]{113, 128, 173, 97, 80, 29, 87, 50}, new int[]{150, 28, 84, 41, 123, 158, 52, 156}, new int[]{46, 138, 203, 187, 139, 206, 196, 166}, new int[]{76, 17, 51, 153, 37, 111, 122, 155}, new int[]{43, 129, 176, 106, 107, 110, 119, 146}, new int[]{16, 48, 144, 10, 30, 90, 59, 177}, new int[]{109, 116, 137, MediaPlayer.MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK, 178, 112, 125, 164}, new int[]{70, 210, 208, 202, 184, 130, 179, 115}, new int[]{134, 191, 151, 31, 93, 68, 204, 190}, new int[]{148, 22, 66, 198, 172, 94, 71, 2}, new int[]{6, 18, 54, 162, 64, 192, 154, 40}, new int[]{120, 149, 25, 75, 14, 42, WebSocketProtocol.PAYLOAD_SHORT, 167}, new int[]{79, 26, 78, 23, 69, 207, 199, 175}, new int[]{103, 98, 83, 38, 114, 131, 182, 124}, new int[]{161, 61, 183, 127, 170, 88, 53, 159}, new int[]{55, 165, 73, 8, 24, 72, 5, 15}, new int[]{45, 135, 194, 160, 58, 174, 100, 89}};

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int[][] f2941p = {new int[]{0, 0}, new int[]{0, 1, 1}, new int[]{0, 2, 1, 3}, new int[]{0, 4, 1, 3, 2}, new int[]{0, 4, 1, 3, 3, 5}, new int[]{0, 4, 1, 3, 4, 5, 5}, new int[]{0, 0, 1, 1, 2, 2, 3, 3}, new int[]{0, 0, 1, 1, 2, 2, 3, 4, 4}, new int[]{0, 0, 1, 1, 2, 2, 3, 4, 5, 5}, new int[]{0, 0, 1, 1, 2, 3, 3, 4, 4, 5, 5}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ArrayList f2942g = new ArrayList(11);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayList f2943h = new ArrayList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int[] f2944i = new int[2];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f2945j;

    public static m o(List list) {
        H aVar;
        int size = list.size() << 1;
        int i8 = size - 1;
        if (((a) list.get(list.size() - 1)).f2931b == null) {
            i8 = size - 2;
        }
        p176w5.a aVar2 = new p176w5.a(i8 * 12);
        int i9 = ((a) list.get(0)).f2931b.f2406a;
        int i10 = 0;
        for (int i11 = 11; i11 >= 0; i11--) {
            if (((1 << i11) & i9) != 0) {
                aVar2.j(i10);
            }
            i10++;
        }
        for (int i12 = 1; i12 < list.size(); i12++) {
            a aVar3 = (a) list.get(i12);
            int i13 = aVar3.f2930a.f2406a;
            for (int i14 = 11; i14 >= 0; i14--) {
                if (((1 << i14) & i13) != 0) {
                    aVar2.j(i10);
                }
                i10++;
            }
            D5.b bVar = aVar3.f2931b;
            if (bVar != null) {
                for (int i15 = 11; i15 >= 0; i15--) {
                    if (((1 << i15) & bVar.f2406a) != 0) {
                        aVar2.j(i10);
                    }
                    i10++;
                }
            }
        }
        if (aVar2.d(1)) {
            aVar = new F5.b(2, aVar2);
        } else if (aVar2.d(2)) {
            int iG = C1093bD.g(1, 4, aVar2);
            if (iG == 4) {
                aVar = new F5.a(0, aVar2);
            } else if (iG != 5) {
                int iG2 = C1093bD.g(1, 5, aVar2);
                if (iG2 == 12) {
                    aVar = new F5.b(0, aVar2);
                } else if (iG2 != 13) {
                    switch (C1093bD.g(1, 7, aVar2)) {
                        case 56:
                            aVar = new F5.c(aVar2, "310", "11");
                            break;
                        case 57:
                            aVar = new F5.c(aVar2, "320", "11");
                            break;
                        case 58:
                            aVar = new F5.c(aVar2, "310", "13");
                            break;
                        case 59:
                            aVar = new F5.c(aVar2, "320", "13");
                            break;
                        case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                            aVar = new F5.c(aVar2, "310", "15");
                            break;
                        case 61:
                            aVar = new F5.c(aVar2, "320", "15");
                            break;
                        case 62:
                            aVar = new F5.c(aVar2, "310", "17");
                            break;
                        case 63:
                            aVar = new F5.c(aVar2, "320", "17");
                            break;
                        default:
                            throw new IllegalStateException("unknown decoder: ".concat(String.valueOf(aVar2)));
                    }
                } else {
                    aVar = new F5.b(1, aVar2);
                }
            } else {
                aVar = new F5.a(1, aVar2);
            }
        } else {
            aVar = new g(aVar2);
        }
        String strI = aVar.i();
        o[] oVarArr = ((a) list.get(0)).f2932c.f2410c;
        o[] oVarArr2 = ((a) list.get(list.size() - 1)).f2932c.f2410c;
        return new m(strI, null, new o[]{oVarArr[0], oVarArr[1], oVarArr2[0], oVarArr2[1]}, p130q5.a.f29591T);
    }

    @Override // C5.j, p130q5.k
    public final void a() {
        this.f2942g.clear();
        this.f2943h.clear();
    }

    @Override // C5.j
    public final m d(int i8, p176w5.a aVar, Map map) {
        ArrayList arrayList = this.f2942g;
        arrayList.clear();
        this.f2945j = false;
        try {
            return o(q(i8, aVar));
        } catch (i unused) {
            arrayList.clear();
            this.f2945j = true;
            return o(q(i8, aVar));
        }
    }

    public final boolean l() {
        ArrayList arrayList = this.f2942g;
        a aVar = (a) arrayList.get(0);
        D5.b bVar = aVar.f2930a;
        D5.b bVar2 = aVar.f2931b;
        if (bVar2 == null) {
            return false;
        }
        int i8 = 2;
        int i9 = bVar2.f2407b;
        for (int i10 = 1; i10 < arrayList.size(); i10++) {
            a aVar2 = (a) arrayList.get(i10);
            i9 += aVar2.f2930a.f2407b;
            int i11 = i8 + 1;
            D5.b bVar3 = aVar2.f2931b;
            if (bVar3 != null) {
                i9 += bVar3.f2407b;
                i8 += 2;
            } else {
                i8 = i11;
            }
        }
        return ((i8 + (-4)) * 211) + (i9 % 211) == bVar.f2406a;
    }

    public final List m(int i8, ArrayList arrayList) throws i {
        while (true) {
            ArrayList arrayList2 = this.f2943h;
            if (i8 >= arrayList2.size()) {
                throw i.f29623I;
            }
            b bVar = (b) arrayList2.get(i8);
            ArrayList arrayList3 = this.f2942g;
            arrayList3.clear();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList3.addAll(((b) it.next()).f2933a);
            }
            arrayList3.addAll(bVar.f2933a);
            int[][] iArr = f2941p;
            for (int i9 = 0; i9 < 10; i9++) {
                int[] iArr2 = iArr[i9];
                if (arrayList3.size() <= iArr2.length) {
                    int i10 = 0;
                    while (true) {
                        if (i10 >= arrayList3.size()) {
                            if (!l()) {
                                ArrayList arrayList4 = new ArrayList(arrayList);
                                arrayList4.add(bVar);
                                try {
                                    return m(i8 + 1, arrayList4);
                                } catch (i unused) {
                                    break;
                                }
                            }
                            return arrayList3;
                        }
                        if (((a) arrayList3.get(i10)).f2932c.f2408a != iArr2[i10]) {
                            break;
                        }
                        i10++;
                    }
                }
            }
            i8++;
        }
    }

    public final List n(boolean z7) {
        ArrayList arrayList = this.f2943h;
        List listM = null;
        if (arrayList.size() > 25) {
            arrayList.clear();
            return null;
        }
        this.f2942g.clear();
        if (z7) {
            Collections.reverse(arrayList);
        }
        try {
            listM = m(0, new ArrayList());
        } catch (i unused) {
        }
        if (z7) {
            Collections.reverse(arrayList);
        }
        return listM;
    }

    public final D5.b p(p176w5.a aVar, D5.c cVar, boolean z7, boolean z8) throws i {
        boolean z9;
        boolean z10;
        boolean z11;
        boolean z12;
        int[][] iArr;
        int[] iArr2 = this.f2401b;
        Arrays.fill(iArr2, 0);
        if (z8) {
            j.h(cVar.f2409b[0], aVar, iArr2);
        } else {
            j.g(cVar.f2409b[1], aVar, iArr2);
            int i8 = 0;
            for (int length = iArr2.length - 1; i8 < length; length--) {
                int i9 = iArr2[i8];
                iArr2[i8] = iArr2[length];
                iArr2[length] = i9;
                i8++;
            }
        }
        float fT = v.t(iArr2) / 17.0f;
        int[] iArr3 = cVar.f2409b;
        float f8 = (iArr3[1] - iArr3[0]) / 15.0f;
        if (Math.abs(fT - f8) / f8 > 0.3f) {
            throw i.f29623I;
        }
        int i10 = 0;
        while (true) {
            int length2 = iArr2.length;
            float[] fArr = this.f2403d;
            float[] fArr2 = this.f2402c;
            int[] iArr4 = this.f2405f;
            int[] iArr5 = this.f2404e;
            if (i10 >= length2) {
                int iT = v.t(iArr5);
                int iT2 = v.t(iArr4);
                if (iT > 13) {
                    z9 = false;
                    z10 = true;
                } else {
                    z9 = iT < 4;
                    z10 = false;
                }
                if (iT2 > 13) {
                    z11 = false;
                    z12 = true;
                } else {
                    z11 = iT2 < 4;
                    z12 = false;
                }
                int i11 = (iT + iT2) - 17;
                boolean z13 = (iT & 1) == 1;
                boolean z14 = (iT2 & 1) == 0;
                if (i11 != -1) {
                    if (i11 != 0) {
                        if (i11 != 1) {
                            throw i.f29623I;
                        }
                        if (!z13) {
                            if (!z14) {
                                throw i.f29623I;
                            }
                            z12 = true;
                        } else {
                            if (z14) {
                                throw i.f29623I;
                            }
                            z10 = true;
                        }
                    } else if (z13) {
                        if (!z14) {
                            throw i.f29623I;
                        }
                        if (iT < iT2) {
                            z9 = true;
                            z12 = true;
                        } else {
                            z10 = true;
                            z11 = true;
                        }
                    } else if (z14) {
                        throw i.f29623I;
                    }
                } else if (!z13) {
                    if (!z14) {
                        throw i.f29623I;
                    }
                    z11 = true;
                } else {
                    if (z14) {
                        throw i.f29623I;
                    }
                    z9 = true;
                }
                if (z9) {
                    if (z10) {
                        throw i.f29623I;
                    }
                    D5.a.j(iArr5, fArr2);
                }
                if (z10) {
                    D5.a.i(iArr5, fArr2);
                }
                if (z11) {
                    if (z12) {
                        throw i.f29623I;
                    }
                    D5.a.j(iArr4, fArr2);
                }
                if (z12) {
                    D5.a.i(iArr4, fArr);
                }
                int i12 = cVar.f2408a;
                int i13 = (((i12 * 4) + (z7 ? 0 : 2)) + (!z8 ? 1 : 0)) - 1;
                int length3 = iArr5.length - 1;
                int i14 = 0;
                int i15 = 0;
                while (true) {
                    iArr = f2940o;
                    if (length3 < 0) {
                        break;
                    }
                    if (i12 != 0 || !z7 || !z8) {
                        i14 += iArr5[length3] * iArr[i13][length3 * 2];
                    }
                    i15 += iArr5[length3];
                    length3--;
                }
                int i16 = 0;
                for (int length4 = iArr4.length - 1; length4 >= 0; length4--) {
                    if (i12 != 0 || !z7 || !z8) {
                        i16 += iArr4[length4] * iArr[i13][(length4 * 2) + 1];
                    }
                }
                int i17 = i14 + i16;
                if ((i15 & 1) != 0 || i15 > 13 || i15 < 4) {
                    throw i.f29623I;
                }
                int i18 = (13 - i15) / 2;
                int i19 = f2936k[i18];
                return new D5.b((k.J(iArr5, i19, true) * f2937l[i18]) + k.J(iArr4, 9 - i19, false) + f2938m[i18], i17);
            }
            float f9 = (iArr2[i10] * 1.0f) / fT;
            int i20 = (int) (0.5f + f9);
            if (i20 <= 0) {
                if (f9 < 0.3f) {
                    throw i.f29623I;
                }
                i20 = 1;
            } else if (i20 > 8) {
                if (f9 > 8.7f) {
                    throw i.f29623I;
                }
                i20 = 8;
            }
            int i21 = i10 / 2;
            if ((i10 & 1) == 0) {
                iArr5[i21] = i20;
                fArr2[i21] = f9 - i20;
            } else {
                iArr4[i21] = i20;
                fArr[i21] = f9 - i20;
            }
            i10++;
        }
    }

    /* JADX WARN: Code duplicated, block: B:51:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:53:0x00cf A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:54:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:56:0x00d6 A[RETURN] */
    public final List q(int i8, p176w5.a aVar) throws i {
        List listN;
        List listN2;
        boolean z7 = false;
        while (true) {
            ArrayList arrayList = this.f2942g;
            if (z7) {
                if (l()) {
                    return arrayList;
                }
                ArrayList arrayList2 = this.f2943h;
                boolean z8 = !arrayList2.isEmpty();
                int i9 = 0;
                boolean zEquals = false;
                while (true) {
                    if (i9 < arrayList2.size()) {
                        b bVar = (b) arrayList2.get(i9);
                        int i10 = bVar.f2934b;
                        ArrayList arrayList3 = bVar.f2933a;
                        if (i10 > i8) {
                            if (!arrayList3.equals(arrayList)) {
                            }
                            if (z8) {
                                listN = n(false);
                                if (listN != null) {
                                    return listN;
                                }
                                listN2 = n(true);
                                if (listN2 != null) {
                                    return listN2;
                                }
                            }
                            throw i.f29623I;
                        }
                        zEquals = arrayList3.equals(arrayList);
                        i9++;
                    }
                    if (!zEquals) {
                        Iterator it = arrayList2.iterator();
                        loop2: while (true) {
                            if (!it.hasNext()) {
                                arrayList2.add(i9, new b(i8, arrayList));
                                Iterator it2 = arrayList2.iterator();
                                while (it2.hasNext()) {
                                    b bVar2 = (b) it2.next();
                                    if (bVar2.f2933a.size() != arrayList.size()) {
                                        Iterator it3 = bVar2.f2933a.iterator();
                                        do {
                                            if (!it3.hasNext()) {
                                                it2.remove();
                                                break;
                                            }
                                        } while (arrayList.contains((a) it3.next()));
                                    }
                                }
                                break;
                            }
                            b bVar3 = (b) it.next();
                            Iterator it4 = arrayList.iterator();
                            while (true) {
                                if (!it4.hasNext()) {
                                    break loop2;
                                }
                                a aVar2 = (a) it4.next();
                                Iterator it5 = bVar3.f2933a.iterator();
                                while (true) {
                                    if (it5.hasNext()) {
                                        if (aVar2.equals((a) it5.next())) {
                                        }
                                    }
                                }
                            }
                        }
                    }
                    if (z8) {
                        listN = n(false);
                        if (listN != null) {
                            return listN;
                        }
                        listN2 = n(true);
                        if (listN2 != null) {
                            return listN2;
                        }
                    }
                    throw i.f29623I;
                }
            }
            try {
                arrayList.add(r(aVar, arrayList, i8));
            } catch (i e8) {
                if (arrayList.isEmpty()) {
                    throw e8;
                }
                z7 = true;
            }
        }
    }

    public final a r(p176w5.a aVar, ArrayList arrayList, int i8) throws i {
        int i9;
        int i10;
        int iF;
        int i11;
        D5.c cVar;
        int i12 = 2;
        int i13 = 0;
        int i14 = 1;
        boolean z7 = arrayList.size() % 2 == 0;
        if (this.f2945j) {
            z7 = !z7;
        }
        int iE = -1;
        boolean z8 = true;
        while (true) {
            int[] iArr = this.f2400a;
            iArr[i13] = i13;
            iArr[i14] = i13;
            iArr[i12] = i13;
            int i15 = 3;
            iArr[3] = i13;
            int i16 = aVar.f31090H;
            int i17 = iE >= 0 ? iE : arrayList.isEmpty() ? 0 : ((a) U2.g(arrayList, i14)).f2932c.f2409b[i14];
            boolean z9 = arrayList.size() % i12 != 0;
            if (this.f2945j) {
                z9 = !z9;
            }
            int iD = 0;
            while (i17 < i16) {
                iD = aVar.d(i17) ^ i14;
                if (iD == 0) {
                    break;
                }
                i17++;
            }
            int i18 = iD;
            int i19 = 0;
            int i20 = i17;
            while (true) {
                if (i17 >= i16) {
                    throw i.f29623I;
                }
                if (aVar.d(i17) != i18) {
                    iArr[i19] = iArr[i19] + i14;
                } else {
                    if (i19 == i15) {
                        if (z9) {
                            int length = iArr.length;
                            for (int i21 = 0; i21 < length / 2; i21++) {
                                int i22 = iArr[i21];
                                int i23 = (length - i21) - 1;
                                iArr[i21] = iArr[i23];
                                iArr[i23] = i22;
                            }
                        }
                        if (D5.a.k(iArr)) {
                            break;
                        }
                        if (z9) {
                            int length2 = iArr.length;
                            for (int i24 = 0; i24 < length2 / 2; i24++) {
                                int i25 = iArr[i24];
                                int i26 = (length2 - i24) - 1;
                                iArr[i24] = iArr[i26];
                                iArr[i26] = i25;
                            }
                        }
                        i9 = 1;
                        i20 += iArr[0] + iArr[1];
                        iArr[0] = iArr[2];
                        i15 = 3;
                        iArr[1] = iArr[3];
                        iArr[2] = 0;
                        iArr[3] = 0;
                        i19--;
                    } else {
                        i9 = 1;
                        i19++;
                    }
                    iArr[i19] = i9;
                    i18 ^= 1;
                }
                i17++;
                i14 = 1;
            }
            int[] iArr2 = this.f2944i;
            iArr2[0] = i20;
            iArr2[1] = i17;
            if (z7) {
                int i27 = i20 - 1;
                while (i27 >= 0 && !aVar.d(i27)) {
                    i27--;
                }
                i20 = i27 + 1;
                i11 = iArr2[0] - i20;
                i10 = 1;
                iF = iArr2[1];
            } else {
                i10 = 1;
                iF = aVar.f(i17 + 1);
                i11 = iF - iArr2[1];
            }
            int i28 = iF;
            int i29 = i20;
            System.arraycopy(iArr, 0, iArr, i10, iArr.length - i10);
            iArr[0] = i11;
            D5.b bVarP = null;
            try {
                int[][] iArr3 = f2939n;
                int i30 = 0;
                while (true) {
                    if (i30 >= 6) {
                        throw i.f29623I;
                    }
                    if (j.f(iArr, iArr3[i30], 0.45f) < 0.2f) {
                        cVar = new D5.c(i30, i29, i28, i8, new int[]{i29, i28});
                        break;
                    }
                    i30++;
                }
            } catch (i unused) {
                cVar = null;
            }
            if (cVar == null) {
                int i31 = iArr2[0];
                iE = aVar.d(i31) ? aVar.e(aVar.f(i31)) : aVar.f(aVar.e(i31));
            } else {
                z8 = false;
            }
            if (!z8) {
                D5.b bVarP2 = p(aVar, cVar, z7, true);
                if (!arrayList.isEmpty() && ((a) U2.g(arrayList, 1)).f2931b == null) {
                    throw i.f29623I;
                }
                try {
                    bVarP = p(aVar, cVar, z7, false);
                } catch (i unused2) {
                }
                return new a(bVarP2, bVarP, cVar);
            }
            i12 = 2;
            i13 = 0;
            i14 = 1;
        }
    }
}
