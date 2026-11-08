package p198z5;

import A0.O;
import B0.C0041c;
import K.k;
import L5.f;
import N.r;
import Z3.C0433o;
import com.google.android.gms.internal.ads.C1093bD;
import java.io.UnsupportedEncodingException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage;
import p130q5.b;
import p130q5.e;
import p156u.h;
import p176w5.d;
import p184x5.a;

/* JADX INFO: loaded from: classes2.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f31916a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C0433o f31917b;

    public c(int i8) {
        this.f31916a = i8;
        if (i8 == 1) {
            this.f31917b = new C0433o(a.f31210o, 19);
        } else if (i8 != 2) {
            this.f31917b = new C0433o(a.f31208m, 19);
        } else {
            this.f31917b = new C0433o(a.f31207l, 19);
        }
    }

    public final void a(int i8, byte[] bArr) throws b {
        int i9 = this.f31916a;
        C0433o c0433o = this.f31917b;
        int i10 = 0;
        switch (i9) {
            case 0:
                int length = bArr.length;
                int[] iArr = new int[length];
                for (int i11 = 0; i11 < length; i11++) {
                    iArr[i11] = bArr[i11] & 255;
                }
                try {
                    c0433o.e(iArr, bArr.length - i8);
                    while (i10 < i8) {
                        bArr[i10] = (byte) iArr[i10];
                        i10++;
                    }
                    return;
                } catch (p184x5.c unused) {
                    throw b.a();
                }
            default:
                int length2 = bArr.length;
                int[] iArr2 = new int[length2];
                for (int i12 = 0; i12 < length2; i12++) {
                    iArr2[i12] = bArr[i12] & 255;
                }
                try {
                    c0433o.e(iArr2, bArr.length - i8);
                    while (i10 < i8) {
                        bArr[i10] = (byte) iArr2[i10];
                        i10++;
                    }
                    return;
                } catch (p184x5.c unused2) {
                    throw b.a();
                }
        }
    }

    public final void b(byte[] bArr, int i8, int i9, int i10, int i11) throws b {
        int i12 = i9 + i10;
        int i13 = i11 == 0 ? 1 : 2;
        int[] iArr = new int[i12 / i13];
        for (int i14 = 0; i14 < i12; i14++) {
            if (i11 == 0 || i14 % 2 == i11 - 1) {
                iArr[i14 / i13] = bArr[i14 + i8] & 255;
            }
        }
        try {
            this.f31917b.e(iArr, i10 / i13);
            for (int i15 = 0; i15 < i9; i15++) {
                if (i11 == 0 || i15 % 2 == i11 - 1) {
                    bArr[i15 + i8] = (byte) iArr[i15 / i13];
                }
            }
        } catch (p184x5.c unused) {
            throw b.a();
        }
    }

    public final d c(C0041c c0041c, Map map) throws b, e {
        int i8;
        L5.d dVar;
        L5.d dVar2;
        boolean z7;
        int iB;
        int i9;
        f fVarK = c0041c.k();
        L5.b bVar = c0041c.j().f4709a;
        L5.c cVarJ = c0041c.j();
        f fVarK2 = c0041c.k();
        int i10 = h.c(8)[cVarJ.f4710b];
        p176w5.b bVar2 = (p176w5.b) c0041c.f914H;
        int i11 = bVar2.f31092H;
        for (int i12 = 0; i12 < i11; i12++) {
            for (int i13 = 0; i13 < i11; i13++) {
                if (O.d(i10, i12, i13)) {
                    bVar2.a(i13, i12);
                }
            }
        }
        int i14 = fVarK2.f4726a * 4;
        int i15 = i14 + 17;
        p176w5.b bVar3 = new p176w5.b(i15, i15);
        bVar3.g(0, 0, 9, 9);
        int i16 = i14 + 9;
        bVar3.g(i16, 0, 8, 9);
        bVar3.g(0, i16, 9, 8);
        int[] iArr = fVarK2.f4727b;
        int length = iArr.length;
        int i17 = 0;
        while (true) {
            i8 = 2;
            if (i17 >= length) {
                break;
            }
            int i18 = iArr[i17] - 2;
            for (int i19 = 0; i19 < length; i19++) {
                if ((i17 != 0 || (i19 != 0 && i19 != length - 1)) && (i17 != length - 1 || i19 != 0)) {
                    bVar3.g(iArr[i19] - 2, i18, 5, 5);
                }
            }
            i17++;
        }
        int i20 = 6;
        bVar3.g(6, 9, 1, i14);
        bVar3.g(9, 6, i14, 1);
        if (fVarK2.f4726a > 6) {
            int i21 = i14 + 6;
            bVar3.g(i21, 0, 3, 6);
            bVar3.g(0, i21, 6, 3);
        }
        int i22 = fVarK2.f4729d;
        byte[] bArr = new byte[i22];
        int i23 = i11 - 1;
        int i24 = i23;
        int i25 = 0;
        int i26 = 0;
        int i27 = 0;
        boolean z8 = true;
        while (i24 > 0) {
            if (i24 == i20) {
                i24--;
            }
            int i28 = i27;
            int i29 = 0;
            while (i29 < i11) {
                int i30 = z8 ? i23 - i29 : i29;
                int i31 = 0;
                while (i31 < i8) {
                    int i32 = i24 - i31;
                    if (!bVar3.b(i32, i30)) {
                        i26++;
                        int i33 = i28 << 1;
                        int i34 = bVar2.b(i32, i30) ? i33 | 1 : i33;
                        if (i26 == 8) {
                            bArr[i25] = (byte) i34;
                            i25++;
                            i26 = 0;
                            i28 = 0;
                        } else {
                            i28 = i34;
                        }
                    }
                    i31++;
                    i8 = 2;
                }
                i29++;
                i8 = 2;
            }
            z8 = !z8;
            i24 -= 2;
            i27 = i28;
            i20 = 6;
            i8 = 2;
        }
        if (i25 != i22) {
            throw e.a();
        }
        if (i22 != fVarK.f4729d) {
            throw new IllegalArgumentException();
        }
        k kVar = fVarK.f4728c[bVar.ordinal()];
        r[] rVarArr = (r[]) kVar.f4295I;
        int iA = 0;
        for (r rVar : rVarArr) {
            iA += rVar.a();
        }
        a[] aVarArr = new a[iA];
        int length2 = rVarArr.length;
        int i35 = 0;
        for (int i36 = 0; i36 < length2; i36++) {
            r rVar2 = rVarArr[i36];
            int i37 = 0;
            while (i37 < rVar2.a()) {
                switch (rVar2.f4918G) {
                    case 12:
                        i9 = rVar2.f4920I;
                        break;
                    default:
                        i9 = rVar2.f4920I;
                        break;
                }
                aVarArr[i35] = new a(i9, new byte[kVar.f4294H + i9], 1);
                i37++;
                i35++;
                rVarArr = rVarArr;
            }
        }
        int length3 = aVarArr[0].f31910c.length;
        int i38 = iA - 1;
        while (i38 >= 0 && aVarArr[i38].f31910c.length != length3) {
            i38--;
        }
        int i39 = i38 + 1;
        int i40 = length3 - kVar.f4294H;
        int i41 = 0;
        int i42 = 0;
        while (i41 < i40) {
            int i43 = i42;
            int i44 = 0;
            while (i44 < i35) {
                aVarArr[i44].f31910c[i41] = bArr[i43];
                i44++;
                i43++;
            }
            i41++;
            i42 = i43;
        }
        int i45 = i39;
        while (i45 < i35) {
            aVarArr[i45].f31910c[i40] = bArr[i42];
            i45++;
            i42++;
        }
        int length4 = aVarArr[0].f31910c.length;
        while (i40 < length4) {
            int i46 = i42;
            int i47 = 0;
            while (i47 < i35) {
                aVarArr[i47].f31910c[i47 < i39 ? i40 : i40 + 1] = bArr[i46];
                i47++;
                i46++;
            }
            i40++;
            i42 = i46;
        }
        int i48 = 0;
        for (int i49 = 0; i49 < iA; i49++) {
            a aVar = aVarArr[i49];
            int i50 = aVar.f31908a;
            i48 += aVar.f31909b;
        }
        byte[] bArr2 = new byte[i48];
        int i51 = 0;
        for (int i52 = 0; i52 < iA; i52++) {
            a aVar2 = aVarArr[i52];
            int i53 = aVar2.f31908a;
            int i54 = aVar2.f31909b;
            byte[] bArr3 = aVar2.f31910c;
            a(i54, bArr3);
            int i55 = 0;
            while (i55 < i54) {
                bArr2[i51] = bArr3[i55];
                i55++;
                i51++;
            }
        }
        char[] cArr = L5.a.f4703a;
        P2.b bVar4 = new P2.b(bArr2, 3);
        StringBuilder sb = new StringBuilder(50);
        ArrayList arrayList = new ArrayList(1);
        int iB2 = -1;
        boolean z9 = false;
        int iB3 = -1;
        p176w5.c cVar = null;
        while (true) {
            try {
                int iA2 = bVar4.a();
                L5.d dVar3 = L5.d.TERMINATOR;
                if (iA2 < 4) {
                    dVar2 = dVar3;
                } else {
                    int iB4 = bVar4.b(4);
                    if (iB4 == 0) {
                        dVar = dVar3;
                    } else if (iB4 == 1) {
                        dVar = L5.d.NUMERIC;
                    } else if (iB4 == 2) {
                        dVar = L5.d.ALPHANUMERIC;
                    } else if (iB4 == 3) {
                        dVar = L5.d.STRUCTURED_APPEND;
                    } else if (iB4 == 4) {
                        dVar = L5.d.BYTE;
                    } else if (iB4 == 5) {
                        dVar = L5.d.FNC1_FIRST_POSITION;
                    } else if (iB4 == 7) {
                        dVar = L5.d.ECI;
                    } else if (iB4 == 8) {
                        dVar = L5.d.KANJI;
                    } else if (iB4 == 9) {
                        dVar = L5.d.FNC1_SECOND_POSITION;
                    } else {
                        if (iB4 != 13) {
                            throw new IllegalArgumentException();
                        }
                        dVar = L5.d.HANZI;
                    }
                    dVar2 = dVar;
                }
                int iOrdinal = dVar2.ordinal();
                if (iOrdinal == 0) {
                    iB2 = iB2;
                    dVar2 = dVar2;
                    dVar3 = dVar3;
                    iB3 = iB3;
                    z7 = z9;
                    z9 = z7;
                } else {
                    if (iOrdinal == 3) {
                        dVar2 = dVar2;
                        dVar3 = dVar3;
                        z7 = z9;
                        if (bVar4.a() < 16) {
                            throw e.a();
                        }
                        iB2 = bVar4.b(8);
                        iB3 = bVar4.b(8);
                    } else if (iOrdinal == 5) {
                        iB2 = iB2;
                        dVar2 = dVar2;
                        dVar3 = dVar3;
                        iB3 = iB3;
                        boolean z10 = z9;
                        int iB5 = bVar4.b(8);
                        if ((iB5 & 128) == 0) {
                            iB = iB5 & 127;
                        } else if ((iB5 & 192) == 128) {
                            iB = ((iB5 & 63) << 8) | bVar4.b(8);
                        } else {
                            if ((iB5 & 224) != 192) {
                                throw e.a();
                            }
                            iB = bVar4.b(16) | ((iB5 & 31) << 16);
                        }
                        HashMap map2 = p176w5.c.f31095I;
                        if (iB < 0 || iB >= 900) {
                            throw e.a();
                        }
                        cVar = (p176w5.c) p176w5.c.f31095I.get(Integer.valueOf(iB));
                        if (cVar == null) {
                            throw e.a();
                        }
                        z9 = z10;
                    } else if (iOrdinal == 7 || iOrdinal == 8) {
                        iB2 = iB2;
                        dVar2 = dVar2;
                        dVar3 = dVar3;
                        iB3 = iB3;
                        z9 = true;
                    } else if (iOrdinal != 9) {
                        int iB6 = bVar4.b(dVar2.a(fVarK));
                        int iOrdinal2 = dVar2.ordinal();
                        if (iOrdinal2 == 1) {
                            z7 = z9;
                            L5.a.e(bVar4, sb, iB6);
                        } else if (iOrdinal2 == 2) {
                            z7 = z9;
                            L5.a.a(bVar4, sb, iB6, z7);
                        } else if (iOrdinal2 == 4) {
                            z7 = z9;
                            L5.a.b(bVar4, sb, iB6, cVar, arrayList, map);
                        } else {
                            if (iOrdinal2 != 6) {
                                throw e.a();
                            }
                            L5.a.d(bVar4, sb, iB6);
                            iB2 = iB2;
                            dVar2 = dVar2;
                            dVar3 = dVar3;
                            iB3 = iB3;
                            z7 = z9;
                        }
                    } else {
                        iB2 = iB2;
                        dVar2 = dVar2;
                        dVar3 = dVar3;
                        iB3 = iB3;
                        z7 = z9;
                        int iB7 = bVar4.b(4);
                        int iB8 = bVar4.b(dVar2.a(fVarK));
                        if (iB7 == 1) {
                            L5.a.c(bVar4, sb, iB8);
                        }
                    }
                    z9 = z7;
                }
                if (dVar2 == dVar3) {
                    String string = sb.toString();
                    if (arrayList.isEmpty()) {
                        arrayList = null;
                    }
                    return new d(bArr2, string, arrayList, bVar.toString(), iB2, iB3);
                }
                iB2 = iB2;
                iB3 = iB3;
            } catch (IllegalArgumentException unused) {
                throw e.a();
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:485:0x03c2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:493:? A[LOOP:13: B:199:0x0359->B:493:?, LOOP_END, SYNTHETIC] */
    public final d d(p176w5.b bVar) throws b, e {
        p176w5.b bVar2;
        int iB;
        int i8;
        int iB2;
        int iB3;
        int i9;
        C1093bD c1093bD = new C1093bD(bVar);
        d dVar = (d) c1093bD.f18027I;
        int i10 = dVar.f31925g;
        byte[] bArr = new byte[i10];
        p176w5.b bVar3 = (p176w5.b) c1093bD.f18028J;
        int i11 = bVar3.f31092H;
        int i12 = 0;
        int i13 = 4;
        int i14 = 0;
        boolean z7 = false;
        int i15 = 0;
        boolean z8 = false;
        boolean z9 = false;
        boolean z10 = false;
        while (true) {
            int i16 = bVar3.f31091G;
            if (i13 == i11 && i14 == 0 && !z7) {
                int i17 = i15 + 1;
                int i18 = i11 - 1;
                int i19 = (c1093bD.j(i18, i12, i11, i16) ? 1 : 0) << 1;
                if (c1093bD.j(i18, 1, i11, i16)) {
                    i19 |= 1;
                }
                int i20 = i19 << 1;
                if (c1093bD.j(i18, 2, i11, i16)) {
                    i20 |= 1;
                }
                int i21 = i20 << 1;
                bVar2 = bVar3;
                if (c1093bD.j(0, i16 - 2, i11, i16)) {
                    i21 |= 1;
                }
                int i22 = i21 << 1;
                int i23 = i16 - 1;
                if (c1093bD.j(0, i23, i11, i16)) {
                    i22 |= 1;
                }
                int i24 = i22 << 1;
                if (c1093bD.j(1, i23, i11, i16)) {
                    i24 |= 1;
                }
                int i25 = i24 << 1;
                if (c1093bD.j(2, i23, i11, i16)) {
                    i25 |= 1;
                }
                int i26 = i25 << 1;
                if (c1093bD.j(3, i23, i11, i16)) {
                    i26 |= 1;
                }
                bArr[i15] = (byte) i26;
                i13 -= 2;
                i14 += 2;
                i15 = i17;
                z7 = true;
            } else {
                bVar2 = bVar3;
                int i27 = i11 - 2;
                if (i13 == i27 && i14 == 0 && (i16 & 3) != 0 && !z8) {
                    int i28 = i15 + 1;
                    int i29 = (c1093bD.j(i11 + (-3), 0, i11, i16) ? 1 : 0) << 1;
                    if (c1093bD.j(i27, 0, i11, i16)) {
                        i29 |= 1;
                    }
                    int i30 = i29 << 1;
                    if (c1093bD.j(i11 - 1, 0, i11, i16)) {
                        i30 |= 1;
                    }
                    int i31 = i30 << 1;
                    if (c1093bD.j(0, i16 - 4, i11, i16)) {
                        i31 |= 1;
                    }
                    int i32 = i31 << 1;
                    if (c1093bD.j(0, i16 - 3, i11, i16)) {
                        i32 |= 1;
                    }
                    int i33 = i32 << 1;
                    if (c1093bD.j(0, i16 - 2, i11, i16)) {
                        i33 |= 1;
                    }
                    int i34 = i33 << 1;
                    int i35 = i16 - 1;
                    if (c1093bD.j(0, i35, i11, i16)) {
                        i34 |= 1;
                    }
                    int i36 = i34 << 1;
                    if (c1093bD.j(1, i35, i11, i16)) {
                        i36 |= 1;
                    }
                    bArr[i15] = (byte) i36;
                    i13 -= 2;
                    i14 += 2;
                    i15 = i28;
                    z8 = true;
                } else if (i13 == i11 + 4 && i14 == 2 && (i16 & 7) == 0 && !z9) {
                    int i37 = i15 + 1;
                    int i38 = i11 - 1;
                    int i39 = (c1093bD.j(i38, 0, i11, i16) ? 1 : 0) << 1;
                    int i40 = i16 - 1;
                    if (c1093bD.j(i38, i40, i11, i16)) {
                        i39 |= 1;
                    }
                    int i41 = i39 << 1;
                    int i42 = i16 - 3;
                    if (c1093bD.j(0, i42, i11, i16)) {
                        i41 |= 1;
                    }
                    int i43 = i41 << 1;
                    int i44 = i16 - 2;
                    boolean z11 = z7;
                    if (c1093bD.j(0, i44, i11, i16)) {
                        i43 |= 1;
                    }
                    boolean z12 = z8;
                    int i45 = i43 << 1;
                    if (c1093bD.j(0, i40, i11, i16)) {
                        i45 |= 1;
                    }
                    int i46 = i45 << 1;
                    if (c1093bD.j(1, i42, i11, i16)) {
                        i46 |= 1;
                    }
                    int i47 = i46 << 1;
                    if (c1093bD.j(1, i44, i11, i16)) {
                        i47 |= 1;
                    }
                    int i48 = i47 << 1;
                    if (c1093bD.j(1, i40, i11, i16)) {
                        i48 |= 1;
                    }
                    bArr[i15] = (byte) i48;
                    i13 -= 2;
                    i14 += 2;
                    i15 = i37;
                    z7 = z11;
                    z8 = z12;
                    z9 = true;
                } else {
                    boolean z13 = z7;
                    boolean z14 = z8;
                    if (i13 == i27 && i14 == 0 && (i16 & 7) == 4 && !z10) {
                        int i49 = i15 + 1;
                        int i50 = (c1093bD.j(i11 + (-3), 0, i11, i16) ? 1 : 0) << 1;
                        if (c1093bD.j(i27, 0, i11, i16)) {
                            i50 |= 1;
                        }
                        int i51 = i50 << 1;
                        if (c1093bD.j(i11 - 1, 0, i11, i16)) {
                            i51 |= 1;
                        }
                        int i52 = i51 << 1;
                        if (c1093bD.j(0, i16 - 2, i11, i16)) {
                            i52 |= 1;
                        }
                        int i53 = i52 << 1;
                        int i54 = i16 - 1;
                        if (c1093bD.j(0, i54, i11, i16)) {
                            i53 |= 1;
                        }
                        int i55 = i53 << 1;
                        if (c1093bD.j(1, i54, i11, i16)) {
                            i55 |= 1;
                        }
                        int i56 = i55 << 1;
                        if (c1093bD.j(2, i54, i11, i16)) {
                            i56 |= 1;
                        }
                        int i57 = i56 << 1;
                        if (c1093bD.j(3, i54, i11, i16)) {
                            i57 |= 1;
                        }
                        bArr[i15] = (byte) i57;
                        i13 -= 2;
                        i14 += 2;
                        i15 = i49;
                        z7 = z13;
                        z8 = z14;
                        z10 = true;
                    } else {
                        while (true) {
                            if (i13 < i11 && i14 >= 0 && !((p176w5.b) c1093bD.f18026H).b(i14, i13)) {
                                bArr[i15] = (byte) c1093bD.k(i13, i14, i11, i16);
                                i15++;
                            }
                            int i58 = i13 - 2;
                            int i59 = i14 + 2;
                            if (i58 < 0 || i59 >= i16) {
                                break;
                            }
                            i13 = i58;
                            i14 = i59;
                        }
                        int i60 = i13 - 1;
                        int i61 = i14 + 5;
                        while (true) {
                            if (i60 >= 0 && i61 < i16 && !((p176w5.b) c1093bD.f18026H).b(i61, i60)) {
                                bArr[i15] = (byte) c1093bD.k(i60, i61, i11, i16);
                                i15++;
                            }
                            int i62 = i60 + 2;
                            int i63 = i61 - 2;
                            if (i62 >= i11 || i63 < 0) {
                                break;
                            }
                            i60 = i62;
                            i61 = i63;
                        }
                        i13 = i60 + 5;
                        i14 = i61 - 1;
                        z7 = z13;
                        z8 = z14;
                    }
                }
            }
            if (i13 >= i11 && i14 >= i16) {
                break;
            }
            bVar3 = bVar2;
            i12 = 0;
        }
        if (i15 != ((d) c1093bD.f18027I).f31925g) {
            throw e.a();
        }
        k kVar = dVar.f31924f;
        r[] rVarArr = (r[]) kVar.f4295I;
        int iA = 0;
        for (r rVar : rVarArr) {
            iA += rVar.a();
        }
        a[] aVarArr = new a[iA];
        int length = rVarArr.length;
        int i64 = 0;
        int i65 = 0;
        while (i64 < length) {
            r rVar2 = rVarArr[i64];
            int i66 = 0;
            while (i66 < rVar2.a()) {
                switch (rVar2.f4918G) {
                    case 12:
                        i9 = rVar2.f4920I;
                        break;
                    default:
                        i9 = rVar2.f4920I;
                        break;
                }
                aVarArr[i65] = new a(i9, new byte[kVar.f4294H + i9], 0);
                i66++;
                i65++;
                rVarArr = rVarArr;
            }
            i64++;
            rVarArr = rVarArr;
        }
        int length2 = aVarArr[0].f31910c.length - kVar.f4294H;
        int i67 = length2 - 1;
        int i68 = 0;
        for (int i69 = 0; i69 < i67; i69++) {
            int i70 = 0;
            while (i70 < i65) {
                aVarArr[i70].f31910c[i69] = bArr[i68];
                i70++;
                i68++;
            }
        }
        boolean z15 = dVar.f31919a == 24;
        int i71 = 8;
        int i72 = z15 ? 8 : i65;
        int i73 = 0;
        while (i73 < i72) {
            aVarArr[i73].f31910c[i67] = bArr[i68];
            i73++;
            i68++;
        }
        int length3 = aVarArr[0].f31910c.length;
        while (length2 < length3) {
            int i74 = 0;
            while (i74 < i65) {
                int i75 = z15 ? (i74 + 8) % i65 : i74;
                aVarArr[i75].f31910c[(!z15 || i75 <= 7) ? length2 : length2 - 1] = bArr[i68];
                i74++;
                i68++;
            }
            length2++;
        }
        if (i68 != i10) {
            throw new IllegalArgumentException();
        }
        int i76 = 0;
        for (int i77 = 0; i77 < iA; i77++) {
            a aVar = aVarArr[i77];
            int i78 = aVar.f31908a;
            i76 += aVar.f31909b;
        }
        byte[] bArr2 = new byte[i76];
        for (int i79 = 0; i79 < iA; i79++) {
            a aVar2 = aVarArr[i79];
            int i80 = aVar2.f31908a;
            int i81 = aVar2.f31909b;
            byte[] bArr3 = aVar2.f31910c;
            a(i81, bArr3);
            for (int i82 = 0; i82 < i81; i82++) {
                bArr2[(i82 * iA) + i79] = bArr3[i82];
            }
        }
        P2.b bVar4 = new P2.b(bArr2, 3);
        StringBuilder sb = new StringBuilder(100);
        StringBuilder sb2 = new StringBuilder(0);
        ArrayList arrayList = new ArrayList(1);
        int i83 = 2;
        while (true) {
            int i84 = 6;
            if (i83 == 2) {
                boolean z16 = false;
                while (true) {
                    int iB4 = bVar4.b(i71);
                    if (iB4 == 0) {
                        throw e.a();
                    }
                    if (iB4 <= 128) {
                        if (z16) {
                            iB4 += 128;
                        }
                        sb.append((char) (iB4 - 1));
                        i84 = 2;
                    } else if (iB4 == 129) {
                        i84 = 1;
                    } else {
                        if (iB4 > 229) {
                            switch (iB4) {
                                case 230:
                                    i84 = 3;
                                    break;
                                case 231:
                                    i84 = 7;
                                    break;
                                case 232:
                                    sb.append((char) 29);
                                    if (bVar4.a() <= 0) {
                                        i84 = 2;
                                    }
                                    break;
                                case 233:
                                case 234:
                                case 241:
                                    break;
                                case 235:
                                    z16 = true;
                                    if (bVar4.a() <= 0) {
                                        i84 = 2;
                                    }
                                    break;
                                case 236:
                                    sb.append("[)>\u001e05\u001d");
                                    sb2.insert(0, "\u001e\u0004");
                                    if (bVar4.a() <= 0) {
                                        i84 = 2;
                                    }
                                    break;
                                case 237:
                                    sb.append("[)>\u001e06\u001d");
                                    sb2.insert(0, "\u001e\u0004");
                                    if (bVar4.a() <= 0) {
                                        i84 = 2;
                                    }
                                    break;
                                case 238:
                                    i84 = 5;
                                    break;
                                case 239:
                                    i84 = 4;
                                    break;
                                case 240:
                                    break;
                                default:
                                    if (iB4 != 254 || bVar4.a() != 0) {
                                        throw e.a();
                                    }
                                    break;
                            }
                        } else {
                            int i85 = iB4 - 130;
                            if (i85 < 10) {
                                sb.append('0');
                            }
                            sb.append(i85);
                        }
                        if (bVar4.a() <= 0) {
                            i84 = 2;
                        }
                    }
                }
                i83 = i84;
                i8 = 1;
            } else {
                int iB5 = h.b(i83);
                if (iB5 == 2) {
                    int i86 = 3;
                    int[] iArr = new int[3];
                    boolean z17 = false;
                    int i87 = 0;
                    while (true) {
                        if (bVar4.a() != 8 && (iB = bVar4.b(8)) != 254) {
                            b.a(iB, bVar4.b(8), iArr);
                            int i88 = i87;
                            boolean z18 = z17;
                            int i89 = 0;
                            while (i89 < i86) {
                                int i90 = iArr[i89];
                                if (i88 != 0) {
                                    if (i88 != 1) {
                                        if (i88 != 2) {
                                            if (i88 != i86) {
                                                throw e.a();
                                            }
                                            if (z18) {
                                                sb.append((char) (i90 + 224));
                                                z18 = false;
                                            } else {
                                                sb.append((char) (i90 + 96));
                                            }
                                        } else if (i90 < 27) {
                                            char c8 = b.f31912b[i90];
                                            if (z18) {
                                                sb.append((char) (c8 + 128));
                                                z18 = false;
                                            } else {
                                                sb.append(c8);
                                            }
                                        } else if (i90 == 27) {
                                            sb.append((char) 29);
                                        } else {
                                            if (i90 != 30) {
                                                throw e.a();
                                            }
                                            z18 = true;
                                        }
                                    } else if (z18) {
                                        sb.append((char) (i90 + 128));
                                        z18 = false;
                                    } else {
                                        sb.append((char) i90);
                                    }
                                    i88 = 0;
                                } else if (i90 < i86) {
                                    i88 = i90 + 1;
                                } else {
                                    if (i90 >= 40) {
                                        throw e.a();
                                    }
                                    char c9 = b.f31911a[i90];
                                    if (z18) {
                                        sb.append((char) (c9 + 128));
                                        z18 = false;
                                    } else {
                                        sb.append(c9);
                                    }
                                }
                                i89++;
                                i86 = 3;
                            }
                            if (bVar4.a() > 0) {
                                z17 = z18;
                                i87 = i88;
                                i86 = 3;
                            }
                        }
                    }
                    i83 = 2;
                    i8 = 1;
                } else if (iB5 == 3) {
                    int i91 = 3;
                    int[] iArr2 = new int[3];
                    boolean z19 = false;
                    int i92 = 0;
                    for (int i93 = 254; bVar4.a() != i71 && (iB2 = bVar4.b(i71)) != i93; i93 = 254) {
                        b.a(iB2, bVar4.b(i71), iArr2);
                        int i94 = i92;
                        int i95 = 0;
                        while (i95 < i91) {
                            int i96 = iArr2[i95];
                            if (i94 != 0) {
                                if (i94 != 1) {
                                    if (i94 != 2) {
                                        if (i94 != i91) {
                                            throw e.a();
                                        }
                                        if (i96 >= 32) {
                                            throw e.a();
                                        }
                                        char c10 = b.f31915e[i96];
                                        if (z19) {
                                            sb.append((char) (c10 + 128));
                                            z19 = false;
                                        } else {
                                            sb.append(c10);
                                        }
                                    } else if (i96 < 27) {
                                        char c11 = b.f31914d[i96];
                                        if (z19) {
                                            sb.append((char) (c11 + 128));
                                            z19 = false;
                                        } else {
                                            sb.append(c11);
                                        }
                                    } else if (i96 == 27) {
                                        sb.append((char) 29);
                                    } else {
                                        if (i96 != 30) {
                                            throw e.a();
                                        }
                                        z19 = true;
                                    }
                                } else if (z19) {
                                    sb.append((char) (i96 + 128));
                                    z19 = false;
                                } else {
                                    sb.append((char) i96);
                                }
                                i94 = 0;
                            } else if (i96 < i91) {
                                i94 = i96 + 1;
                            } else {
                                if (i96 >= 40) {
                                    throw e.a();
                                }
                                char c12 = b.f31913c[i96];
                                if (z19) {
                                    sb.append((char) (c12 + 128));
                                    z19 = false;
                                } else {
                                    sb.append(c12);
                                }
                            }
                            i95++;
                            i91 = 3;
                        }
                        if (bVar4.a() > 0) {
                            i92 = i94;
                            i71 = 8;
                            i91 = 3;
                        }
                    }
                } else if (iB5 == 4) {
                    int i97 = 3;
                    int[] iArr3 = new int[3];
                    while (bVar4.a() != i71 && (iB3 = bVar4.b(i71)) != 254) {
                        b.a(iB3, bVar4.b(i71), iArr3);
                        int i98 = 0;
                        while (i98 < i97) {
                            int i99 = iArr3[i98];
                            if (i99 == 0) {
                                sb.append('\r');
                            } else if (i99 == 1) {
                                sb.append('*');
                            } else if (i99 == 2) {
                                sb.append('>');
                            } else if (i99 == i97) {
                                sb.append(' ');
                            } else if (i99 < 14) {
                                sb.append((char) (i99 + 44));
                            } else {
                                if (i99 >= 40) {
                                    throw e.a();
                                }
                                sb.append((char) (i99 + 51));
                            }
                            i98++;
                            i97 = 3;
                        }
                        if (bVar4.a() > 0) {
                            i97 = 3;
                        }
                    }
                } else if (iB5 == 5) {
                    while (bVar4.a() > 16) {
                        int i100 = 0;
                        while (true) {
                            if (i100 < 4) {
                                int iB6 = bVar4.b(6);
                                if (iB6 == 31) {
                                    int i101 = 8 - bVar4.f5883d;
                                    if (i101 != i71) {
                                        bVar4.b(i101);
                                    }
                                } else {
                                    if ((iB6 & 32) == 0) {
                                        iB6 |= 64;
                                    }
                                    sb.append((char) iB6);
                                    i100++;
                                }
                            } else if (bVar4.a() <= 0) {
                            }
                        }
                    }
                } else {
                    if (iB5 != 6) {
                        throw e.a();
                    }
                    int i102 = bVar4.f5882c;
                    int i103 = i102 + 2;
                    int iB7 = b.b(bVar4.b(i71), i102 + 1);
                    if (iB7 == 0) {
                        iB7 = bVar4.a() / 8;
                    } else if (iB7 >= 250) {
                        iB7 = ((iB7 - 249) * 250) + b.b(bVar4.b(i71), i103);
                        i103 = i102 + 3;
                    }
                    if (iB7 < 0) {
                        throw e.a();
                    }
                    byte[] bArr4 = new byte[iB7];
                    int i104 = 0;
                    while (i104 < iB7) {
                        if (bVar4.a() < i71) {
                            throw e.a();
                        }
                        bArr4[i104] = (byte) b.b(bVar4.b(i71), i103);
                        i104++;
                        i103++;
                    }
                    arrayList.add(bArr4);
                    try {
                        sb.append(new String(bArr4, "ISO8859_1"));
                    } catch (UnsupportedEncodingException e8) {
                        throw new IllegalStateException("Platform does not support required encoding: ".concat(String.valueOf(e8)));
                    }
                }
                i83 = 2;
                i8 = 1;
            }
            if (i83 == i8 || bVar4.a() <= 0) {
                if (sb2.length() > 0) {
                    sb.append((CharSequence) sb2);
                }
                String string = sb.toString();
                if (arrayList.isEmpty()) {
                    arrayList = null;
                }
                return new d(bArr2, string, arrayList, null);
            }
            i71 = 8;
        }
    }

    public final d e(p176w5.b bVar, Map map) throws b, e {
        byte[] bArr;
        byte[] bArr2;
        String strValueOf;
        b bVar2;
        switch (this.f31916a) {
            case 1:
                byte[] bArr3 = new byte[144];
                for (int i8 = 0; i8 < bVar.f31092H; i8++) {
                    int[] iArr = B5.a.f1218a[i8];
                    for (int i9 = 0; i9 < bVar.f31091G; i9++) {
                        int i10 = iArr[i9];
                        if (i10 >= 0 && bVar.b(i9, i8)) {
                            int i11 = i10 / 6;
                            bArr3[i11] = (byte) (bArr3[i11] | ((byte) (1 << (5 - (i10 % 6)))));
                        }
                    }
                }
                b(bArr3, 0, 10, 10, 0);
                int i12 = bArr3[0] & 15;
                if (i12 == 2 || i12 == 3 || i12 == 4) {
                    bArr = bArr3;
                    b(bArr, 20, 84, 40, 1);
                    b(bArr, 20, 84, 40, 2);
                    bArr2 = new byte[94];
                } else {
                    if (i12 != 5) {
                        throw e.a();
                    }
                    b(bArr3, 20, 68, 56, 1);
                    bArr = bArr3;
                    b(bArr, 20, 68, 56, 2);
                    bArr2 = new byte[78];
                }
                System.arraycopy(bArr, 0, bArr2, 0, 10);
                System.arraycopy(bArr, 20, bArr2, 10, bArr2.length - 10);
                StringBuilder sb = new StringBuilder(144);
                if (i12 == 2 || i12 == 3) {
                    if (i12 == 2) {
                        strValueOf = new DecimalFormat("0000000000".substring(0, B5.a.a(bArr2, new byte[]{39, 40, 41, 42, 31, 32}))).format(B5.a.a(bArr2, new byte[]{33, 34, 35, 36, 25, 26, 27, 28, 29, 30, 19, 20, 21, 22, 23, 24, MqttWireMessage.MESSAGE_TYPE_PINGRESP, MqttWireMessage.MESSAGE_TYPE_DISCONNECT, 15, 16, 17, 18, 7, 8, 9, 10, MqttWireMessage.MESSAGE_TYPE_UNSUBACK, MqttWireMessage.MESSAGE_TYPE_PINGREQ, 1, 2}));
                    } else {
                        String[] strArr = B5.a.f1219b;
                        strValueOf = String.valueOf(new char[]{strArr[0].charAt(B5.a.a(bArr2, new byte[]{39, 40, 41, 42, 31, 32})), strArr[0].charAt(B5.a.a(bArr2, new byte[]{33, 34, 35, 36, 25, 26})), strArr[0].charAt(B5.a.a(bArr2, new byte[]{27, 28, 29, 30, 19, 20})), strArr[0].charAt(B5.a.a(bArr2, new byte[]{21, 22, 23, 24, MqttWireMessage.MESSAGE_TYPE_PINGRESP, MqttWireMessage.MESSAGE_TYPE_DISCONNECT})), strArr[0].charAt(B5.a.a(bArr2, new byte[]{15, 16, 17, 18, 7, 8})), strArr[0].charAt(B5.a.a(bArr2, new byte[]{9, 10, MqttWireMessage.MESSAGE_TYPE_UNSUBACK, MqttWireMessage.MESSAGE_TYPE_PINGREQ, 1, 2}))});
                    }
                    DecimalFormat decimalFormat = new DecimalFormat("000");
                    String str = decimalFormat.format(B5.a.a(bArr2, new byte[]{53, 54, 43, 44, 45, 46, 47, 48, 37, 38}));
                    String str2 = decimalFormat.format(B5.a.a(bArr2, new byte[]{55, 56, 57, 58, 59, 60, 49, 50, 51, 52}));
                    sb.append(B5.a.b(10, bArr2, 84));
                    if (sb.toString().startsWith("[)>\u001e01\u001d")) {
                        sb.insert(9, strValueOf + (char) 29 + str + (char) 29 + str2 + (char) 29);
                    } else {
                        sb.insert(0, strValueOf + (char) 29 + str + (char) 29 + str2 + (char) 29);
                    }
                } else if (i12 == 4) {
                    sb.append(B5.a.b(1, bArr2, 93));
                } else if (i12 == 5) {
                    sb.append(B5.a.b(1, bArr2, 77));
                }
                return new d(bArr2, sb.toString(), null, String.valueOf(i12));
            default:
                C0041c c0041c = new C0041c(bVar);
                try {
                    return c(c0041c, map);
                } catch (b e8) {
                    bVar2 = e8;
                    e = null;
                    try {
                        c0041c.l();
                        c0041c.f915I = null;
                        c0041c.f916J = null;
                        c0041c.f913G = true;
                        c0041c.k();
                        c0041c.j();
                        c0041c.i();
                        d dVarC = c(c0041c, map);
                        dVarC.f31104e = new L5.e();
                        return dVarC;
                    } catch (b | e unused) {
                        if (e != null) {
                            throw e;
                        }
                        throw bVar2;
                    }
                } catch (e e9) {
                    e = e9;
                    bVar2 = null;
                    c0041c.l();
                    c0041c.f915I = null;
                    c0041c.f916J = null;
                    c0041c.f913G = true;
                    c0041c.k();
                    c0041c.j();
                    c0041c.i();
                    d dVarC2 = c(c0041c, map);
                    dVarC2.f31104e = new L5.e();
                    return dVarC2;
                }
        }
    }
}
