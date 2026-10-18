package com.google.android.gms.internal.pal;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.Arrays;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2708f implements Closeable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Reader f23796G;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public long f23803N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public int f23804O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public int[] f23805P;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public String[] f23807R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public int[] f23808S;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final char[] f23797H = new char[1024];

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f23798I = 0;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f23799J = 0;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public int f23800K = 0;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public int f23801L = 0;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public int f23802M = 0;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public int f23806Q = 1;

    public C2708f(StringReader stringReader) {
        int[] iArr = new int[32];
        this.f23805P = iArr;
        iArr[0] = 6;
        this.f23807R = new String[32];
        this.f23808S = new int[32];
        this.f23796G = stringReader;
    }

    public final String E() {
        int i8 = this.f23800K;
        int i9 = this.f23798I;
        int i10 = this.f23801L;
        StringBuilder sb = new StringBuilder(" at line ");
        sb.append(i8 + 1);
        sb.append(" column ");
        sb.append((i9 - i10) + 1);
        sb.append(" path ");
        StringBuilder sb2 = new StringBuilder("$");
        for (int i11 = 0; i11 < this.f23806Q; i11++) {
            int i12 = this.f23805P[i11];
            if (i12 == 1 || i12 == 2) {
                int i13 = this.f23808S[i11];
                sb2.append('[');
                sb2.append(i13);
                sb2.append(']');
            } else if (i12 == 3 || i12 == 4 || i12 == 5) {
                sb2.append('.');
                String str = this.f23807R[i11];
                if (str != null) {
                    sb2.append(str);
                }
            }
        }
        sb.append(sb2.toString());
        return sb.toString();
    }

    public final String N() {
        String str;
        int iK = this.f23802M;
        if (iK == 0) {
            iK = k();
        }
        if (iK == 10) {
            str = d0();
        } else if (iK == 8) {
            str = c0('\'');
        } else if (iK == 9) {
            str = c0('\"');
        } else if (iK == 11) {
            str = null;
        } else if (iK == 15) {
            str = Long.toString(this.f23803N);
        } else {
            if (iK != 16) {
                throw new IllegalStateException("Expected a string but was " + ((Object) AbstractC2864y4.m(O())) + E());
            }
            str = new String(this.f23797H, this.f23798I, this.f23804O);
            this.f23798I += this.f23804O;
        }
        this.f23802M = 0;
        int[] iArr = this.f23808S;
        int i8 = this.f23806Q - 1;
        iArr[i8] = iArr[i8] + 1;
        return str;
    }

    public final int O() {
        int iK = this.f23802M;
        if (iK == 0) {
            iK = k();
        }
        switch (iK) {
            case 1:
                return 3;
            case 2:
                return 4;
            case 3:
                return 1;
            case 4:
                return 2;
            case 5:
            case 6:
                return 8;
            case 7:
                return 9;
            case 8:
            case 9:
            case 10:
            case 11:
                return 6;
            case 12:
            case 13:
            case 14:
                return 5;
            case 15:
            case 16:
                return 7;
            default:
                return 10;
        }
    }

    public final int a0(boolean z7) throws IOException {
        int i8 = this.f23798I;
        int i9 = this.f23799J;
        while (true) {
            if (i8 == i9) {
                this.f23798I = i8;
                if (!f0(1)) {
                    if (z7) {
                        throw new EOFException("End of input".concat(E()));
                    }
                    return -1;
                }
                i8 = this.f23798I;
                i9 = this.f23799J;
            }
            int i10 = i8 + 1;
            char c8 = this.f23797H[i8];
            if (c8 == '\n') {
                this.f23800K++;
                this.f23801L = i10;
            } else if (c8 != ' ' && c8 != '\r' && c8 != '\t') {
                if (c8 != '/') {
                    if (c8 != '#') {
                        this.f23798I = i10;
                        return c8;
                    }
                    this.f23798I = i10;
                    b0("Use JsonReader.setLenient(true) to accept malformed JSON");
                    throw null;
                }
                this.f23798I = i10;
                if (i10 == i9) {
                    this.f23798I = i8;
                    boolean zF0 = f0(2);
                    this.f23798I++;
                    if (!zF0) {
                        return 47;
                    }
                }
                b0("Use JsonReader.setLenient(true) to accept malformed JSON");
                throw null;
            }
            i8 = i10;
        }
    }

    public final void b0(String str) throws C2724h {
        throw new C2724h(str.concat(E()));
    }

    public final String c0(char c8) {
        int i8;
        char[] cArr;
        int i9;
        StringBuilder sb = null;
        do {
            int i10 = this.f23798I;
            int i11 = this.f23799J;
            while (true) {
                int i12 = i11;
                i8 = i10;
                while (true) {
                    cArr = this.f23797H;
                    if (i10 < i12) {
                        int i13 = i10 + 1;
                        char c9 = cArr[i10];
                        if (c9 == c8) {
                            this.f23798I = i13;
                            int i14 = (i13 - i8) - 1;
                            if (sb == null) {
                                return new String(cArr, i8, i14);
                            }
                            sb.append(cArr, i8, i14);
                            return sb.toString();
                        }
                        char c10 = '\n';
                        if (c9 == '\\') {
                            this.f23798I = i13;
                            int i15 = i13 - i8;
                            int i16 = i15 - 1;
                            if (sb == null) {
                                sb = new StringBuilder(Math.max(i15 + i15, 16));
                            }
                            sb.append(cArr, i8, i16);
                            if (this.f23798I == this.f23799J && !f0(1)) {
                                b0("Unterminated escape sequence");
                                throw null;
                            }
                            int i17 = this.f23798I;
                            int i18 = i17 + 1;
                            this.f23798I = i18;
                            char c11 = cArr[i17];
                            if (c11 != '\n') {
                                if (c11 != '\"' && c11 != '\'' && c11 != '/' && c11 != '\\') {
                                    if (c11 == 'b') {
                                        c10 = '\b';
                                    } else if (c11 == 'f') {
                                        c10 = '\f';
                                    } else if (c11 == 'n') {
                                        continue;
                                    } else if (c11 == 'r') {
                                        c10 = '\r';
                                    } else if (c11 == 't') {
                                        c10 = '\t';
                                    } else {
                                        if (c11 != 'u') {
                                            b0("Invalid escape sequence");
                                            throw null;
                                        }
                                        if (i17 + 5 > this.f23799J && !f0(4)) {
                                            b0("Unterminated escape sequence");
                                            throw null;
                                        }
                                        int i19 = this.f23798I;
                                        int i20 = i19 + 4;
                                        c10 = 0;
                                        while (i19 < i20) {
                                            char c12 = cArr[i19];
                                            char c13 = (char) (c10 << 4);
                                            if (c12 >= '0' && c12 <= '9') {
                                                i9 = c12 - '0';
                                            } else if (c12 >= 'a' && c12 <= 'f') {
                                                i9 = c12 - 'W';
                                            } else {
                                                if (c12 < 'A' || c12 > 'F') {
                                                    throw new NumberFormatException("\\u".concat(new String(cArr, this.f23798I, 4)));
                                                }
                                                i9 = c12 - '7';
                                            }
                                            c10 = (char) (i9 + c13);
                                            i19++;
                                        }
                                        this.f23798I += 4;
                                    }
                                }
                                sb.append(c10);
                                i10 = this.f23798I;
                                i11 = this.f23799J;
                            } else {
                                this.f23800K++;
                                this.f23801L = i18;
                            }
                            c10 = c11;
                            sb.append(c10);
                            i10 = this.f23798I;
                            i11 = this.f23799J;
                        } else {
                            if (c9 == '\n') {
                                this.f23800K++;
                                this.f23801L = i13;
                            }
                            i10 = i13;
                        }
                    }
                }
            }
            if (sb == null) {
                int i21 = i10 - i8;
                sb = new StringBuilder(Math.max(i21 + i21, 16));
            }
            sb.append(cArr, i8, i10 - i8);
            this.f23798I = i10;
        } while (f0(1));
        b0("Unterminated string");
        throw null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f23802M = 0;
        this.f23805P[0] = 8;
        this.f23806Q = 1;
        this.f23796G.close();
    }

    /* JADX WARN: Code duplicated, block: B:46:0x007d  */
    /* JADX WARN: Code duplicated, block: B:47:0x0085  */
    public final String d0() {
        char[] cArr;
        String string;
        int i8 = 0;
        StringBuilder sb = null;
        do {
            int i9 = 0;
            while (true) {
                int i10 = this.f23798I + i9;
                int i11 = this.f23799J;
                cArr = this.f23797H;
                if (i10 < i11) {
                    char c8 = cArr[i10];
                    if (c8 != '\t' && c8 != '\n' && c8 != '\f' && c8 != '\r' && c8 != ' ') {
                        if (c8 != '#') {
                            if (c8 != ',') {
                                if (c8 != '/' && c8 != '=') {
                                    if (c8 != '{' && c8 != '}' && c8 != ':') {
                                        if (c8 != ';') {
                                            switch (c8) {
                                                case '[':
                                                case ']':
                                                    break;
                                                case '\\':
                                                    break;
                                                default:
                                                    i9++;
                                                    break;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        b0("Use JsonReader.setLenient(true) to accept malformed JSON");
                        throw null;
                    }
                    i8 = i9;
                } else if (i9 >= 1024) {
                    if (sb == null) {
                        sb = new StringBuilder(Math.max(i9, 16));
                    }
                    sb.append(cArr, this.f23798I, i9);
                    this.f23798I += i9;
                } else if (!f0(i9 + 1)) {
                    i8 = i9;
                }
                if (sb == null) {
                    string = new String(cArr, this.f23798I, i8);
                } else {
                    sb.append(cArr, this.f23798I, i8);
                    string = sb.toString();
                }
                this.f23798I += i8;
                return string;
            }
        } while (f0(1));
        if (sb == null) {
            string = new String(cArr, this.f23798I, i8);
        } else {
            sb.append(cArr, this.f23798I, i8);
            string = sb.toString();
        }
        this.f23798I += i8;
        return string;
    }

    public final void e0(int i8) {
        int i9 = this.f23806Q;
        int[] iArr = this.f23805P;
        if (i9 == iArr.length) {
            int i10 = i9 + i9;
            this.f23805P = Arrays.copyOf(iArr, i10);
            this.f23808S = Arrays.copyOf(this.f23808S, i10);
            this.f23807R = (String[]) Arrays.copyOf(this.f23807R, i10);
        }
        int[] iArr2 = this.f23805P;
        int i11 = this.f23806Q;
        this.f23806Q = i11 + 1;
        iArr2[i11] = i8;
    }

    public final boolean f0(int i8) throws IOException {
        int i9;
        int i10 = this.f23801L;
        int i11 = this.f23798I;
        this.f23801L = i10 - i11;
        int i12 = this.f23799J;
        char[] cArr = this.f23797H;
        if (i12 != i11) {
            int i13 = i12 - i11;
            this.f23799J = i13;
            System.arraycopy(cArr, i11, cArr, 0, i13);
        } else {
            this.f23799J = 0;
        }
        this.f23798I = 0;
        do {
            int i14 = this.f23799J;
            int i15 = this.f23796G.read(cArr, i14, 1024 - i14);
            if (i15 == -1) {
                return false;
            }
            i9 = this.f23799J + i15;
            this.f23799J = i9;
            if (this.f23800K == 0 && this.f23801L == 0 && i9 > 0 && cArr[0] == 65279) {
                this.f23798I++;
                this.f23801L = 1;
                i8++;
            }
        } while (i9 < i8);
        return true;
    }

    public final boolean g0(char c8) throws C2724h {
        if (c8 == '\t' || c8 == '\n' || c8 == '\f' || c8 == '\r' || c8 == ' ') {
            return false;
        }
        if (c8 != '#') {
            if (c8 == ',') {
                return false;
            }
            if (c8 != '/' && c8 != '=') {
                if (c8 == '{' || c8 == '}' || c8 == ':') {
                    return false;
                }
                if (c8 != ';') {
                    switch (c8) {
                        case '[':
                        case ']':
                            return false;
                        case '\\':
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        b0("Use JsonReader.setLenient(true) to accept malformed JSON");
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x013d  */
    /* JADX WARN: Code duplicated, block: B:102:0x0141 A[PHI: r1 r4
      0x0141: PHI (r1v50 int) = (r1v49 int), (r1v66 int) binds: [B:94:0x012a, B:101:0x013d] A[DONT_GENERATE, DONT_INLINE]
      0x0141: PHI (r4v7 int) = (r4v6 int), (r4v19 int) binds: [B:94:0x012a, B:101:0x013d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:104:0x0149  */
    /* JADX WARN: Code duplicated, block: B:106:0x014d  */
    /* JADX WARN: Code duplicated, block: B:144:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:145:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:147:0x01c3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:148:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:150:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:153:0x01cf A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:155:0x01d2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:160:0x01e2 A[DONT_INVERT, PHI: r10
      0x01e2: PHI (r10v14 char) = (r10v5 char), (r10v15 char) binds: [B:143:0x01b9, B:149:0x01c7] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:161:0x01e4  */
    /* JADX WARN: Code duplicated, block: B:174:0x0205  */
    /* JADX WARN: Code duplicated, block: B:176:0x020b  */
    /* JADX WARN: Code duplicated, block: B:179:0x0210  */
    /* JADX WARN: Code duplicated, block: B:184:0x0221 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:185:0x0222  */
    /* JADX WARN: Code duplicated, block: B:187:0x022c  */
    /* JADX WARN: Code duplicated, block: B:189:0x0233  */
    /* JADX WARN: Code duplicated, block: B:191:0x0238 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:201:0x0249  */
    /* JADX WARN: Code duplicated, block: B:209:0x025b  */
    /* JADX WARN: Code duplicated, block: B:211:0x0260  */
    /* JADX WARN: Code duplicated, block: B:246:0x0130 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:247:0x0130 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:248:0x01b9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:42:0x007f  */
    /* JADX WARN: Code duplicated, block: B:44:0x0083  */
    /* JADX WARN: Code duplicated, block: B:92:0x011b  */
    /* JADX WARN: Code duplicated, block: B:95:0x012c  */
    /* JADX WARN: Code duplicated, block: B:98:0x0133  */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x01cf, code lost:
    
        if (r3 == false) goto L157;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int k() {
        /*
            Method dump skipped, instruction units count: 695
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.pal.C2708f.k():int");
    }

    public final String toString() {
        return C2708f.class.getSimpleName().concat(E());
    }
}
