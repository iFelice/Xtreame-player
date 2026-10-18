package p065i1;

import N.C0260i;
import com.bumptech.glide.d;
import com.google.protobuf.U2;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
import okhttp3.HttpUrl;
import p033e1.a;
import p094m0.N;
import p094m0.O;
import p117p0.D;
import p117p0.E;
import p117p0.M;
import p117p0.x;
import p190y4.k;
import z4.H;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class i extends d {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final C0260i f25535f = new C0260i(26);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final g f25536e;

    public i(C0260i c0260i) {
        this.f25536e = c0260i;
    }

    public static f A(int i8, E e8) {
        int iZ = e8.z();
        Charset charsetK = K(iZ);
        int i9 = i8 - 1;
        byte[] bArr = new byte[i9];
        e8.j(0, bArr, i9);
        int iN = N(0, bArr);
        String strP = O.p(new String(bArr, 0, iN, StandardCharsets.ISO_8859_1));
        int i10 = iN + 1;
        int iM = M(i10, bArr, iZ);
        String strD = D(bArr, i10, iM, charsetK);
        int iJ = J(iZ) + iM;
        int iM2 = M(iJ, bArr, iZ);
        String strD2 = D(bArr, iJ, iM2, charsetK);
        int iJ2 = J(iZ) + iM2;
        return new f(strP, strD, strD2, i9 <= iJ2 ? M.f28051b : Arrays.copyOfRange(bArr, iJ2, i9));
    }

    public static m B(int i8, E e8) {
        int iF = e8.F();
        int iC = e8.C();
        int iC2 = e8.C();
        int iZ = e8.z();
        int iZ2 = e8.z();
        D d6 = new D();
        d6.q(e8);
        int i9 = ((i8 - 10) * 8) / (iZ + iZ2);
        int[] iArr = new int[i9];
        int[] iArr2 = new int[i9];
        for (int i10 = 0; i10 < i9; i10++) {
            int i11 = d6.i(iZ);
            int i12 = d6.i(iZ2);
            iArr[i10] = i11;
            iArr2[i10] = i12;
        }
        return new m(iF, iC, iC2, iArr, iArr2);
    }

    public static n C(int i8, E e8) {
        byte[] bArr = new byte[i8];
        e8.j(0, bArr, i8);
        int iN = N(0, bArr);
        String str = new String(bArr, 0, iN, StandardCharsets.ISO_8859_1);
        int i9 = iN + 1;
        return new n(i8 <= i9 ? M.f28051b : Arrays.copyOfRange(bArr, i9, i8), str);
    }

    public static String D(byte[] bArr, int i8, int i9, Charset charset) {
        return (i9 <= i8 || i9 > bArr.length) ? HttpUrl.FRAGMENT_ENCODE_SET : new String(bArr, i8, i9 - i8, charset);
    }

    public static o E(int i8, E e8, String str) {
        if (i8 < 1) {
            return null;
        }
        int iZ = e8.z();
        int i9 = i8 - 1;
        byte[] bArr = new byte[i9];
        e8.j(0, bArr, i9);
        return new o(str, null, F(iZ, bArr, 0));
    }

    public static d0 F(int i8, byte[] bArr, int i9) {
        if (i9 >= bArr.length) {
            return H.x(HttpUrl.FRAGMENT_ENCODE_SET);
        }
        z4.E eQ = H.q();
        int iM = M(i9, bArr, i8);
        while (i9 < iM) {
            eQ.g0(new String(bArr, i9, iM - i9, K(i8)));
            i9 = J(i8) + iM;
            iM = M(i9, bArr, i8);
        }
        d0 d0VarM0 = eQ.m0();
        return d0VarM0.isEmpty() ? H.x(HttpUrl.FRAGMENT_ENCODE_SET) : d0VarM0;
    }

    public static o G(int i8, E e8) {
        if (i8 < 1) {
            return null;
        }
        int iZ = e8.z();
        int i9 = i8 - 1;
        byte[] bArr = new byte[i9];
        e8.j(0, bArr, i9);
        int iM = M(0, bArr, iZ);
        return new o("TXXX", new String(bArr, 0, iM, K(iZ)), F(iZ, bArr, J(iZ) + iM));
    }

    public static p H(int i8, E e8, String str) {
        byte[] bArr = new byte[i8];
        e8.j(0, bArr, i8);
        return new p(str, null, new String(bArr, 0, N(0, bArr), StandardCharsets.ISO_8859_1));
    }

    public static p I(int i8, E e8) {
        if (i8 < 1) {
            return null;
        }
        int iZ = e8.z();
        int i9 = i8 - 1;
        byte[] bArr = new byte[i9];
        e8.j(0, bArr, i9);
        int iM = M(0, bArr, iZ);
        String str = new String(bArr, 0, iM, K(iZ));
        int iJ = J(iZ) + iM;
        return new p("WXXX", str, D(bArr, iJ, N(iJ, bArr), StandardCharsets.ISO_8859_1));
    }

    public static int J(int i8) {
        return (i8 == 0 || i8 == 3) ? 1 : 2;
    }

    public static Charset K(int i8) {
        if (i8 == 1) {
            return StandardCharsets.UTF_16;
        }
        if (i8 != 2) {
            return i8 != 3 ? StandardCharsets.ISO_8859_1 : StandardCharsets.UTF_8;
        }
        return StandardCharsets.UTF_16BE;
    }

    public static String L(int i8, int i9, int i10, int i11, int i12) {
        return i8 == 2 ? String.format(Locale.US, "%c%c%c", Integer.valueOf(i9), Integer.valueOf(i10), Integer.valueOf(i11)) : String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i9), Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12));
    }

    public static int M(int i8, byte[] bArr, int i9) {
        int iN = N(i8, bArr);
        if (i9 == 0 || i9 == 3) {
            return iN;
        }
        while (iN < bArr.length - 1) {
            if ((iN - i8) % 2 == 0 && bArr[iN + 1] == 0) {
                return iN;
            }
            iN = N(iN + 1, bArr);
        }
        return bArr.length;
    }

    public static int N(int i8, byte[] bArr) {
        while (i8 < bArr.length) {
            if (bArr[i8] == 0) {
                return i8;
            }
            i8++;
        }
        return bArr.length;
    }

    public static int O(int i8, E e8) {
        byte[] bArr = e8.f28035a;
        int i9 = e8.f28036b;
        int i10 = i9;
        while (true) {
            int i11 = i10 + 1;
            if (i11 >= i9 + i8) {
                return i8;
            }
            if ((bArr[i10] & 255) == 255 && bArr[i11] == 0) {
                System.arraycopy(bArr, i10 + 2, bArr, i11, (i8 - (i10 - i9)) - 2);
                i8--;
            }
            i10 = i11;
        }
    }

    public static boolean P(E e8, int i8, int i9, boolean z7) {
        int iC;
        long jC;
        int iF;
        int i10;
        int i11 = e8.f28036b;
        while (true) {
            try {
                boolean z8 = true;
                if (e8.a() < i9) {
                    e8.L(i11);
                    return true;
                }
                if (i8 >= 3) {
                    iC = e8.l();
                    jC = e8.B();
                    iF = e8.F();
                } else {
                    iC = e8.C();
                    jC = e8.C();
                    iF = 0;
                }
                if (iC == 0 && jC == 0 && iF == 0) {
                    e8.L(i11);
                    return true;
                }
                if (i8 == 4 && !z7) {
                    if ((8421504 & jC) != 0) {
                        e8.L(i11);
                        return false;
                    }
                    jC = (((jC >> 24) & 255) << 21) | (jC & 255) | (((jC >> 8) & 255) << 7) | (((jC >> 16) & 255) << 14);
                }
                if (i8 == 4) {
                    i10 = (iF & 64) != 0 ? 1 : 0;
                    if ((iF & 1) == 0) {
                        z8 = false;
                    }
                } else {
                    if (i8 == 3) {
                        i10 = (iF & 32) != 0 ? 1 : 0;
                        if ((iF & 128) == 0) {
                        }
                    } else {
                        i10 = 0;
                    }
                    z8 = false;
                }
                if (z8) {
                    i10 += 4;
                }
                if (jC < i10) {
                    e8.L(i11);
                    return false;
                }
                if (e8.a() < jC) {
                    e8.L(i11);
                    return false;
                }
                e8.M((int) jC);
            } catch (Throwable th) {
                e8.L(i11);
                throw th;
            }
        }
    }

    public static a v(int i8, int i9, E e8) {
        int iN;
        String strConcat;
        int iZ = e8.z();
        Charset charsetK = K(iZ);
        int i10 = i8 - 1;
        byte[] bArr = new byte[i10];
        e8.j(0, bArr, i10);
        if (i9 == 2) {
            String str = "image/" + k.h0(new String(bArr, 0, 3, StandardCharsets.ISO_8859_1));
            if ("image/jpg".equals(str)) {
                str = "image/jpeg";
            }
            strConcat = str;
            iN = 2;
        } else {
            iN = N(0, bArr);
            String strH0 = k.h0(new String(bArr, 0, iN, StandardCharsets.ISO_8859_1));
            strConcat = strH0.indexOf(47) == -1 ? "image/".concat(strH0) : strH0;
        }
        int i11 = bArr[iN + 1] & 255;
        int i12 = iN + 2;
        int iM = M(i12, bArr, iZ);
        String str2 = new String(bArr, i12, iM - i12, charsetK);
        int iJ = J(iZ) + iM;
        return new a(strConcat, str2, i11, i10 <= iJ ? M.f28051b : Arrays.copyOfRange(bArr, iJ, i10));
    }

    public static c w(E e8, int i8, int i9, boolean z7, int i10, g gVar) {
        int i11 = e8.f28036b;
        int iN = N(i11, e8.f28035a);
        String str = new String(e8.f28035a, i11, iN - i11, StandardCharsets.ISO_8859_1);
        e8.L(iN + 1);
        int iL = e8.l();
        int iL2 = e8.l();
        long jB = e8.B();
        long j8 = jB == 4294967295L ? -1L : jB;
        long jB2 = e8.B();
        long j9 = jB2 == 4294967295L ? -1L : jB2;
        ArrayList arrayList = new ArrayList();
        int i12 = i11 + i8;
        while (e8.f28036b < i12) {
            j jVarZ = z(i9, e8, z7, i10, gVar);
            if (jVarZ != null) {
                arrayList.add(jVarZ);
            }
        }
        return new c(str, iL, iL2, j8, j9, (j[]) arrayList.toArray(new j[0]));
    }

    public static d x(E e8, int i8, int i9, boolean z7, int i10, g gVar) {
        int i11 = e8.f28036b;
        int iN = N(i11, e8.f28035a);
        String str = new String(e8.f28035a, i11, iN - i11, StandardCharsets.ISO_8859_1);
        e8.L(iN + 1);
        int iZ = e8.z();
        boolean z8 = (iZ & 2) != 0;
        boolean z9 = (iZ & 1) != 0;
        int iZ2 = e8.z();
        String[] strArr = new String[iZ2];
        for (int i12 = 0; i12 < iZ2; i12++) {
            int i13 = e8.f28036b;
            int iN2 = N(i13, e8.f28035a);
            strArr[i12] = new String(e8.f28035a, i13, iN2 - i13, StandardCharsets.ISO_8859_1);
            e8.L(iN2 + 1);
        }
        ArrayList arrayList = new ArrayList();
        int i14 = i11 + i8;
        while (e8.f28036b < i14) {
            j jVarZ = z(i9, e8, z7, i10, gVar);
            if (jVarZ != null) {
                arrayList.add(jVarZ);
            }
        }
        return new d(str, z8, z9, strArr, (j[]) arrayList.toArray(new j[0]));
    }

    public static e y(int i8, E e8) {
        if (i8 < 4) {
            return null;
        }
        int iZ = e8.z();
        Charset charsetK = K(iZ);
        byte[] bArr = new byte[3];
        e8.j(0, bArr, 3);
        String str = new String(bArr, 0, 3);
        int i9 = i8 - 4;
        byte[] bArr2 = new byte[i9];
        e8.j(0, bArr2, i9);
        int iM = M(0, bArr2, iZ);
        String str2 = new String(bArr2, 0, iM, charsetK);
        int iJ = J(iZ) + iM;
        return new e(str, str2, D(bArr2, iJ, M(iJ, bArr2, iZ), charsetK));
    }

    /* JADX WARN: Code duplicated, block: B:114:0x0143 A[Catch: all -> 0x0138, Exception -> 0x013b, OutOfMemoryError -> 0x013f, TryCatch #2 {all -> 0x0138, blocks: (B:105:0x0131, B:114:0x0143, B:121:0x0158, B:123:0x015f, B:131:0x0178, B:140:0x018d, B:151:0x01a5, B:157:0x01b4, B:165:0x01d0, B:175:0x01e3, B:183:0x0201, B:184:0x0206), top: B:194:0x0123 }] */
    /* JADX WARN: Code duplicated, block: B:115:0x014c  */
    /* JADX WARN: Code duplicated, block: B:122:0x015d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:123:0x015f A[Catch: all -> 0x0138, Exception -> 0x013b, OutOfMemoryError -> 0x013f, TryCatch #2 {all -> 0x0138, blocks: (B:105:0x0131, B:114:0x0143, B:121:0x0158, B:123:0x015f, B:131:0x0178, B:140:0x018d, B:151:0x01a5, B:157:0x01b4, B:165:0x01d0, B:175:0x01e3, B:183:0x0201, B:184:0x0206), top: B:194:0x0123 }] */
    /* JADX WARN: Code duplicated, block: B:124:0x0168  */
    /* JADX WARN: Code duplicated, block: B:126:0x016e  */
    /* JADX WARN: Code duplicated, block: B:132:0x017d  */
    /* JADX WARN: Code duplicated, block: B:134:0x0181  */
    /* JADX WARN: Code duplicated, block: B:141:0x0192  */
    /* JADX WARN: Code duplicated, block: B:143:0x0196  */
    /* JADX WARN: Code duplicated, block: B:144:0x0198 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:147:0x019d  */
    /* JADX WARN: Code duplicated, block: B:148:0x019f A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:152:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:153:0x01ac A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:160:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:170:0x01d9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:171:0x01db  */
    /* JADX WARN: Code duplicated, block: B:176:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:178:0x01f7  */
    /* JADX WARN: Code duplicated, block: B:184:0x0206 A[Catch: all -> 0x0138, Exception -> 0x01d5, OutOfMemoryError -> 0x01d7, TRY_LEAVE, TryCatch #2 {all -> 0x0138, blocks: (B:105:0x0131, B:114:0x0143, B:121:0x0158, B:123:0x015f, B:131:0x0178, B:140:0x018d, B:151:0x01a5, B:157:0x01b4, B:165:0x01d0, B:175:0x01e3, B:183:0x0201, B:184:0x0206), top: B:194:0x0123 }] */
    /* JADX WARN: Code duplicated, block: B:191:0x0226  */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x009e, code lost:
    
        if (r20 == 2) goto L49;
     */
    /* JADX WARN: Instruction removed from duplicated block: B:191:0x0226, please report this as an issue */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static p065i1.j z(int r20, p117p0.E r21, boolean r22, int r23, p065i1.g r24) {
        /*
            Method dump skipped, instruction units count: 596
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: p065i1.i.z(int, p0.E, boolean, int, i1.g):i1.j");
    }

    @Override // com.bumptech.glide.d
    public final N h(a aVar, ByteBuffer byteBuffer) {
        return u(byteBuffer.limit(), byteBuffer.array());
    }

    /* JADX WARN: Code duplicated, block: B:30:0x008c  */
    /* JADX WARN: Code duplicated, block: B:34:0x009b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:35:0x009c  */
    /* JADX WARN: Code duplicated, block: B:37:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:40:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:43:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:49:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:52:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:58:0x00d5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x00c7 A[SYNTHETIC] */
    public final N u(int i8, byte[] bArr) {
        boolean z7;
        h hVar;
        int i9;
        int i10;
        int iO;
        j jVarZ;
        boolean z8 = true;
        ArrayList arrayList = new ArrayList();
        E e8 = new E(bArr, i8);
        if (e8.a() < 10) {
            x.f("Id3Decoder", "Data too short to be an ID3 tag");
        } else {
            int iC = e8.C();
            if (iC == 4801587) {
                int iZ = e8.z();
                e8.M(1);
                int iZ2 = e8.z();
                int iY = e8.y();
                if (iZ != 2) {
                    if (iZ == 3) {
                        if ((iZ2 & 64) != 0) {
                            int iL = e8.l();
                            e8.M(iL);
                            iY -= iL + 4;
                        }
                    } else if (iZ == 4) {
                        if ((iZ2 & 64) != 0) {
                            int iY2 = e8.y();
                            e8.M(iY2 - 4);
                            iY -= iY2;
                        }
                        if ((iZ2 & 16) != 0) {
                            iY -= 10;
                        }
                    } else {
                        U2.v("Skipped ID3 tag with unsupported majorVersion=", iZ, "Id3Decoder");
                    }
                    if (iZ < 4) {
                        z7 = false;
                    } else {
                        z7 = false;
                    }
                    hVar = new h(z7, iZ, iY);
                } else if ((iZ2 & 64) != 0) {
                    x.f("Id3Decoder", "Skipped ID3 tag with majorVersion=2 and undefined compression scheme");
                } else {
                    if (iZ < 4 || (iZ2 & 128) == 0) {
                        z7 = false;
                    } else {
                        z7 = true;
                    }
                    hVar = new h(z7, iZ, iY);
                }
                if (hVar == null) {
                    return null;
                }
                int i11 = e8.f28036b;
                i9 = hVar.f25532a;
                i10 = i9 == 2 ? 6 : 10;
                iO = hVar.f25534c;
                if (hVar.f25533b) {
                    iO = O(iO, e8);
                }
                e8.K(i11 + iO);
                if (P(e8, i9, i10, false)) {
                    z8 = false;
                } else if (i9 == 4 || !P(e8, 4, i10, true)) {
                    U2.v("Failed to validate ID3 tag with majorVersion=", i9, "Id3Decoder");
                    return null;
                }
                while (e8.a() >= i10) {
                    jVarZ = z(i9, e8, z8, i10, this.f25536e);
                    if (jVarZ != null) {
                        arrayList.add(jVarZ);
                    }
                }
                return new N(arrayList);
            }
            x.f("Id3Decoder", "Unexpected first three bytes of ID3 tag header: 0x".concat(String.format("%06X", Integer.valueOf(iC))));
        }
        hVar = null;
        if (hVar == null) {
            return null;
        }
        int i12 = e8.f28036b;
        i9 = hVar.f25532a;
        if (i9 == 2) {
        }
        iO = hVar.f25534c;
        if (hVar.f25533b) {
            iO = O(iO, e8);
        }
        e8.K(i12 + iO);
        if (P(e8, i9, i10, false)) {
            if (i9 == 4) {
            }
            U2.v("Failed to validate ID3 tag with majorVersion=", i9, "Id3Decoder");
            return null;
        }
        z8 = false;
        while (e8.a() >= i10) {
            jVarZ = z(i9, e8, z8, i10, this.f25536e);
            if (jVarZ != null) {
                arrayList.add(jVarZ);
            }
        }
        return new N(arrayList);
    }
}
