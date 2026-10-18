package com.google.android.gms.internal.pal;

import java.io.IOException;
import java.io.Serializable;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2676b extends AbstractC2864y4 {

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final /* synthetic */ int f23728Q;

    public static void J0(C2716g c2716g, S6 s7) throws IOException {
        Writer writer = c2716g.f23822G;
        if (s7 == null || (s7 instanceof U6)) {
            if (c2716g.f23827L != null) {
                c2716g.a0();
            }
            c2716g.N();
            writer.write("null");
            return;
        }
        if (!(s7 instanceof X6)) {
            if (s7 instanceof R6) {
                c2716g.a0();
                c2716g.N();
                int i8 = c2716g.f23824I;
                int[] iArr = c2716g.f23823H;
                if (i8 == iArr.length) {
                    c2716g.f23823H = Arrays.copyOf(iArr, i8 + i8);
                }
                int[] iArr2 = c2716g.f23823H;
                int i9 = c2716g.f23824I;
                c2716g.f23824I = i9 + 1;
                iArr2[i9] = 1;
                writer.write(91);
                Iterator it = ((R6) s7).f23645G.iterator();
                while (it.hasNext()) {
                    J0(c2716g, (S6) it.next());
                }
                c2716g.E(1, 2, ']');
                return;
            }
            if (!(s7 instanceof V6)) {
                Class<?> cls = s7.getClass();
                cls.toString();
                throw new IllegalArgumentException("Couldn't write ".concat(String.valueOf(cls)));
            }
            c2716g.a0();
            c2716g.N();
            int i10 = c2716g.f23824I;
            int[] iArr3 = c2716g.f23823H;
            if (i10 == iArr3.length) {
                c2716g.f23823H = Arrays.copyOf(iArr3, i10 + i10);
            }
            int[] iArr4 = c2716g.f23823H;
            int i11 = c2716g.f23824I;
            c2716g.f23824I = i11 + 1;
            iArr4[i11] = 3;
            writer.write(123);
            Iterator it2 = ((a7) s7.i().f23678G.entrySet()).iterator();
            while (((b7) it2).hasNext()) {
                Map.Entry entry = (Map.Entry) ((Z6) it2).next();
                String str = (String) entry.getKey();
                if (str == null) {
                    throw new NullPointerException("name == null");
                }
                if (c2716g.f23827L != null) {
                    throw new IllegalStateException();
                }
                if (c2716g.f23824I == 0) {
                    throw new IllegalStateException("JsonWriter is closed.");
                }
                c2716g.f23827L = str;
                J0(c2716g, (S6) entry.getValue());
            }
            c2716g.E(3, 5, '}');
            return;
        }
        X6 x7 = (X6) s7;
        Serializable serializable = x7.f23695G;
        if (!(serializable instanceof Number)) {
            boolean z7 = serializable instanceof Boolean;
            if (z7) {
                boolean zBooleanValue = z7 ? ((Boolean) serializable).booleanValue() : Boolean.parseBoolean(x7.c());
                c2716g.a0();
                c2716g.N();
                writer.write(true != zBooleanValue ? "false" : "true");
                return;
            }
            String strC = x7.c();
            if (strC != null) {
                c2716g.a0();
                c2716g.N();
                c2716g.O(strC);
                return;
            } else {
                if (c2716g.f23827L != null) {
                    c2716g.a0();
                }
                c2716g.N();
                writer.write("null");
                return;
            }
        }
        Number numberL = x7.l();
        c2716g.a0();
        String string = numberL.toString();
        if (!string.equals("-Infinity") && !string.equals("Infinity") && !string.equals("NaN")) {
            Class<?> cls2 = numberL.getClass();
            if (cls2 != Integer.class && cls2 != Long.class && cls2 != Double.class && cls2 != Float.class && cls2 != Byte.class && cls2 != Short.class && cls2 != BigDecimal.class && cls2 != BigInteger.class && cls2 != AtomicInteger.class && cls2 != AtomicLong.class && !C2716g.f23820M.matcher(string).matches()) {
                throw new IllegalArgumentException("String created by " + cls2 + " is not a valid JSON number: " + string);
            }
        } else if (!c2716g.f23826K) {
            throw new IllegalArgumentException("Numeric values must be finite, but was ".concat(string));
        }
        c2716g.N();
        writer.append((CharSequence) string);
    }

    public static final S6 K0(C2708f c2708f, int i8) {
        int i9 = i8 - 1;
        if (i9 == 5) {
            return new X6(c2708f.N());
        }
        if (i9 == 6) {
            return new X6(new Y6(c2708f.N()));
        }
        boolean z7 = true;
        if (i9 != 7) {
            if (i9 != 8) {
                throw new IllegalStateException("Unexpected token: ".concat(AbstractC2864y4.m(i8)));
            }
            int iK = c2708f.f23802M;
            if (iK == 0) {
                iK = c2708f.k();
            }
            if (iK != 7) {
                throw new IllegalStateException("Expected null but was " + ((Object) AbstractC2864y4.m(c2708f.O())) + c2708f.E());
            }
            c2708f.f23802M = 0;
            int[] iArr = c2708f.f23808S;
            int i10 = c2708f.f23806Q - 1;
            iArr[i10] = iArr[i10] + 1;
            return U6.f23669G;
        }
        int iK2 = c2708f.f23802M;
        if (iK2 == 0) {
            iK2 = c2708f.k();
        }
        if (iK2 == 5) {
            c2708f.f23802M = 0;
            int[] iArr2 = c2708f.f23808S;
            int i11 = c2708f.f23806Q - 1;
            iArr2[i11] = iArr2[i11] + 1;
        } else {
            if (iK2 != 6) {
                throw new IllegalStateException("Expected a boolean but was " + ((Object) AbstractC2864y4.m(c2708f.O())) + c2708f.E());
            }
            c2708f.f23802M = 0;
            int[] iArr3 = c2708f.f23808S;
            int i12 = c2708f.f23806Q - 1;
            iArr3[i12] = iArr3[i12] + 1;
            z7 = false;
        }
        return new X6(Boolean.valueOf(z7));
    }

    public static final S6 L0(C2708f c2708f, int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            int iK = c2708f.f23802M;
            if (iK == 0) {
                iK = c2708f.k();
            }
            if (iK == 3) {
                c2708f.e0(1);
                c2708f.f23808S[c2708f.f23806Q - 1] = 0;
                c2708f.f23802M = 0;
                return new R6();
            }
            throw new IllegalStateException("Expected BEGIN_ARRAY but was " + ((Object) AbstractC2864y4.m(c2708f.O())) + c2708f.E());
        }
        if (i9 != 2) {
            return null;
        }
        int iK2 = c2708f.f23802M;
        if (iK2 == 0) {
            iK2 = c2708f.k();
        }
        if (iK2 == 1) {
            c2708f.e0(3);
            c2708f.f23802M = 0;
            return new V6();
        }
        throw new IllegalStateException("Expected BEGIN_OBJECT but was " + ((Object) AbstractC2864y4.m(c2708f.O())) + c2708f.E());
    }

    public final Object I0(C2708f c2708f) {
        String strC0;
        switch (this.f23728Q) {
            case 2:
                throw null;
            case 3:
            case 9:
            case 13:
            case 15:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            default:
                throw null;
            case 4:
                throw null;
            case 5:
                throw null;
            case 6:
                throw null;
            case 7:
                throw null;
            case 8:
                throw null;
            case 10:
                throw null;
            case 11:
                throw null;
            case 12:
                int iO = c2708f.O();
                S6 s6L0 = L0(c2708f, iO);
                if (s6L0 == null) {
                    return K0(c2708f, iO);
                }
                ArrayDeque arrayDeque = new ArrayDeque();
                while (true) {
                    int iK = c2708f.f23802M;
                    if (iK == 0) {
                        iK = c2708f.k();
                    }
                    if (iK == 2 || iK == 4 || iK == 17) {
                        if (s6L0 instanceof R6) {
                            int iK2 = c2708f.f23802M;
                            if (iK2 == 0) {
                                iK2 = c2708f.k();
                            }
                            if (iK2 != 4) {
                                throw new IllegalStateException("Expected END_ARRAY but was " + ((Object) AbstractC2864y4.m(c2708f.O())) + c2708f.E());
                            }
                            int i8 = c2708f.f23806Q;
                            c2708f.f23806Q = i8 - 1;
                            int[] iArr = c2708f.f23808S;
                            int i9 = i8 - 2;
                            iArr[i9] = iArr[i9] + 1;
                            c2708f.f23802M = 0;
                        } else {
                            int iK3 = c2708f.f23802M;
                            if (iK3 == 0) {
                                iK3 = c2708f.k();
                            }
                            if (iK3 != 2) {
                                throw new IllegalStateException("Expected END_OBJECT but was " + ((Object) AbstractC2864y4.m(c2708f.O())) + c2708f.E());
                            }
                            int i10 = c2708f.f23806Q;
                            int i11 = i10 - 1;
                            c2708f.f23806Q = i11;
                            c2708f.f23807R[i11] = null;
                            int[] iArr2 = c2708f.f23808S;
                            int i12 = i10 - 2;
                            iArr2[i12] = iArr2[i12] + 1;
                            c2708f.f23802M = 0;
                        }
                        if (arrayDeque.isEmpty()) {
                            return s6L0;
                        }
                        s6L0 = (S6) arrayDeque.removeLast();
                    } else {
                        if (s6L0 instanceof V6) {
                            int iK4 = c2708f.f23802M;
                            if (iK4 == 0) {
                                iK4 = c2708f.k();
                            }
                            if (iK4 == 14) {
                                strC0 = c2708f.d0();
                            } else if (iK4 == 12) {
                                strC0 = c2708f.c0('\'');
                            } else {
                                if (iK4 != 13) {
                                    throw new IllegalStateException("Expected a name but was " + ((Object) AbstractC2864y4.m(c2708f.O())) + c2708f.E());
                                }
                                strC0 = c2708f.c0('\"');
                            }
                            c2708f.f23802M = 0;
                            c2708f.f23807R[c2708f.f23806Q - 1] = strC0;
                        } else {
                            strC0 = null;
                        }
                        int iO2 = c2708f.O();
                        S6 s6L1 = L0(c2708f, iO2);
                        S6 s6K0 = s6L1 == null ? K0(c2708f, iO2) : s6L1;
                        if (s6L0 instanceof R6) {
                            ((R6) s6L0).f23645G.add(s6K0);
                        } else {
                            ((V6) s6L0).f23678G.put(strC0, s6K0);
                        }
                        if (s6L1 != null) {
                            arrayDeque.addLast(s6L0);
                            s6L0 = s6K0;
                        }
                    }
                }
                break;
            case 14:
                throw null;
            case 16:
                throw null;
            case 17:
                throw null;
            case 18:
                throw null;
            case 25:
                throw null;
        }
    }
}
