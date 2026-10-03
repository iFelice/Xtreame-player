package L5;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final char[] f4703a = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ $%*+-./:".toCharArray();

    /* JADX WARN: Code duplicated, block: B:26:0x006a  */
    public static void a(P2.b bVar, StringBuilder sb, int i8, boolean z7) throws p130q5.e {
        while (i8 > 1) {
            if (bVar.a() < 11) {
                throw p130q5.e.a();
            }
            int iB = bVar.b(11);
            sb.append(f(iB / 45));
            sb.append(f(iB % 45));
            i8 -= 2;
        }
        if (i8 == 1) {
            if (bVar.a() < 6) {
                throw p130q5.e.a();
            }
            sb.append(f(bVar.b(6)));
        }
        if (z7) {
            for (int length = sb.length(); length < sb.length(); length++) {
                if (sb.charAt(length) == '%') {
                    if (length < sb.length() - 1) {
                        int i9 = length + 1;
                        if (sb.charAt(i9) == '%') {
                            sb.deleteCharAt(i9);
                        } else {
                            sb.setCharAt(length, (char) 29);
                        }
                    } else {
                        sb.setCharAt(length, (char) 29);
                    }
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:105:0x0126  */
    /* JADX WARN: Code duplicated, block: B:112:0x0133  */
    /* JADX WARN: Code duplicated, block: B:114:0x0137  */
    /* JADX WARN: Code duplicated, block: B:119:0x0140  */
    /* JADX WARN: Code duplicated, block: B:120:0x0142  */
    /* JADX WARN: Code duplicated, block: B:122:0x0146 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:129:0x0154  */
    /* JADX WARN: Code duplicated, block: B:130:0x0156 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:132:0x0159 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:134:0x015c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:136:0x015f  */
    /* JADX WARN: Code duplicated, block: B:13:0x003a  */
    /* JADX WARN: Code duplicated, block: B:150:0x0111 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:22:0x0053  */
    /* JADX WARN: Code duplicated, block: B:32:0x0079 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:33:0x007b  */
    /* JADX WARN: Code duplicated, block: B:35:0x007f  */
    /* JADX WARN: Code duplicated, block: B:36:0x0082  */
    /* JADX WARN: Code duplicated, block: B:38:0x0086  */
    /* JADX WARN: Code duplicated, block: B:40:0x008a  */
    /* JADX WARN: Code duplicated, block: B:42:0x0090  */
    /* JADX WARN: Code duplicated, block: B:44:0x0094  */
    /* JADX WARN: Code duplicated, block: B:46:0x009a  */
    /* JADX WARN: Code duplicated, block: B:47:0x009d  */
    /* JADX WARN: Code duplicated, block: B:49:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:50:0x00a6 A[PHI: r10
      0x00a6: PHI (r10v5 int) = (r10v1 int), (r10v3 int), (r10v1 int) binds: [B:39:0x0088, B:48:0x00a1, B:34:0x007d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:53:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:56:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:58:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:66:0x00c7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:67:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:74:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:75:0x00d9  */
    public static void b(P2.b bVar, StringBuilder sb, int i8, p176w5.c cVar, ArrayList arrayList, Map map) throws p130q5.e {
        byte[] bArr;
        String strName;
        boolean z7;
        boolean z8;
        boolean z9;
        boolean z10;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        boolean z11;
        byte b8;
        int i16;
        int i17;
        int i18 = i8;
        if ((i18 << 3) > bVar.a()) {
            throw p130q5.e.a();
        }
        byte[] bArr2 = new byte[i18];
        int i19 = 0;
        for (int i20 = 0; i20 < i18; i20++) {
            bArr2[i20] = (byte) bVar.b(8);
        }
        if (cVar == null) {
            String str = p176w5.f.f31111a;
            if (map != null) {
                p130q5.c cVar2 = p130q5.c.f29600K;
                if (map.containsKey(cVar2)) {
                    strName = map.get(cVar2).toString();
                    bArr = bArr2;
                } else {
                    z7 = true;
                    if (i18 <= 3 && bArr2[0] == -17 && bArr2[1] == -69 && bArr2[2] == -65) {
                        z8 = true;
                    } else {
                        z8 = false;
                    }
                    int i21 = 0;
                    z9 = true;
                    z10 = true;
                    i9 = 0;
                    i10 = 0;
                    i11 = 0;
                    i12 = 0;
                    i13 = 0;
                    i14 = 0;
                    int i22 = 0;
                    i15 = 0;
                    int i23 = 0;
                    int i24 = 0;
                    while (i9 < i18 && (z7 || z9 || z10)) {
                        b8 = bArr2[i9];
                        byte[] bArr3 = bArr2;
                        i16 = b8 & 255;
                        if (z10) {
                            if (i10 > 0) {
                                if ((b8 & 128) != 0) {
                                    i10--;
                                } else {
                                    z10 = false;
                                }
                            } else if ((b8 & 128) != 0) {
                                if ((b8 & 64) != 0) {
                                    i17 = i10 + 1;
                                    if ((b8 & 32) == 0) {
                                        i12++;
                                    } else {
                                        i17 = i10 + 2;
                                        if ((b8 & 16) == 0) {
                                            i13++;
                                        } else {
                                            i10 += 3;
                                            if ((b8 & 8) == 0) {
                                                i14++;
                                            } else {
                                                z10 = false;
                                            }
                                        }
                                    }
                                    i10 = i17;
                                } else {
                                    z10 = false;
                                }
                            }
                        }
                        if (z7) {
                            if (i16 <= 127 && i16 < 160) {
                                z7 = false;
                            } else if (i16 > 159 && (i16 < 192 || i16 == 215 || i16 == 247)) {
                                i15++;
                            }
                        }
                        if (!z9) {
                            if (i11 > 0) {
                                if (i16 >= 64 || i16 == 127 || i16 > 252) {
                                    z9 = false;
                                } else {
                                    i11--;
                                }
                            } else if (i16 != 128 || i16 == 160 || i16 > 239) {
                                z9 = false;
                            } else if (i16 <= 160 || i16 >= 224) {
                                if (i16 > 127) {
                                    i11++;
                                    int i25 = i23 + 1;
                                    if (i25 > i19) {
                                        i19 = i25;
                                        i23 = i19;
                                    } else {
                                        i23 = i25;
                                    }
                                } else {
                                    i23 = 0;
                                }
                                i24 = 0;
                            } else {
                                i21++;
                                int i26 = i24 + 1;
                                if (i26 > i22) {
                                    i22 = i26;
                                    i24 = i22;
                                } else {
                                    i24 = i26;
                                }
                                i23 = 0;
                            }
                        }
                        i9++;
                        i18 = i8;
                        bArr2 = bArr3;
                    }
                    bArr = bArr2;
                    if (z10 && i10 > 0) {
                        z10 = false;
                    }
                    if (z9 || i11 <= 0) {
                        z11 = z9;
                    } else {
                        z11 = false;
                    }
                    strName = "UTF8";
                    if (z10 || (!z8 && i12 + i13 + i14 <= 0)) {
                        if (!z11 && (p176w5.f.f31112b || i22 >= 3 || i19 >= 3)) {
                            strName = "SJIS";
                        } else if (z7 || !z11) {
                            if (z7) {
                                strName = "ISO8859_1";
                            } else if (z11) {
                                strName = "SJIS";
                            } else if (!z10) {
                                strName = p176w5.f.f31111a;
                            }
                        } else if (!(i22 == 2 && i21 == 2) && i15 * 10 < i8) {
                            strName = "ISO8859_1";
                        } else {
                            strName = "SJIS";
                        }
                    }
                }
            } else {
                z7 = true;
                if (i18 <= 3) {
                    z8 = false;
                } else {
                    z8 = false;
                }
                int i27 = 0;
                z9 = true;
                z10 = true;
                i9 = 0;
                i10 = 0;
                i11 = 0;
                i12 = 0;
                i13 = 0;
                i14 = 0;
                int i28 = 0;
                i15 = 0;
                int i29 = 0;
                int i210 = 0;
                while (i9 < i18) {
                    b8 = bArr2[i9];
                    byte[] bArr4 = bArr2;
                    i16 = b8 & 255;
                    if (z10) {
                        if (i10 > 0) {
                            if ((b8 & 128) != 0) {
                                i10--;
                            } else {
                                z10 = false;
                            }
                        } else if ((b8 & 128) != 0) {
                            if ((b8 & 64) != 0) {
                                i17 = i10 + 1;
                                if ((b8 & 32) == 0) {
                                    i12++;
                                } else {
                                    i17 = i10 + 2;
                                    if ((b8 & 16) == 0) {
                                        i13++;
                                    } else {
                                        i10 += 3;
                                        if ((b8 & 8) == 0) {
                                            i14++;
                                        } else {
                                            z10 = false;
                                        }
                                    }
                                }
                                i10 = i17;
                            } else {
                                z10 = false;
                            }
                        }
                    }
                    if (z7) {
                        if (i16 <= 127) {
                            if (i16 > 159) {
                                i15++;
                            }
                        } else if (i16 > 159) {
                            i15++;
                        }
                    }
                    if (!z9) {
                        if (i11 > 0) {
                            if (i16 >= 64) {
                                z9 = false;
                            } else {
                                z9 = false;
                            }
                        } else if (i16 != 128) {
                            z9 = false;
                        } else {
                            z9 = false;
                        }
                    }
                    i9++;
                    i18 = i8;
                    bArr2 = bArr4;
                }
                bArr = bArr2;
                if (z10) {
                    z10 = false;
                }
                if (z9) {
                    z11 = z9;
                } else {
                    z11 = z9;
                }
                strName = "UTF8";
                if (z10) {
                    if (!z11) {
                        if (z7) {
                            if (z7) {
                                strName = "ISO8859_1";
                            } else if (z11) {
                                strName = "SJIS";
                            } else if (!z10) {
                                strName = p176w5.f.f31111a;
                            }
                        } else if (z7) {
                            strName = "ISO8859_1";
                        } else if (z11) {
                            strName = "SJIS";
                        } else if (!z10) {
                            strName = p176w5.f.f31111a;
                        }
                    } else if (z7) {
                        if (z7) {
                            strName = "ISO8859_1";
                        } else if (z11) {
                            strName = "SJIS";
                        } else if (!z10) {
                            strName = p176w5.f.f31111a;
                        }
                    } else if (z7) {
                        strName = "ISO8859_1";
                    } else if (z11) {
                        strName = "SJIS";
                    } else if (!z10) {
                        strName = p176w5.f.f31111a;
                    }
                } else if (!z11) {
                    if (z7) {
                        if (z7) {
                            strName = "ISO8859_1";
                        } else if (z11) {
                            strName = "SJIS";
                        } else if (!z10) {
                            strName = p176w5.f.f31111a;
                        }
                    } else if (z7) {
                        strName = "ISO8859_1";
                    } else if (z11) {
                        strName = "SJIS";
                    } else if (!z10) {
                        strName = p176w5.f.f31111a;
                    }
                } else if (z7) {
                    if (z7) {
                        strName = "ISO8859_1";
                    } else if (z11) {
                        strName = "SJIS";
                    } else if (!z10) {
                        strName = p176w5.f.f31111a;
                    }
                } else if (z7) {
                    strName = "ISO8859_1";
                } else if (z11) {
                    strName = "SJIS";
                } else if (!z10) {
                    strName = p176w5.f.f31111a;
                }
            }
        } else {
            bArr = bArr2;
            strName = cVar.name();
        }
        try {
            byte[] bArr5 = bArr;
            sb.append(new String(bArr5, strName));
            arrayList.add(bArr5);
        } catch (UnsupportedEncodingException unused) {
            throw p130q5.e.a();
        }
    }

    public static void c(P2.b bVar, StringBuilder sb, int i8) throws p130q5.e {
        if (i8 * 13 > bVar.a()) {
            throw p130q5.e.a();
        }
        byte[] bArr = new byte[i8 * 2];
        int i9 = 0;
        while (i8 > 0) {
            int iB = bVar.b(13);
            int i10 = (iB % 96) | ((iB / 96) << 8);
            int i11 = i10 + (i10 < 2560 ? 41377 : 42657);
            bArr[i9] = (byte) (i11 >> 8);
            bArr[i9 + 1] = (byte) i11;
            i9 += 2;
            i8--;
        }
        try {
            sb.append(new String(bArr, "GB2312"));
        } catch (UnsupportedEncodingException unused) {
            throw p130q5.e.a();
        }
    }

    public static void d(P2.b bVar, StringBuilder sb, int i8) throws p130q5.e {
        if (i8 * 13 > bVar.a()) {
            throw p130q5.e.a();
        }
        byte[] bArr = new byte[i8 * 2];
        int i9 = 0;
        while (i8 > 0) {
            int iB = bVar.b(13);
            int i10 = (iB % 192) | ((iB / 192) << 8);
            int i11 = i10 + (i10 < 7936 ? 33088 : 49472);
            bArr[i9] = (byte) (i11 >> 8);
            bArr[i9 + 1] = (byte) i11;
            i9 += 2;
            i8--;
        }
        try {
            sb.append(new String(bArr, "SJIS"));
        } catch (UnsupportedEncodingException unused) {
            throw p130q5.e.a();
        }
    }

    public static void e(P2.b bVar, StringBuilder sb, int i8) throws p130q5.e {
        while (i8 >= 3) {
            if (bVar.a() < 10) {
                throw p130q5.e.a();
            }
            int iB = bVar.b(10);
            if (iB >= 1000) {
                throw p130q5.e.a();
            }
            sb.append(f(iB / 100));
            sb.append(f((iB / 10) % 10));
            sb.append(f(iB % 10));
            i8 -= 3;
        }
        if (i8 == 2) {
            if (bVar.a() < 7) {
                throw p130q5.e.a();
            }
            int iB2 = bVar.b(7);
            if (iB2 >= 100) {
                throw p130q5.e.a();
            }
            sb.append(f(iB2 / 10));
            sb.append(f(iB2 % 10));
            return;
        }
        if (i8 == 1) {
            if (bVar.a() < 4) {
                throw p130q5.e.a();
            }
            int iB3 = bVar.b(4);
            if (iB3 >= 10) {
                throw p130q5.e.a();
            }
            sb.append(f(iB3));
        }
    }

    public static char f(int i8) throws p130q5.e {
        char[] cArr = f4703a;
        if (i8 < cArr.length) {
            return cArr[i8];
        }
        throw p130q5.e.a();
    }
}
