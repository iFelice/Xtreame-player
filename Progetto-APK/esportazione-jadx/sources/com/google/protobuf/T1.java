package com.google.protobuf;

import Z3.C0433o;
import com.google.android.gms.internal.ads.CO;
import com.google.android.gms.internal.ads.SG;
import com.google.api.Service;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;
import okhttp3.HttpUrl;
import okhttp3.internal.ws.WebSocketProtocol;
import org.eclipse.paho.client.mqttv3.MqttConnectOptions;
import org.videolan.libvlc.interfaces.IMediaList;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes2.dex */
public final class T1 implements InterfaceC2914j2 {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int[] f24333p = new int[0];

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final Unsafe f24334q = H2.j();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f24335a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object[] f24336b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f24337c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f24338d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Q1 f24339e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f24340f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f24341g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int[] f24342h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f24343i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f24344j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Z1 f24345k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final D1 f24346l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final B2 f24347m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final P0 f24348n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final L1 f24349o;

    public T1(int[] iArr, Object[] objArr, int i8, int i9, Q1 q7, int[] iArr2, int i10, int i11, Z1 z7, D1 d6, B2 b8, P0 p7, L1 l4) {
        this.f24335a = iArr;
        this.f24336b = objArr;
        this.f24337c = i8;
        this.f24338d = i9;
        this.f24341g = q7 instanceof AbstractC2909i1;
        this.f24340f = p7 != null && (q7 instanceof GeneratedMessageLite$ExtendableMessage);
        this.f24342h = iArr2;
        this.f24343i = i10;
        this.f24344j = i11;
        this.f24345k = z7;
        this.f24346l = d6;
        this.f24347m = b8;
        this.f24348n = p7;
        this.f24339e = q7;
        this.f24349o = l4;
    }

    public static T1 C(N1 n7, Z1 z7, D1 d6, B2 b8, P0 p7, L1 l4) {
        if (n7 instanceof C2910i2) {
            return D((C2910i2) n7, z7, d6, b8, p7, l4);
        }
        A0.O.I(n7);
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:122:0x0259  */
    /* JADX WARN: Code duplicated, block: B:124:0x025d  */
    /* JADX WARN: Code duplicated, block: B:127:0x0275  */
    /* JADX WARN: Code duplicated, block: B:129:0x0279  */
    public static T1 D(C2910i2 c2910i2, Z1 z7, D1 d6, B2 b8, P0 p7, L1 l4) {
        int i8;
        int iCharAt;
        int iCharAt2;
        int i9;
        int[] iArr;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        char cCharAt;
        int i15;
        char cCharAt2;
        int i16;
        char cCharAt3;
        int i17;
        char cCharAt4;
        int i18;
        char cCharAt5;
        int i19;
        char cCharAt6;
        int i20;
        char cCharAt7;
        int i21;
        char cCharAt8;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int iObjectFieldOffset;
        int iObjectFieldOffset2;
        int i28;
        int i29;
        java.lang.reflect.Field fieldP;
        char cCharAt9;
        int i30;
        int i31;
        int i32;
        int i33;
        Object obj;
        java.lang.reflect.Field fieldP2;
        int i34;
        Object obj2;
        java.lang.reflect.Field fieldP3;
        int i35;
        char cCharAt10;
        int i36;
        char cCharAt11;
        int i37;
        char cCharAt12;
        int i38;
        char cCharAt13;
        String strC = c2910i2.c();
        int length = strC.length();
        char c8 = 55296;
        if (strC.charAt(0) >= 55296) {
            int i39 = 1;
            while (true) {
                i8 = i39 + 1;
                if (strC.charAt(i39) < 55296) {
                    break;
                }
                i39 = i8;
            }
        } else {
            i8 = 1;
        }
        int i40 = i8 + 1;
        int iCharAt3 = strC.charAt(i8);
        if (iCharAt3 >= 55296) {
            int i41 = iCharAt3 & 8191;
            int i42 = 13;
            while (true) {
                i38 = i40 + 1;
                cCharAt13 = strC.charAt(i40);
                if (cCharAt13 < 55296) {
                    break;
                }
                i41 |= (cCharAt13 & 8191) << i42;
                i42 += 13;
                i40 = i38;
            }
            iCharAt3 = i41 | (cCharAt13 << i42);
            i40 = i38;
        }
        if (iCharAt3 == 0) {
            iArr = f24333p;
            i9 = 0;
            i11 = 0;
            iCharAt = 0;
            iCharAt2 = 0;
            i10 = 0;
            i13 = 0;
            i12 = 0;
        } else {
            int i43 = i40 + 1;
            int iCharAt4 = strC.charAt(i40);
            if (iCharAt4 >= 55296) {
                int i44 = iCharAt4 & 8191;
                int i45 = 13;
                while (true) {
                    i21 = i43 + 1;
                    cCharAt8 = strC.charAt(i43);
                    if (cCharAt8 < 55296) {
                        break;
                    }
                    i44 |= (cCharAt8 & 8191) << i45;
                    i45 += 13;
                    i43 = i21;
                }
                iCharAt4 = i44 | (cCharAt8 << i45);
                i43 = i21;
            }
            int i46 = i43 + 1;
            int iCharAt5 = strC.charAt(i43);
            if (iCharAt5 >= 55296) {
                int i47 = iCharAt5 & 8191;
                int i48 = 13;
                while (true) {
                    i20 = i46 + 1;
                    cCharAt7 = strC.charAt(i46);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i47 |= (cCharAt7 & 8191) << i48;
                    i48 += 13;
                    i46 = i20;
                }
                iCharAt5 = i47 | (cCharAt7 << i48);
                i46 = i20;
            }
            int i49 = i46 + 1;
            int iCharAt6 = strC.charAt(i46);
            if (iCharAt6 >= 55296) {
                int i50 = iCharAt6 & 8191;
                int i51 = 13;
                while (true) {
                    i19 = i49 + 1;
                    cCharAt6 = strC.charAt(i49);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i50 |= (cCharAt6 & 8191) << i51;
                    i51 += 13;
                    i49 = i19;
                }
                iCharAt6 = i50 | (cCharAt6 << i51);
                i49 = i19;
            }
            int i52 = i49 + 1;
            int iCharAt7 = strC.charAt(i49);
            if (iCharAt7 >= 55296) {
                int i53 = iCharAt7 & 8191;
                int i54 = 13;
                while (true) {
                    i18 = i52 + 1;
                    cCharAt5 = strC.charAt(i52);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i53 |= (cCharAt5 & 8191) << i54;
                    i54 += 13;
                    i52 = i18;
                }
                iCharAt7 = i53 | (cCharAt5 << i54);
                i52 = i18;
            }
            int i55 = i52 + 1;
            iCharAt = strC.charAt(i52);
            if (iCharAt >= 55296) {
                int i56 = iCharAt & 8191;
                int i57 = 13;
                while (true) {
                    i17 = i55 + 1;
                    cCharAt4 = strC.charAt(i55);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i56 |= (cCharAt4 & 8191) << i57;
                    i57 += 13;
                    i55 = i17;
                }
                iCharAt = i56 | (cCharAt4 << i57);
                i55 = i17;
            }
            int i58 = i55 + 1;
            iCharAt2 = strC.charAt(i55);
            if (iCharAt2 >= 55296) {
                int i59 = iCharAt2 & 8191;
                int i60 = 13;
                while (true) {
                    i16 = i58 + 1;
                    cCharAt3 = strC.charAt(i58);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i59 |= (cCharAt3 & 8191) << i60;
                    i60 += 13;
                    i58 = i16;
                }
                iCharAt2 = i59 | (cCharAt3 << i60);
                i58 = i16;
            }
            int i61 = i58 + 1;
            int iCharAt8 = strC.charAt(i58);
            if (iCharAt8 >= 55296) {
                int i62 = iCharAt8 & 8191;
                int i63 = 13;
                while (true) {
                    i15 = i61 + 1;
                    cCharAt2 = strC.charAt(i61);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i62 |= (cCharAt2 & 8191) << i63;
                    i63 += 13;
                    i61 = i15;
                }
                iCharAt8 = i62 | (cCharAt2 << i63);
                i61 = i15;
            }
            int i64 = i61 + 1;
            int iCharAt9 = strC.charAt(i61);
            if (iCharAt9 >= 55296) {
                int i65 = iCharAt9 & 8191;
                int i66 = 13;
                while (true) {
                    i14 = i64 + 1;
                    cCharAt = strC.charAt(i64);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i65 |= (cCharAt & 8191) << i66;
                    i66 += 13;
                    i64 = i14;
                }
                iCharAt9 = i65 | (cCharAt << i66);
                i64 = i14;
            }
            int i67 = (iCharAt4 * 2) + iCharAt5;
            i9 = iCharAt4;
            i40 = i64;
            iArr = new int[iCharAt9 + iCharAt2 + iCharAt8];
            i10 = iCharAt6;
            i11 = i67;
            i12 = iCharAt9;
            i13 = iCharAt7;
        }
        Object[] objArrB = c2910i2.b();
        Class<?> cls = c2910i2.a().getClass();
        int[] iArr2 = new int[iCharAt * 3];
        Object[] objArr = new Object[iCharAt * 2];
        int i68 = i12 + iCharAt2;
        int i69 = i12;
        int i70 = i68;
        int i71 = 0;
        int i72 = 0;
        while (i40 < length) {
            int i73 = i40 + 1;
            int iCharAt10 = strC.charAt(i40);
            if (iCharAt10 >= c8) {
                int i74 = iCharAt10 & 8191;
                int i75 = i73;
                int i76 = 13;
                while (true) {
                    i37 = i75 + 1;
                    cCharAt12 = strC.charAt(i75);
                    if (cCharAt12 < c8) {
                        break;
                    }
                    i74 |= (cCharAt12 & 8191) << i76;
                    i76 += 13;
                    i75 = i37;
                }
                iCharAt10 = i74 | (cCharAt12 << i76);
                i22 = i37;
            } else {
                i22 = i73;
            }
            int i77 = i22 + 1;
            int iCharAt11 = strC.charAt(i22);
            if (iCharAt11 >= c8) {
                int i78 = iCharAt11 & 8191;
                int i79 = i77;
                int i80 = 13;
                while (true) {
                    i36 = i79 + 1;
                    cCharAt11 = strC.charAt(i79);
                    i23 = length;
                    if (cCharAt11 < 55296) {
                        break;
                    }
                    i78 |= (cCharAt11 & 8191) << i80;
                    i80 += 13;
                    i79 = i36;
                    length = i23;
                }
                iCharAt11 = i78 | (cCharAt11 << i80);
                i24 = i36;
            } else {
                i23 = length;
                i24 = i77;
            }
            int i81 = iCharAt11 & 255;
            int i82 = i12;
            if ((iCharAt11 & 1024) != 0) {
                iArr[i71] = i72;
                i71++;
            }
            Unsafe unsafe = f24334q;
            int i83 = i71;
            if (i81 >= 51) {
                int i84 = i24 + 1;
                int iCharAt12 = strC.charAt(i24);
                if (iCharAt12 >= 55296) {
                    int i85 = iCharAt12 & 8191;
                    int i86 = i84;
                    int i87 = 13;
                    while (true) {
                        i35 = i86 + 1;
                        cCharAt10 = strC.charAt(i86);
                        i25 = i13;
                        if (cCharAt10 < 55296) {
                            break;
                        }
                        i85 |= (cCharAt10 & 8191) << i87;
                        i87 += 13;
                        i86 = i35;
                        i13 = i25;
                    }
                    iCharAt12 = i85 | (cCharAt10 << i87);
                    i31 = i35;
                } else {
                    i25 = i13;
                    i31 = i84;
                }
                int i88 = i81 - 51;
                int i89 = i31;
                if (i88 == 9 || i88 == 17) {
                    i32 = i11 + 1;
                    objArr[((i72 / 3) * 2) + 1] = objArrB[i11];
                } else {
                    if (i88 == 12 && (p156u.h.a(c2910i2.d(), 1) || (iCharAt11 & 2048) != 0)) {
                        i32 = i11 + 1;
                        objArr[((i72 / 3) * 2) + 1] = objArrB[i11];
                    }
                    i33 = iCharAt12 * 2;
                    obj = objArrB[i33];
                    if (obj instanceof java.lang.reflect.Field) {
                        fieldP2 = (java.lang.reflect.Field) obj;
                    } else {
                        fieldP2 = P(cls, (String) obj);
                        objArrB[i33] = fieldP2;
                    }
                    int i90 = i10;
                    int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldP2);
                    i34 = i33 + 1;
                    obj2 = objArrB[i34];
                    int i91 = i11;
                    if (obj2 instanceof java.lang.reflect.Field) {
                        fieldP3 = (java.lang.reflect.Field) obj2;
                    } else {
                        fieldP3 = P(cls, (String) obj2);
                        objArrB[i34] = fieldP3;
                    }
                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldP3);
                    iObjectFieldOffset = iObjectFieldOffset3;
                    i28 = i89;
                    i26 = i91;
                    i29 = 0;
                    iCharAt10 = iCharAt10;
                    i27 = i90;
                    iArr = iArr;
                }
                i11 = i32;
                i33 = iCharAt12 * 2;
                obj = objArrB[i33];
                if (obj instanceof java.lang.reflect.Field) {
                    fieldP2 = (java.lang.reflect.Field) obj;
                } else {
                    fieldP2 = P(cls, (String) obj);
                    objArrB[i33] = fieldP2;
                }
                int i92 = i10;
                int iObjectFieldOffset4 = (int) unsafe.objectFieldOffset(fieldP2);
                i34 = i33 + 1;
                obj2 = objArrB[i34];
                int i93 = i11;
                if (obj2 instanceof java.lang.reflect.Field) {
                    fieldP3 = (java.lang.reflect.Field) obj2;
                } else {
                    fieldP3 = P(cls, (String) obj2);
                    objArrB[i34] = fieldP3;
                }
                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldP3);
                iObjectFieldOffset = iObjectFieldOffset4;
                i28 = i89;
                i26 = i93;
                i29 = 0;
                iCharAt10 = iCharAt10;
                i27 = i92;
                iArr = iArr;
            } else {
                i25 = i13;
                int i94 = i10;
                i26 = i11 + 1;
                java.lang.reflect.Field fieldP4 = P(cls, (String) objArrB[i11]);
                i27 = i94;
                if (i81 == 9 || i81 == 17) {
                    iCharAt10 = iCharAt10;
                    objArr[((i72 / 3) * 2) + 1] = fieldP4.getType();
                } else {
                    if (i81 == 27 || i81 == 49) {
                        iCharAt10 = iCharAt10;
                        i30 = i11 + 2;
                        objArr[((i72 / 3) * 2) + 1] = objArrB[i26];
                    } else if (i81 == 12 || i81 == 30 || i81 == 44) {
                        iCharAt10 = iCharAt10;
                        if (c2910i2.d() == 1 || (iCharAt11 & 2048) != 0) {
                            i30 = i11 + 2;
                            objArr[((i72 / 3) * 2) + 1] = objArrB[i26];
                        }
                    } else if (i81 == 50) {
                        int i95 = i69 + 1;
                        iArr[i69] = i72;
                        int i96 = (i72 / 3) * 2;
                        int i97 = i11 + 2;
                        objArr[i96] = objArrB[i26];
                        if ((iCharAt11 & 2048) != 0) {
                            i26 = i11 + 3;
                            objArr[i96 + 1] = objArrB[i97];
                            i69 = i95;
                        } else {
                            i69 = i95;
                            i26 = i97;
                        }
                    }
                    i26 = i30;
                }
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldP4);
                if ((iCharAt11 & 4096) == 0 || i81 > 17) {
                    iObjectFieldOffset2 = 1048575;
                    i28 = i24;
                    i29 = 0;
                } else {
                    int i98 = i24 + 1;
                    int iCharAt13 = strC.charAt(i24);
                    if (iCharAt13 >= 55296) {
                        int i99 = iCharAt13 & 8191;
                        int i100 = 13;
                        while (true) {
                            i28 = i98 + 1;
                            cCharAt9 = strC.charAt(i98);
                            if (cCharAt9 < 55296) {
                                break;
                            }
                            i99 |= (cCharAt9 & 8191) << i100;
                            i100 += 13;
                            i98 = i28;
                        }
                        iCharAt13 = i99 | (cCharAt9 << i100);
                    } else {
                        i28 = i98;
                    }
                    int i101 = (iCharAt13 / 32) + (i9 * 2);
                    Object obj3 = objArrB[i101];
                    if (obj3 instanceof java.lang.reflect.Field) {
                        fieldP = (java.lang.reflect.Field) obj3;
                    } else {
                        fieldP = P(cls, (String) obj3);
                        objArrB[i101] = fieldP;
                    }
                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldP);
                    i29 = iCharAt13 % 32;
                }
                if (i81 >= 18 && i81 <= 49) {
                    iArr[i70] = iObjectFieldOffset;
                    i70++;
                }
            }
            int i102 = i72 + 1;
            iArr2[i72] = iCharAt10;
            int i103 = i72 + 2;
            String str = strC;
            iArr2[i102] = ((iCharAt11 & 256) != 0 ? 268435456 : 0) | ((iCharAt11 & IMediaList.Event.ItemAdded) != 0 ? 536870912 : 0) | ((iCharAt11 & 2048) != 0 ? Integer.MIN_VALUE : 0) | (i81 << 20) | iObjectFieldOffset;
            i72 += 3;
            iArr2[i103] = (i29 << 20) | iObjectFieldOffset2;
            iArr = iArr;
            i11 = i26;
            i12 = i82;
            i40 = i28;
            i10 = i27;
            length = i23;
            strC = str;
            i71 = i83;
            i13 = i25;
            c8 = 55296;
        }
        return new T1(iArr2, objArr, i10, i13, c2910i2.a(), iArr, i12, i68, z7, d6, b8, p7, l4);
    }

    public static long E(int i8) {
        return i8 & 1048575;
    }

    public static int F(Object obj, long j8) {
        return ((Integer) H2.f24255c.k(obj, j8)).intValue();
    }

    public static long G(Object obj, long j8) {
        return ((Long) H2.f24255c.k(obj, j8)).longValue();
    }

    public static java.lang.reflect.Field P(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            java.lang.reflect.Field[] declaredFields = cls.getDeclaredFields();
            for (java.lang.reflect.Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            StringBuilder sbP = U2.p("Field ", str, " for ");
            sbP.append(cls.getName());
            sbP.append(" not found. Known fields are ");
            sbP.append(Arrays.toString(declaredFields));
            throw new RuntimeException(sbP.toString());
        }
    }

    public static int V(int i8) {
        return (i8 & 267386880) >>> 20;
    }

    public static void l(Object obj) {
        if (u(obj)) {
            return;
        }
        throw new IllegalArgumentException("Mutating immutable message: " + obj);
    }

    public static int m(byte[] bArr, int i8, int i9, S2 s7, Class cls, SG sg) {
        switch (s7.ordinal()) {
            case 0:
                sg.f16419c = Double.valueOf(AbstractC2907i.h(i8, bArr));
                return i8 + 8;
            case 1:
                sg.f16419c = Float.valueOf(AbstractC2907i.p(i8, bArr));
                return i8 + 4;
            case 2:
            case 3:
                int iP = AbstractC2907i.P(bArr, i8, sg);
                sg.f16419c = Long.valueOf(sg.f16418b);
                return iP;
            case 4:
            case 12:
            case 13:
                int iN = AbstractC2907i.N(bArr, i8, sg);
                sg.f16419c = Integer.valueOf(sg.f16417a);
                return iN;
            case 5:
            case 15:
                sg.f16419c = Long.valueOf(AbstractC2907i.n(i8, bArr));
                return i8 + 8;
            case 6:
            case 14:
                sg.f16419c = Integer.valueOf(AbstractC2907i.l(i8, bArr));
                return i8 + 4;
            case 7:
                int iP2 = AbstractC2907i.P(bArr, i8, sg);
                sg.f16419c = Boolean.valueOf(sg.f16418b != 0);
                return iP2;
            case 8:
                return AbstractC2907i.J(bArr, i8, sg);
            case 9:
            default:
                throw new RuntimeException("unsupported field type.");
            case 10:
                return AbstractC2907i.t(C2902g2.f24439c.a(cls), bArr, i8, i9, sg);
            case 11:
                return AbstractC2907i.f(bArr, i8, sg);
            case 16:
                int iN2 = AbstractC2907i.N(bArr, i8, sg);
                sg.f16419c = Integer.valueOf(AbstractC2961w.c(sg.f16417a));
                return iN2;
            case 17:
                int iP3 = AbstractC2907i.P(bArr, i8, sg);
                sg.f16419c = Long.valueOf(AbstractC2961w.d(sg.f16418b));
                return iP3;
        }
    }

    public static A2 r(Object obj) {
        AbstractC2909i1 abstractC2909i1 = (AbstractC2909i1) obj;
        A2 a8 = abstractC2909i1.unknownFields;
        if (a8 != A2.f24234f) {
            return a8;
        }
        A2 a9 = new A2();
        abstractC2909i1.unknownFields = a9;
        return a9;
    }

    public static boolean u(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof AbstractC2909i1) {
            return ((AbstractC2909i1) obj).isMutable();
        }
        return true;
    }

    public final Object A(int i8, Object obj) {
        InterfaceC2914j2 interfaceC2914j2Q = q(i8);
        long jW = W(i8) & 1048575;
        if (!s(i8, obj)) {
            return interfaceC2914j2Q.i();
        }
        Object object = f24334q.getObject(obj, jW);
        if (u(object)) {
            return object;
        }
        Object objI = interfaceC2914j2Q.i();
        if (object != null) {
            interfaceC2914j2Q.b(objI, object);
        }
        return objI;
    }

    public final Object B(int i8, Object obj, int i9) {
        InterfaceC2914j2 interfaceC2914j2Q = q(i9);
        if (!v(i8, obj, i9)) {
            return interfaceC2914j2Q.i();
        }
        Object object = f24334q.getObject(obj, W(i9) & 1048575);
        if (u(object)) {
            return object;
        }
        Object objI = interfaceC2914j2Q.i();
        if (object != null) {
            interfaceC2914j2Q.b(objI, object);
        }
        return objI;
    }

    public final int H(Object obj, byte[] bArr, int i8, int i9, int i10, long j8, SG sg) throws C2966x1 {
        Object objP = p(i10);
        Unsafe unsafe = f24334q;
        Object object = unsafe.getObject(obj, j8);
        this.f24349o.getClass();
        if (L1.d(object)) {
            K1 k1F = L1.f();
            L1.e(k1F, object);
            unsafe.putObject(obj, j8, k1F);
            object = k1F;
        }
        p096m2.i iVarA = L1.a(objP);
        K1 k1B = L1.b(object);
        int iN = AbstractC2907i.N(bArr, i8, sg);
        int i11 = sg.f16417a;
        if (i11 < 0 || i11 > i9 - iN) {
            throw C2966x1.g();
        }
        int i12 = i11 + iN;
        Object obj2 = iVarA.f27225I;
        Object obj3 = iVarA.f27227K;
        while (iN < i12) {
            int iM = iN + 1;
            int i13 = bArr[iN];
            if (i13 < 0) {
                iM = AbstractC2907i.M(i13, bArr, iM, sg);
                i13 = sg.f16417a;
            }
            int i14 = iM;
            int i15 = i13 >>> 3;
            int i16 = i13 & 7;
            if (i15 != 1) {
                if (i15 == 2) {
                    S2 s7 = (S2) iVarA.f27226J;
                    if (i16 == s7.f24309H) {
                        iN = m(bArr, i14, i9, s7, iVarA.f27227K.getClass(), sg);
                        obj3 = sg.f16419c;
                    }
                }
                iN = AbstractC2907i.W(i13, bArr, i14, i9, sg);
            } else {
                S2 s8 = (S2) iVarA.f27224H;
                if (i16 == s8.f24309H) {
                    iN = m(bArr, i14, i9, s8, null, sg);
                    obj2 = sg.f16419c;
                } else {
                    iN = AbstractC2907i.W(i13, bArr, i14, i9, sg);
                }
            }
        }
        if (iN != i12) {
            throw C2966x1.f();
        }
        k1B.put(obj2, obj3);
        return i12;
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 11881. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    public final int I(java.lang.Object r29, byte[] r30, int r31, int r32, int r33, com.google.android.gms.internal.ads.SG r34) {
        /*
            Method dump skipped, instruction units count: 1188
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.T1.I(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.ads.SG):int");
    }

    public final int J(Object obj, byte[] bArr, int i8, int i9, int i10, int i11, int i12, int i13, int i14, long j8, int i15, SG sg) throws C2966x1 {
        long j9 = this.f24335a[i15 + 2] & 1048575;
        Unsafe unsafe = f24334q;
        switch (i14) {
            case 51:
                if (i12 != 1) {
                    return i8;
                }
                unsafe.putObject(obj, j8, Double.valueOf(AbstractC2907i.h(i8, bArr)));
                int i16 = i8 + 8;
                unsafe.putInt(obj, j9, i11);
                return i16;
            case 52:
                if (i12 != 5) {
                    return i8;
                }
                unsafe.putObject(obj, j8, Float.valueOf(AbstractC2907i.p(i8, bArr)));
                int i17 = i8 + 4;
                unsafe.putInt(obj, j9, i11);
                return i17;
            case 53:
            case 54:
                if (i12 != 0) {
                    return i8;
                }
                int iP = AbstractC2907i.P(bArr, i8, sg);
                unsafe.putObject(obj, j8, Long.valueOf(sg.f16418b));
                unsafe.putInt(obj, j9, i11);
                return iP;
            case 55:
            case 62:
                if (i12 != 0) {
                    return i8;
                }
                int iN = AbstractC2907i.N(bArr, i8, sg);
                unsafe.putObject(obj, j8, Integer.valueOf(sg.f16417a));
                unsafe.putInt(obj, j9, i11);
                return iN;
            case 56:
            case 65:
                if (i12 != 1) {
                    return i8;
                }
                unsafe.putObject(obj, j8, Long.valueOf(AbstractC2907i.n(i8, bArr)));
                int i18 = i8 + 8;
                unsafe.putInt(obj, j9, i11);
                return i18;
            case 57:
            case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                if (i12 != 5) {
                    return i8;
                }
                unsafe.putObject(obj, j8, Integer.valueOf(AbstractC2907i.l(i8, bArr)));
                int i19 = i8 + 4;
                unsafe.putInt(obj, j9, i11);
                return i19;
            case 58:
                if (i12 != 0) {
                    return i8;
                }
                int iP2 = AbstractC2907i.P(bArr, i8, sg);
                unsafe.putObject(obj, j8, Boolean.valueOf(sg.f16418b != 0));
                unsafe.putInt(obj, j9, i11);
                return iP2;
            case 59:
                if (i12 != 2) {
                    return i8;
                }
                int iN2 = AbstractC2907i.N(bArr, i8, sg);
                int i20 = sg.f16417a;
                if (i20 == 0) {
                    unsafe.putObject(obj, j8, HttpUrl.FRAGMENT_ENCODE_SET);
                } else {
                    if ((i13 & 536870912) != 0 && !K2.e(iN2, bArr, iN2 + i20)) {
                        throw C2966x1.b();
                    }
                    unsafe.putObject(obj, j8, new String(bArr, iN2, i20, AbstractC2960v1.f24524a));
                    iN2 += i20;
                }
                unsafe.putInt(obj, j9, i11);
                return iN2;
            case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                if (i12 != 2) {
                    return i8;
                }
                Object objB = B(i11, obj, i15);
                int iU = AbstractC2907i.U(objB, q(i15), bArr, i8, i9, sg);
                U(obj, i11, i15, objB);
                return iU;
            case 61:
                if (i12 != 2) {
                    return i8;
                }
                int iF = AbstractC2907i.f(bArr, i8, sg);
                unsafe.putObject(obj, j8, sg.f16419c);
                unsafe.putInt(obj, j9, i11);
                return iF;
            case 63:
                if (i12 != 0) {
                    return i8;
                }
                int iN3 = AbstractC2907i.N(bArr, i8, sg);
                int i21 = sg.f16417a;
                InterfaceC2941q1 interfaceC2941q1O = o(i15);
                if (interfaceC2941q1O == null || interfaceC2941q1O.a(i21)) {
                    unsafe.putObject(obj, j8, Integer.valueOf(i21));
                    unsafe.putInt(obj, j9, i11);
                } else {
                    r(obj).f(i10, Long.valueOf(i21));
                }
                return iN3;
            case 66:
                if (i12 != 0) {
                    return i8;
                }
                int iN4 = AbstractC2907i.N(bArr, i8, sg);
                unsafe.putObject(obj, j8, Integer.valueOf(AbstractC2961w.c(sg.f16417a)));
                unsafe.putInt(obj, j9, i11);
                return iN4;
            case 67:
                if (i12 != 0) {
                    return i8;
                }
                int iP3 = AbstractC2907i.P(bArr, i8, sg);
                unsafe.putObject(obj, j8, Long.valueOf(AbstractC2961w.d(sg.f16418b)));
                unsafe.putInt(obj, j9, i11);
                return iP3;
            case 68:
                if (i12 != 3) {
                    return i8;
                }
                Object objB2 = B(i11, obj, i15);
                int iT = AbstractC2907i.T(objB2, q(i15), bArr, i8, i9, (i10 & (-8)) | 4, sg);
                U(obj, i11, i15, objB2);
                return iT;
            default:
                return i8;
        }
    }

    public final int K(Object obj, byte[] bArr, int i8, int i9, int i10, int i11, int i12, int i13, long j8, int i14, long j9, SG sg) throws C2966x1 {
        int iO;
        Unsafe unsafe = f24334q;
        AbstractC2883c abstractC2883c = (AbstractC2883c) ((InterfaceC2956u1) unsafe.getObject(obj, j9));
        boolean zC = abstractC2883c.c();
        AbstractC2883c abstractC2883c2 = abstractC2883c;
        if (!zC) {
            int size = abstractC2883c.size();
            InterfaceC2956u1 interfaceC2956u1F = abstractC2883c.f(size == 0 ? 10 : size * 2);
            unsafe.putObject(obj, j9, interfaceC2956u1F);
            abstractC2883c2 = interfaceC2956u1F;
        }
        switch (i14) {
            case 18:
            case 35:
                if (i12 == 2) {
                    return AbstractC2907i.w(bArr, i8, abstractC2883c2, sg);
                }
                return i12 == 1 ? AbstractC2907i.i(i10, bArr, i8, i9, abstractC2883c2, sg) : i8;
            case 19:
            case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                if (i12 == 2) {
                    return AbstractC2907i.z(bArr, i8, abstractC2883c2, sg);
                }
                return i12 == 5 ? AbstractC2907i.q(i10, bArr, i8, i9, abstractC2883c2, sg) : i8;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i12 == 2) {
                    return AbstractC2907i.D(bArr, i8, abstractC2883c2, sg);
                }
                return i12 == 0 ? AbstractC2907i.Q(i10, bArr, i8, i9, abstractC2883c2, sg) : i8;
            case 22:
            case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
            case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
            case 43:
                if (i12 == 2) {
                    return AbstractC2907i.C(bArr, i8, abstractC2883c2, sg);
                }
                return i12 == 0 ? AbstractC2907i.O(i10, bArr, i8, i9, abstractC2883c2, sg) : i8;
            case 23:
            case 32:
            case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
            case 46:
                if (i12 == 2) {
                    return AbstractC2907i.y(bArr, i8, abstractC2883c2, sg);
                }
                return i12 == 1 ? AbstractC2907i.o(i10, bArr, i8, i9, abstractC2883c2, sg) : i8;
            case 24:
            case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
            case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
            case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                if (i12 == 2) {
                    return AbstractC2907i.x(bArr, i8, abstractC2883c2, sg);
                }
                return i12 == 5 ? AbstractC2907i.m(i10, bArr, i8, i9, abstractC2883c2, sg) : i8;
            case 25:
            case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                if (i12 == 2) {
                    return AbstractC2907i.v(bArr, i8, abstractC2883c2, sg);
                }
                return i12 == 0 ? AbstractC2907i.e(i10, bArr, i8, i9, abstractC2883c2, sg) : i8;
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                if (i12 == 2) {
                    return (j8 & 536870912) == 0 ? AbstractC2907i.H(i10, bArr, i8, i9, abstractC2883c2, sg) : AbstractC2907i.I(i10, bArr, i8, i9, abstractC2883c2, sg);
                }
                return i8;
            case 27:
                return i12 == 2 ? AbstractC2907i.u(q(i13), i10, bArr, i8, i9, abstractC2883c2, sg) : i8;
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                return i12 == 2 ? AbstractC2907i.g(i10, bArr, i8, i9, abstractC2883c2, sg) : i8;
            case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
            case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                if (i12 == 2) {
                    iO = AbstractC2907i.C(bArr, i8, abstractC2883c2, sg);
                } else {
                    if (i12 != 0) {
                        return i8;
                    }
                    iO = AbstractC2907i.O(i10, bArr, i8, i9, abstractC2883c2, sg);
                }
                AbstractC2918k2.A(obj, i11, abstractC2883c2, o(i13), null, this.f24347m);
                return iO;
            case 33:
            case 47:
                if (i12 == 2) {
                    return AbstractC2907i.A(bArr, i8, abstractC2883c2, sg);
                }
                return i12 == 0 ? AbstractC2907i.E(i10, bArr, i8, i9, abstractC2883c2, sg) : i8;
            case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
            case 48:
                if (i12 == 2) {
                    return AbstractC2907i.B(bArr, i8, abstractC2883c2, sg);
                }
                return i12 == 0 ? AbstractC2907i.F(i10, bArr, i8, i9, abstractC2883c2, sg) : i8;
            case 49:
                return i12 == 3 ? AbstractC2907i.s(q(i13), i10, bArr, i8, i9, abstractC2883c2, sg) : i8;
            default:
                return i8;
        }
    }

    public final void L(Object obj, long j8, CO co, InterfaceC2914j2 interfaceC2914j2, O0 o4) throws C2963w1 {
        int iF;
        List listC = this.f24346l.c(obj, j8);
        int i8 = co.f12628a;
        if ((i8 & 7) != 3) {
            throw C2966x1.c();
        }
        do {
            Object objI = interfaceC2914j2.i();
            co.d(objI, interfaceC2914j2, o4);
            interfaceC2914j2.d(objI);
            listC.add(objI);
            if (((AbstractC2961w) co.f12631d).g() || co.f12630c != 0) {
                return;
            } else {
                iF = ((AbstractC2961w) co.f12631d).F();
            }
        } while (iF == i8);
        co.f12630c = iF;
    }

    public final void M(Object obj, int i8, CO co, InterfaceC2914j2 interfaceC2914j2, O0 o4) throws C2966x1 {
        int iF;
        List listC = this.f24346l.c(obj, i8 & 1048575);
        int i9 = co.f12628a;
        if ((i9 & 7) != 2) {
            throw C2966x1.c();
        }
        do {
            Object objI = interfaceC2914j2.i();
            co.e(objI, interfaceC2914j2, o4);
            interfaceC2914j2.d(objI);
            listC.add(objI);
            if (((AbstractC2961w) co.f12631d).g() || co.f12630c != 0) {
                return;
            } else {
                iF = ((AbstractC2961w) co.f12631d).F();
            }
        } while (iF == i9);
        co.f12630c = iF;
    }

    public final void N(int i8, CO co, Object obj) throws C2963w1 {
        if ((536870912 & i8) != 0) {
            co.G(2);
            H2.s(obj, i8 & 1048575, ((AbstractC2961w) co.f12631d).E());
        } else if (!this.f24341g) {
            H2.s(obj, i8 & 1048575, co.g());
        } else {
            co.G(2);
            H2.s(obj, i8 & 1048575, ((AbstractC2961w) co.f12631d).D());
        }
    }

    public final void O(int i8, CO co, Object obj) throws C2963w1 {
        boolean z7 = (536870912 & i8) != 0;
        D1 d6 = this.f24346l;
        if (z7) {
            co.z(d6.c(obj, i8 & 1048575), true);
        } else {
            co.z(d6.c(obj, i8 & 1048575), false);
        }
    }

    public final void Q(int i8, Object obj) {
        int i9 = this.f24335a[i8 + 2];
        long j8 = 1048575 & i9;
        if (j8 == 1048575) {
            return;
        }
        H2.q(obj, (1 << (i9 >>> 20)) | H2.f24255c.i(obj, j8), j8);
    }

    public final void R(int i8, Object obj, int i9) {
        H2.q(obj, i8, this.f24335a[i9 + 2] & 1048575);
    }

    public final int S(int i8, int i9) {
        int[] iArr = this.f24335a;
        int length = (iArr.length / 3) - 1;
        while (i9 <= length) {
            int i10 = (length + i9) >>> 1;
            int i11 = i10 * 3;
            int i12 = iArr[i11];
            if (i8 == i12) {
                return i11;
            }
            if (i8 < i12) {
                length = i10 - 1;
            } else {
                i9 = i10 + 1;
            }
        }
        return -1;
    }

    public final void T(int i8, Object obj, Object obj2) {
        f24334q.putObject(obj, W(i8) & 1048575, obj2);
        Q(i8, obj);
    }

    public final void U(Object obj, int i8, int i9, Object obj2) {
        f24334q.putObject(obj, W(i9) & 1048575, obj2);
        R(i8, obj, i9);
    }

    public final int W(int i8) {
        return this.f24335a[i8 + 1];
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0299  */
    /* JADX WARN: Code duplicated, block: B:101:0x02a7  */
    /* JADX WARN: Code duplicated, block: B:102:0x02b5  */
    /* JADX WARN: Code duplicated, block: B:103:0x02c3  */
    /* JADX WARN: Code duplicated, block: B:104:0x02d1  */
    /* JADX WARN: Code duplicated, block: B:105:0x02df  */
    /* JADX WARN: Code duplicated, block: B:106:0x02ed  */
    /* JADX WARN: Code duplicated, block: B:107:0x02fb  */
    /* JADX WARN: Code duplicated, block: B:108:0x0309  */
    /* JADX WARN: Code duplicated, block: B:109:0x0317  */
    /* JADX WARN: Code duplicated, block: B:110:0x0325  */
    /* JADX WARN: Code duplicated, block: B:111:0x0333  */
    /* JADX WARN: Code duplicated, block: B:112:0x0341  */
    /* JADX WARN: Code duplicated, block: B:113:0x034f  */
    /* JADX WARN: Code duplicated, block: B:114:0x035d  */
    /* JADX WARN: Code duplicated, block: B:115:0x036b  */
    /* JADX WARN: Code duplicated, block: B:116:0x0378  */
    /* JADX WARN: Code duplicated, block: B:117:0x0389  */
    /* JADX WARN: Code duplicated, block: B:118:0x0396  */
    /* JADX WARN: Code duplicated, block: B:119:0x03a4  */
    /* JADX WARN: Code duplicated, block: B:120:0x03b2  */
    /* JADX WARN: Code duplicated, block: B:121:0x03c0  */
    /* JADX WARN: Code duplicated, block: B:122:0x03ce  */
    /* JADX WARN: Code duplicated, block: B:123:0x03dc  */
    /* JADX WARN: Code duplicated, block: B:124:0x03ea  */
    /* JADX WARN: Code duplicated, block: B:125:0x03f8  */
    /* JADX WARN: Code duplicated, block: B:126:0x0406  */
    /* JADX WARN: Code duplicated, block: B:128:0x0421  */
    /* JADX WARN: Code duplicated, block: B:129:0x042e  */
    /* JADX WARN: Code duplicated, block: B:131:0x0449  */
    /* JADX WARN: Code duplicated, block: B:132:0x0452  */
    /* JADX WARN: Code duplicated, block: B:134:0x046d  */
    /* JADX WARN: Code duplicated, block: B:135:0x0476  */
    /* JADX WARN: Code duplicated, block: B:137:0x0491  */
    /* JADX WARN: Code duplicated, block: B:138:0x049a  */
    /* JADX WARN: Code duplicated, block: B:140:0x04b5  */
    /* JADX WARN: Code duplicated, block: B:141:0x04be  */
    /* JADX WARN: Code duplicated, block: B:143:0x04d9  */
    /* JADX WARN: Code duplicated, block: B:144:0x04e2  */
    /* JADX WARN: Code duplicated, block: B:146:0x04fd  */
    /* JADX WARN: Code duplicated, block: B:147:0x0506  */
    /* JADX WARN: Code duplicated, block: B:149:0x0521  */
    /* JADX WARN: Code duplicated, block: B:150:0x052c  */
    /* JADX WARN: Code duplicated, block: B:152:0x0547  */
    /* JADX WARN: Code duplicated, block: B:153:0x0554  */
    /* JADX WARN: Code duplicated, block: B:155:0x056f  */
    /* JADX WARN: Code duplicated, block: B:157:0x0577  */
    /* JADX WARN: Code duplicated, block: B:158:0x0582  */
    /* JADX WARN: Code duplicated, block: B:159:0x0589  */
    /* JADX WARN: Code duplicated, block: B:161:0x05a4  */
    /* JADX WARN: Code duplicated, block: B:162:0x05af  */
    /* JADX WARN: Code duplicated, block: B:164:0x05ca  */
    /* JADX WARN: Code duplicated, block: B:165:0x05d3  */
    /* JADX WARN: Code duplicated, block: B:167:0x05ee  */
    /* JADX WARN: Code duplicated, block: B:168:0x05f7  */
    /* JADX WARN: Code duplicated, block: B:170:0x0612  */
    /* JADX WARN: Code duplicated, block: B:171:0x061b  */
    /* JADX WARN: Code duplicated, block: B:173:0x0636  */
    /* JADX WARN: Code duplicated, block: B:174:0x063f  */
    /* JADX WARN: Code duplicated, block: B:176:0x065a  */
    /* JADX WARN: Code duplicated, block: B:177:0x0662  */
    /* JADX WARN: Code duplicated, block: B:179:0x067d  */
    /* JADX WARN: Code duplicated, block: B:180:0x0687  */
    /* JADX WARN: Code duplicated, block: B:182:0x06a2  */
    /* JADX WARN: Code duplicated, block: B:195:0x06ab A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:197:0x06ab A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:199:0x06ab A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:201:0x06ab A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:203:0x06ab A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:205:0x06ab A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:207:0x06ab A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:209:0x06ab A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:211:0x06ab A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:213:0x06ab A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:216:0x06ab A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:218:0x06ab A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:220:0x06ab A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:222:0x06ab A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:224:0x06ab A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:226:0x06ab A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:228:0x06ab A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:230:0x06ab A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:31:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:33:0x00af  */
    /* JADX WARN: Code duplicated, block: B:34:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:36:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:37:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:39:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:40:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:42:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:43:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:45:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:46:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:48:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:49:0x0101  */
    /* JADX WARN: Code duplicated, block: B:51:0x0107  */
    /* JADX WARN: Code duplicated, block: B:52:0x010f  */
    /* JADX WARN: Code duplicated, block: B:54:0x0115  */
    /* JADX WARN: Code duplicated, block: B:55:0x0120  */
    /* JADX WARN: Code duplicated, block: B:57:0x0126  */
    /* JADX WARN: Code duplicated, block: B:58:0x0133  */
    /* JADX WARN: Code duplicated, block: B:60:0x0139  */
    /* JADX WARN: Code duplicated, block: B:62:0x0141  */
    /* JADX WARN: Code duplicated, block: B:63:0x014c  */
    /* JADX WARN: Code duplicated, block: B:64:0x0153  */
    /* JADX WARN: Code duplicated, block: B:66:0x0159  */
    /* JADX WARN: Code duplicated, block: B:67:0x016a  */
    /* JADX WARN: Code duplicated, block: B:69:0x0170  */
    /* JADX WARN: Code duplicated, block: B:70:0x0179  */
    /* JADX WARN: Code duplicated, block: B:72:0x017f  */
    /* JADX WARN: Code duplicated, block: B:73:0x0188  */
    /* JADX WARN: Code duplicated, block: B:75:0x018e  */
    /* JADX WARN: Code duplicated, block: B:76:0x0197  */
    /* JADX WARN: Code duplicated, block: B:78:0x019d  */
    /* JADX WARN: Code duplicated, block: B:79:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:7:0x0025  */
    /* JADX WARN: Code duplicated, block: B:81:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:82:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:84:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:85:0x01cc  */
    /* JADX WARN: Code duplicated, block: B:87:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:88:0x01e3  */
    /* JADX WARN: Code duplicated, block: B:90:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:93:0x020d A[LOOP:2: B:91:0x0207->B:93:0x020d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:94:0x0242  */
    /* JADX WARN: Code duplicated, block: B:95:0x0253  */
    /* JADX WARN: Code duplicated, block: B:96:0x0261  */
    /* JADX WARN: Code duplicated, block: B:97:0x026f  */
    /* JADX WARN: Code duplicated, block: B:98:0x027d  */
    /* JADX WARN: Code duplicated, block: B:99:0x028b  */
    public final void X(Object obj, C0433o c0433o) {
        Map.Entry entry;
        Iterator it;
        int i8;
        int i9;
        Map.Entry entry2;
        int i10;
        long j8;
        Map.Entry entry3;
        Iterator it2;
        int[] iArr;
        int i11;
        int i12;
        Object object;
        Object object2;
        p096m2.i iVar;
        Iterator it3;
        Object object3;
        int i13;
        boolean z7 = this.f24340f;
        P0 p7 = this.f24348n;
        if (z7) {
            p7.getClass();
            W0 w0B = P0.b(obj);
            if (w0B.i()) {
                entry = null;
                it = null;
            } else {
                Iterator itL = w0B.l();
                entry = (Map.Entry) itL.next();
                it = itL;
            }
        } else {
            entry = null;
            it = null;
        }
        int[] iArr2 = this.f24335a;
        int length = iArr2.length;
        int i14 = 1048575;
        int i15 = 0;
        int i16 = 0;
        while (i16 < length) {
            int iW = W(i16);
            int i17 = iArr2[i16];
            int iV = V(iW);
            Unsafe unsafe = f24334q;
            if (iV <= 17) {
                int i18 = iArr2[i16 + 2];
                Map.Entry entry4 = entry;
                int i19 = i15;
                int i20 = i18 & 1048575;
                if (i20 != i14) {
                    i13 = i20 == 1048575 ? 0 : unsafe.getInt(obj, i20);
                    i14 = i20;
                } else {
                    i13 = i19;
                }
                int i21 = 1 << (i18 >>> 20);
                i9 = i14;
                i8 = i13;
                entry2 = entry4;
                i10 = i21;
            } else {
                i8 = i15;
                i9 = i14;
                entry2 = entry;
                i10 = 0;
            }
            while (entry2 != null) {
                p7.getClass();
                if (P0.a(entry2) <= i17) {
                    P0.e(c0433o, entry2);
                    entry2 = it.hasNext() ? (Map.Entry) it.next() : null;
                } else {
                    j8 = iW & 1048575;
                    switch (iV) {
                        case 0:
                            entry3 = entry2;
                            it2 = it;
                            iArr = iArr2;
                            i11 = length;
                            i12 = i16;
                            if (t(obj, i12, i9, i8, i10)) {
                                c0433o.j(i17, H2.f24255c.g(obj, j8));
                                continue;
                                continue;
                            }
                            i16 = i12 + 3;
                            i14 = i9;
                            it = it2;
                            i15 = i8;
                            entry = entry3;
                            iArr2 = iArr;
                            length = i11;
                            break;
                        case 1:
                            entry3 = entry2;
                            it2 = it;
                            iArr = iArr2;
                            i11 = length;
                            i12 = i16;
                            if (t(obj, i12, i9, i8, i10)) {
                                c0433o.n(i17, H2.f24255c.h(obj, j8));
                            } else {
                                continue;
                                continue;
                            }
                            i16 = i12 + 3;
                            i14 = i9;
                            it = it2;
                            i15 = i8;
                            entry = entry3;
                            iArr2 = iArr;
                            length = i11;
                            break;
                        case 2:
                            entry3 = entry2;
                            it2 = it;
                            iArr = iArr2;
                            i11 = length;
                            i12 = i16;
                            if (t(obj, i12, i9, i8, i10)) {
                                c0433o.q(i17, unsafe.getLong(obj, j8));
                            } else {
                                continue;
                                continue;
                            }
                            i16 = i12 + 3;
                            i14 = i9;
                            it = it2;
                            i15 = i8;
                            entry = entry3;
                            iArr2 = iArr;
                            length = i11;
                            break;
                        case 3:
                            entry3 = entry2;
                            it2 = it;
                            iArr = iArr2;
                            i11 = length;
                            i12 = i16;
                            if (t(obj, i12, i9, i8, i10)) {
                                c0433o.x(i17, unsafe.getLong(obj, j8));
                            } else {
                                continue;
                                continue;
                            }
                            i16 = i12 + 3;
                            i14 = i9;
                            it = it2;
                            i15 = i8;
                            entry = entry3;
                            iArr2 = iArr;
                            length = i11;
                            break;
                        case 4:
                            entry3 = entry2;
                            it2 = it;
                            iArr = iArr2;
                            i11 = length;
                            i12 = i16;
                            if (t(obj, i12, i9, i8, i10)) {
                                c0433o.p(i17, unsafe.getInt(obj, j8));
                            } else {
                                continue;
                                continue;
                            }
                            i16 = i12 + 3;
                            i14 = i9;
                            it = it2;
                            i15 = i8;
                            entry = entry3;
                            iArr2 = iArr;
                            length = i11;
                            break;
                        case 5:
                            entry3 = entry2;
                            it2 = it;
                            iArr = iArr2;
                            i11 = length;
                            i12 = i16;
                            if (t(obj, i12, i9, i8, i10)) {
                                c0433o.m(i17, unsafe.getLong(obj, j8));
                            } else {
                                continue;
                                continue;
                            }
                            i16 = i12 + 3;
                            i14 = i9;
                            it = it2;
                            i15 = i8;
                            entry = entry3;
                            iArr2 = iArr;
                            length = i11;
                            break;
                        case 6:
                            entry3 = entry2;
                            it2 = it;
                            iArr = iArr2;
                            i11 = length;
                            i12 = i16;
                            if (t(obj, i12, i9, i8, i10)) {
                                c0433o.l(i17, unsafe.getInt(obj, j8));
                            } else {
                                continue;
                                continue;
                            }
                            i16 = i12 + 3;
                            i14 = i9;
                            it = it2;
                            i15 = i8;
                            entry = entry3;
                            iArr2 = iArr;
                            length = i11;
                            break;
                        case 7:
                            entry3 = entry2;
                            it2 = it;
                            iArr = iArr2;
                            i11 = length;
                            i12 = i16;
                            if (t(obj, i12, i9, i8, i10)) {
                                c0433o.h(i17, H2.f24255c.d(obj, j8));
                            } else {
                                continue;
                                continue;
                            }
                            i16 = i12 + 3;
                            i14 = i9;
                            it = it2;
                            i15 = i8;
                            entry = entry3;
                            iArr2 = iArr;
                            length = i11;
                            break;
                        case 8:
                            entry3 = entry2;
                            it2 = it;
                            iArr = iArr2;
                            i11 = length;
                            i12 = i16;
                            if (t(obj, i12, i9, i8, i10)) {
                                object = unsafe.getObject(obj, j8);
                                if (object instanceof String) {
                                    ((AbstractC2970z) c0433o.f8372H).M0(i17, (String) object);
                                } else {
                                    c0433o.i(i17, (r) object);
                                }
                            } else {
                                continue;
                                continue;
                            }
                            i16 = i12 + 3;
                            i14 = i9;
                            it = it2;
                            i15 = i8;
                            entry = entry3;
                            iArr2 = iArr;
                            length = i11;
                            break;
                        case 9:
                            entry3 = entry2;
                            it2 = it;
                            iArr = iArr2;
                            i11 = length;
                            i12 = i16;
                            if (t(obj, i12, i9, i8, i10)) {
                                c0433o.r(i17, q(i12), unsafe.getObject(obj, j8));
                            } else {
                                continue;
                                continue;
                            }
                            i16 = i12 + 3;
                            i14 = i9;
                            it = it2;
                            i15 = i8;
                            entry = entry3;
                            iArr2 = iArr;
                            length = i11;
                            break;
                        case 10:
                            entry3 = entry2;
                            it2 = it;
                            iArr = iArr2;
                            i11 = length;
                            i12 = i16;
                            if (t(obj, i12, i9, i8, i10)) {
                                c0433o.i(i17, (r) unsafe.getObject(obj, j8));
                            } else {
                                continue;
                                continue;
                            }
                            i16 = i12 + 3;
                            i14 = i9;
                            it = it2;
                            i15 = i8;
                            entry = entry3;
                            iArr2 = iArr;
                            length = i11;
                            break;
                        case 11:
                            entry3 = entry2;
                            it2 = it;
                            iArr = iArr2;
                            i11 = length;
                            i12 = i16;
                            if (t(obj, i12, i9, i8, i10)) {
                                c0433o.w(i17, unsafe.getInt(obj, j8));
                            } else {
                                continue;
                                continue;
                            }
                            i16 = i12 + 3;
                            i14 = i9;
                            it = it2;
                            i15 = i8;
                            entry = entry3;
                            iArr2 = iArr;
                            length = i11;
                            break;
                        case 12:
                            entry3 = entry2;
                            it2 = it;
                            iArr = iArr2;
                            i11 = length;
                            i12 = i16;
                            if (t(obj, i12, i9, i8, i10)) {
                                c0433o.k(i17, unsafe.getInt(obj, j8));
                            } else {
                                continue;
                                continue;
                            }
                            i16 = i12 + 3;
                            i14 = i9;
                            it = it2;
                            i15 = i8;
                            entry = entry3;
                            iArr2 = iArr;
                            length = i11;
                            break;
                        case 13:
                            entry3 = entry2;
                            it2 = it;
                            iArr = iArr2;
                            i11 = length;
                            i12 = i16;
                            if (t(obj, i12, i9, i8, i10)) {
                                c0433o.s(i17, unsafe.getInt(obj, j8));
                            } else {
                                continue;
                                continue;
                            }
                            i16 = i12 + 3;
                            i14 = i9;
                            it = it2;
                            i15 = i8;
                            entry = entry3;
                            iArr2 = iArr;
                            length = i11;
                            break;
                        case 14:
                            entry3 = entry2;
                            it2 = it;
                            iArr = iArr2;
                            i11 = length;
                            i12 = i16;
                            if (t(obj, i12, i9, i8, i10)) {
                                c0433o.t(i17, unsafe.getLong(obj, j8));
                            } else {
                                continue;
                                continue;
                            }
                            i16 = i12 + 3;
                            i14 = i9;
                            it = it2;
                            i15 = i8;
                            entry = entry3;
                            iArr2 = iArr;
                            length = i11;
                            break;
                        case 15:
                            entry3 = entry2;
                            it2 = it;
                            iArr = iArr2;
                            i11 = length;
                            i12 = i16;
                            if (t(obj, i12, i9, i8, i10)) {
                                c0433o.u(i17, unsafe.getInt(obj, j8));
                            } else {
                                continue;
                                continue;
                            }
                            i16 = i12 + 3;
                            i14 = i9;
                            it = it2;
                            i15 = i8;
                            entry = entry3;
                            iArr2 = iArr;
                            length = i11;
                            break;
                        case 16:
                            entry3 = entry2;
                            it2 = it;
                            iArr = iArr2;
                            i11 = length;
                            i12 = i16;
                            if (t(obj, i12, i9, i8, i10)) {
                                c0433o.v(i17, unsafe.getLong(obj, j8));
                            } else {
                                continue;
                                continue;
                            }
                            i16 = i12 + 3;
                            i14 = i9;
                            it = it2;
                            i15 = i8;
                            entry = entry3;
                            iArr2 = iArr;
                            length = i11;
                            break;
                        case 17:
                            it2 = it;
                            entry3 = entry2;
                            iArr = iArr2;
                            i11 = length;
                            i12 = i16;
                            if (t(obj, i16, i9, i8, i10)) {
                                c0433o.o(i17, q(i12), unsafe.getObject(obj, j8));
                            } else {
                                continue;
                                continue;
                            }
                            i16 = i12 + 3;
                            i14 = i9;
                            it = it2;
                            i15 = i8;
                            entry = entry3;
                            iArr2 = iArr;
                            length = i11;
                            break;
                        case 18:
                            AbstractC2918k2.G(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, false);
                            break;
                        case 19:
                            AbstractC2918k2.K(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, false);
                            break;
                        case 20:
                            AbstractC2918k2.N(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, false);
                            break;
                        case 21:
                            AbstractC2918k2.V(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, false);
                            break;
                        case 22:
                            AbstractC2918k2.M(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, false);
                            break;
                        case 23:
                            AbstractC2918k2.J(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, false);
                            break;
                        case 24:
                            AbstractC2918k2.I(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, false);
                            break;
                        case 25:
                            AbstractC2918k2.E(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, false);
                            break;
                        case Service.BILLING_FIELD_NUMBER /* 26 */:
                            AbstractC2918k2.T(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o);
                            break;
                        case 27:
                            AbstractC2918k2.O(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, q(i16));
                            break;
                        case Service.MONITORING_FIELD_NUMBER /* 28 */:
                            AbstractC2918k2.F(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o);
                            break;
                        case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                            AbstractC2918k2.U(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, false);
                            break;
                        case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                            AbstractC2918k2.H(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, false);
                            break;
                        case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                            AbstractC2918k2.P(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, false);
                            break;
                        case 32:
                            AbstractC2918k2.Q(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, false);
                            break;
                        case 33:
                            AbstractC2918k2.R(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, false);
                            break;
                        case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                            AbstractC2918k2.S(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, false);
                            break;
                        case 35:
                            AbstractC2918k2.G(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, true);
                            break;
                        case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                            AbstractC2918k2.K(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, true);
                            break;
                        case 37:
                            AbstractC2918k2.N(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, true);
                            break;
                        case 38:
                            AbstractC2918k2.V(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, true);
                            break;
                        case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                            AbstractC2918k2.M(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, true);
                            break;
                        case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                            AbstractC2918k2.J(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, true);
                            break;
                        case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
                            AbstractC2918k2.I(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, true);
                            break;
                        case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                            AbstractC2918k2.E(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, true);
                            break;
                        case 43:
                            AbstractC2918k2.U(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, true);
                            break;
                        case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                            AbstractC2918k2.H(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, true);
                            break;
                        case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                            AbstractC2918k2.P(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, true);
                            break;
                        case 46:
                            AbstractC2918k2.Q(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, true);
                            break;
                        case 47:
                            AbstractC2918k2.R(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, true);
                            break;
                        case 48:
                            AbstractC2918k2.S(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, true);
                            break;
                        case 49:
                            AbstractC2918k2.L(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, q(i16));
                            break;
                        case 50:
                            object2 = unsafe.getObject(obj, j8);
                            if (object2 != null) {
                                Object objP = p(i16);
                                this.f24349o.getClass();
                                iVar = ((J1) objP).f24264a;
                                ((AbstractC2970z) c0433o.f8372H).getClass();
                                for (it3 = ((K1) object2).entrySet().iterator(); it3.hasNext(); it3 = it3) {
                                    Map.Entry entry5 = (Map.Entry) it3.next();
                                    ((AbstractC2970z) c0433o.f8372H).O0(i17, 2);
                                    ((AbstractC2970z) c0433o.f8372H).Q0(J1.a(iVar, entry5.getKey(), entry5.getValue()));
                                    J1.b((AbstractC2970z) c0433o.f8372H, iVar, entry5.getKey(), entry5.getValue());
                                }
                            }
                            break;
                        case 51:
                            if (v(i17, obj, i16)) {
                                c0433o.j(i17, ((Double) H2.f24255c.k(obj, j8)).doubleValue());
                            }
                            break;
                        case 52:
                            if (v(i17, obj, i16)) {
                                c0433o.n(i17, ((Float) H2.f24255c.k(obj, j8)).floatValue());
                            }
                            break;
                        case 53:
                            if (v(i17, obj, i16)) {
                                c0433o.q(i17, G(obj, j8));
                            }
                            break;
                        case 54:
                            if (v(i17, obj, i16)) {
                                c0433o.x(i17, G(obj, j8));
                            }
                            break;
                        case 55:
                            if (v(i17, obj, i16)) {
                                c0433o.p(i17, F(obj, j8));
                            }
                            break;
                        case 56:
                            if (v(i17, obj, i16)) {
                                c0433o.m(i17, G(obj, j8));
                            }
                            break;
                        case 57:
                            if (v(i17, obj, i16)) {
                                c0433o.l(i17, F(obj, j8));
                            }
                            break;
                        case 58:
                            if (v(i17, obj, i16)) {
                                c0433o.h(i17, ((Boolean) H2.f24255c.k(obj, j8)).booleanValue());
                            }
                            break;
                        case 59:
                            if (v(i17, obj, i16)) {
                                object3 = unsafe.getObject(obj, j8);
                                if (object3 instanceof String) {
                                    ((AbstractC2970z) c0433o.f8372H).M0(i17, (String) object3);
                                } else {
                                    c0433o.i(i17, (r) object3);
                                }
                            }
                            break;
                        case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                            if (v(i17, obj, i16)) {
                                c0433o.r(i17, q(i16), unsafe.getObject(obj, j8));
                            }
                            break;
                        case 61:
                            if (v(i17, obj, i16)) {
                                c0433o.i(i17, (r) unsafe.getObject(obj, j8));
                            }
                            break;
                        case 62:
                            if (v(i17, obj, i16)) {
                                c0433o.w(i17, F(obj, j8));
                            }
                            break;
                        case 63:
                            if (v(i17, obj, i16)) {
                                c0433o.k(i17, F(obj, j8));
                            }
                            break;
                        case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                            if (v(i17, obj, i16)) {
                                c0433o.s(i17, F(obj, j8));
                            }
                            break;
                        case 65:
                            if (v(i17, obj, i16)) {
                                c0433o.t(i17, G(obj, j8));
                            }
                            break;
                        case 66:
                            if (v(i17, obj, i16)) {
                                c0433o.u(i17, F(obj, j8));
                            }
                            break;
                        case 67:
                            if (v(i17, obj, i16)) {
                                c0433o.v(i17, G(obj, j8));
                            }
                            break;
                        case 68:
                            if (v(i17, obj, i16)) {
                                c0433o.o(i17, q(i16), unsafe.getObject(obj, j8));
                            }
                            break;
                    }
                    entry3 = entry2;
                    it2 = it;
                    iArr = iArr2;
                    i11 = length;
                    i12 = i16;
                    i16 = i12 + 3;
                    i14 = i9;
                    it = it2;
                    i15 = i8;
                    entry = entry3;
                    iArr2 = iArr;
                    length = i11;
                }
            }
            j8 = iW & 1048575;
            switch (iV) {
                case 0:
                    entry3 = entry2;
                    it2 = it;
                    iArr = iArr2;
                    i11 = length;
                    i12 = i16;
                    if (t(obj, i12, i9, i8, i10)) {
                        c0433o.j(i17, H2.f24255c.g(obj, j8));
                        continue;
                        continue;
                    }
                    i16 = i12 + 3;
                    i14 = i9;
                    it = it2;
                    i15 = i8;
                    entry = entry3;
                    iArr2 = iArr;
                    length = i11;
                    break;
                case 1:
                    entry3 = entry2;
                    it2 = it;
                    iArr = iArr2;
                    i11 = length;
                    i12 = i16;
                    if (t(obj, i12, i9, i8, i10)) {
                        c0433o.n(i17, H2.f24255c.h(obj, j8));
                    } else {
                        continue;
                        continue;
                    }
                    i16 = i12 + 3;
                    i14 = i9;
                    it = it2;
                    i15 = i8;
                    entry = entry3;
                    iArr2 = iArr;
                    length = i11;
                    break;
                case 2:
                    entry3 = entry2;
                    it2 = it;
                    iArr = iArr2;
                    i11 = length;
                    i12 = i16;
                    if (t(obj, i12, i9, i8, i10)) {
                        c0433o.q(i17, unsafe.getLong(obj, j8));
                    } else {
                        continue;
                        continue;
                    }
                    i16 = i12 + 3;
                    i14 = i9;
                    it = it2;
                    i15 = i8;
                    entry = entry3;
                    iArr2 = iArr;
                    length = i11;
                    break;
                case 3:
                    entry3 = entry2;
                    it2 = it;
                    iArr = iArr2;
                    i11 = length;
                    i12 = i16;
                    if (t(obj, i12, i9, i8, i10)) {
                        c0433o.x(i17, unsafe.getLong(obj, j8));
                    } else {
                        continue;
                        continue;
                    }
                    i16 = i12 + 3;
                    i14 = i9;
                    it = it2;
                    i15 = i8;
                    entry = entry3;
                    iArr2 = iArr;
                    length = i11;
                    break;
                case 4:
                    entry3 = entry2;
                    it2 = it;
                    iArr = iArr2;
                    i11 = length;
                    i12 = i16;
                    if (t(obj, i12, i9, i8, i10)) {
                        c0433o.p(i17, unsafe.getInt(obj, j8));
                    } else {
                        continue;
                        continue;
                    }
                    i16 = i12 + 3;
                    i14 = i9;
                    it = it2;
                    i15 = i8;
                    entry = entry3;
                    iArr2 = iArr;
                    length = i11;
                    break;
                case 5:
                    entry3 = entry2;
                    it2 = it;
                    iArr = iArr2;
                    i11 = length;
                    i12 = i16;
                    if (t(obj, i12, i9, i8, i10)) {
                        c0433o.m(i17, unsafe.getLong(obj, j8));
                    } else {
                        continue;
                        continue;
                    }
                    i16 = i12 + 3;
                    i14 = i9;
                    it = it2;
                    i15 = i8;
                    entry = entry3;
                    iArr2 = iArr;
                    length = i11;
                    break;
                case 6:
                    entry3 = entry2;
                    it2 = it;
                    iArr = iArr2;
                    i11 = length;
                    i12 = i16;
                    if (t(obj, i12, i9, i8, i10)) {
                        c0433o.l(i17, unsafe.getInt(obj, j8));
                    } else {
                        continue;
                        continue;
                    }
                    i16 = i12 + 3;
                    i14 = i9;
                    it = it2;
                    i15 = i8;
                    entry = entry3;
                    iArr2 = iArr;
                    length = i11;
                    break;
                case 7:
                    entry3 = entry2;
                    it2 = it;
                    iArr = iArr2;
                    i11 = length;
                    i12 = i16;
                    if (t(obj, i12, i9, i8, i10)) {
                        c0433o.h(i17, H2.f24255c.d(obj, j8));
                    } else {
                        continue;
                        continue;
                    }
                    i16 = i12 + 3;
                    i14 = i9;
                    it = it2;
                    i15 = i8;
                    entry = entry3;
                    iArr2 = iArr;
                    length = i11;
                    break;
                case 8:
                    entry3 = entry2;
                    it2 = it;
                    iArr = iArr2;
                    i11 = length;
                    i12 = i16;
                    if (t(obj, i12, i9, i8, i10)) {
                        object = unsafe.getObject(obj, j8);
                        if (object instanceof String) {
                            ((AbstractC2970z) c0433o.f8372H).M0(i17, (String) object);
                        } else {
                            c0433o.i(i17, (r) object);
                        }
                    } else {
                        continue;
                        continue;
                    }
                    i16 = i12 + 3;
                    i14 = i9;
                    it = it2;
                    i15 = i8;
                    entry = entry3;
                    iArr2 = iArr;
                    length = i11;
                    break;
                case 9:
                    entry3 = entry2;
                    it2 = it;
                    iArr = iArr2;
                    i11 = length;
                    i12 = i16;
                    if (t(obj, i12, i9, i8, i10)) {
                        c0433o.r(i17, q(i12), unsafe.getObject(obj, j8));
                    } else {
                        continue;
                        continue;
                    }
                    i16 = i12 + 3;
                    i14 = i9;
                    it = it2;
                    i15 = i8;
                    entry = entry3;
                    iArr2 = iArr;
                    length = i11;
                    break;
                case 10:
                    entry3 = entry2;
                    it2 = it;
                    iArr = iArr2;
                    i11 = length;
                    i12 = i16;
                    if (t(obj, i12, i9, i8, i10)) {
                        c0433o.i(i17, (r) unsafe.getObject(obj, j8));
                    } else {
                        continue;
                        continue;
                    }
                    i16 = i12 + 3;
                    i14 = i9;
                    it = it2;
                    i15 = i8;
                    entry = entry3;
                    iArr2 = iArr;
                    length = i11;
                    break;
                case 11:
                    entry3 = entry2;
                    it2 = it;
                    iArr = iArr2;
                    i11 = length;
                    i12 = i16;
                    if (t(obj, i12, i9, i8, i10)) {
                        c0433o.w(i17, unsafe.getInt(obj, j8));
                    } else {
                        continue;
                        continue;
                    }
                    i16 = i12 + 3;
                    i14 = i9;
                    it = it2;
                    i15 = i8;
                    entry = entry3;
                    iArr2 = iArr;
                    length = i11;
                    break;
                case 12:
                    entry3 = entry2;
                    it2 = it;
                    iArr = iArr2;
                    i11 = length;
                    i12 = i16;
                    if (t(obj, i12, i9, i8, i10)) {
                        c0433o.k(i17, unsafe.getInt(obj, j8));
                    } else {
                        continue;
                        continue;
                    }
                    i16 = i12 + 3;
                    i14 = i9;
                    it = it2;
                    i15 = i8;
                    entry = entry3;
                    iArr2 = iArr;
                    length = i11;
                    break;
                case 13:
                    entry3 = entry2;
                    it2 = it;
                    iArr = iArr2;
                    i11 = length;
                    i12 = i16;
                    if (t(obj, i12, i9, i8, i10)) {
                        c0433o.s(i17, unsafe.getInt(obj, j8));
                    } else {
                        continue;
                        continue;
                    }
                    i16 = i12 + 3;
                    i14 = i9;
                    it = it2;
                    i15 = i8;
                    entry = entry3;
                    iArr2 = iArr;
                    length = i11;
                    break;
                case 14:
                    entry3 = entry2;
                    it2 = it;
                    iArr = iArr2;
                    i11 = length;
                    i12 = i16;
                    if (t(obj, i12, i9, i8, i10)) {
                        c0433o.t(i17, unsafe.getLong(obj, j8));
                    } else {
                        continue;
                        continue;
                    }
                    i16 = i12 + 3;
                    i14 = i9;
                    it = it2;
                    i15 = i8;
                    entry = entry3;
                    iArr2 = iArr;
                    length = i11;
                    break;
                case 15:
                    entry3 = entry2;
                    it2 = it;
                    iArr = iArr2;
                    i11 = length;
                    i12 = i16;
                    if (t(obj, i12, i9, i8, i10)) {
                        c0433o.u(i17, unsafe.getInt(obj, j8));
                    } else {
                        continue;
                        continue;
                    }
                    i16 = i12 + 3;
                    i14 = i9;
                    it = it2;
                    i15 = i8;
                    entry = entry3;
                    iArr2 = iArr;
                    length = i11;
                    break;
                case 16:
                    entry3 = entry2;
                    it2 = it;
                    iArr = iArr2;
                    i11 = length;
                    i12 = i16;
                    if (t(obj, i12, i9, i8, i10)) {
                        c0433o.v(i17, unsafe.getLong(obj, j8));
                    } else {
                        continue;
                        continue;
                    }
                    i16 = i12 + 3;
                    i14 = i9;
                    it = it2;
                    i15 = i8;
                    entry = entry3;
                    iArr2 = iArr;
                    length = i11;
                    break;
                case 17:
                    it2 = it;
                    entry3 = entry2;
                    iArr = iArr2;
                    i11 = length;
                    i12 = i16;
                    if (t(obj, i16, i9, i8, i10)) {
                        c0433o.o(i17, q(i12), unsafe.getObject(obj, j8));
                    } else {
                        continue;
                        continue;
                    }
                    i16 = i12 + 3;
                    i14 = i9;
                    it = it2;
                    i15 = i8;
                    entry = entry3;
                    iArr2 = iArr;
                    length = i11;
                    break;
                case 18:
                    AbstractC2918k2.G(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, false);
                    break;
                case 19:
                    AbstractC2918k2.K(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, false);
                    break;
                case 20:
                    AbstractC2918k2.N(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, false);
                    break;
                case 21:
                    AbstractC2918k2.V(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, false);
                    break;
                case 22:
                    AbstractC2918k2.M(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, false);
                    break;
                case 23:
                    AbstractC2918k2.J(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, false);
                    break;
                case 24:
                    AbstractC2918k2.I(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, false);
                    break;
                case 25:
                    AbstractC2918k2.E(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, false);
                    break;
                case Service.BILLING_FIELD_NUMBER /* 26 */:
                    AbstractC2918k2.T(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o);
                    break;
                case 27:
                    AbstractC2918k2.O(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, q(i16));
                    break;
                case Service.MONITORING_FIELD_NUMBER /* 28 */:
                    AbstractC2918k2.F(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o);
                    break;
                case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                    AbstractC2918k2.U(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, false);
                    break;
                case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                    AbstractC2918k2.H(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, false);
                    break;
                case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                    AbstractC2918k2.P(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, false);
                    break;
                case 32:
                    AbstractC2918k2.Q(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, false);
                    break;
                case 33:
                    AbstractC2918k2.R(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, false);
                    break;
                case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                    AbstractC2918k2.S(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, false);
                    break;
                case 35:
                    AbstractC2918k2.G(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, true);
                    break;
                case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                    AbstractC2918k2.K(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, true);
                    break;
                case 37:
                    AbstractC2918k2.N(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, true);
                    break;
                case 38:
                    AbstractC2918k2.V(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, true);
                    break;
                case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                    AbstractC2918k2.M(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, true);
                    break;
                case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                    AbstractC2918k2.J(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, true);
                    break;
                case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
                    AbstractC2918k2.I(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, true);
                    break;
                case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                    AbstractC2918k2.E(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, true);
                    break;
                case 43:
                    AbstractC2918k2.U(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, true);
                    break;
                case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                    AbstractC2918k2.H(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, true);
                    break;
                case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                    AbstractC2918k2.P(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, true);
                    break;
                case 46:
                    AbstractC2918k2.Q(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, true);
                    break;
                case 47:
                    AbstractC2918k2.R(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, true);
                    break;
                case 48:
                    AbstractC2918k2.S(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, true);
                    break;
                case 49:
                    AbstractC2918k2.L(iArr2[i16], (List) unsafe.getObject(obj, j8), c0433o, q(i16));
                    break;
                case 50:
                    object2 = unsafe.getObject(obj, j8);
                    if (object2 != null) {
                        Object objP2 = p(i16);
                        this.f24349o.getClass();
                        iVar = ((J1) objP2).f24264a;
                        ((AbstractC2970z) c0433o.f8372H).getClass();
                        while (it3.hasNext()) {
                            Map.Entry entry6 = (Map.Entry) it3.next();
                            ((AbstractC2970z) c0433o.f8372H).O0(i17, 2);
                            ((AbstractC2970z) c0433o.f8372H).Q0(J1.a(iVar, entry6.getKey(), entry6.getValue()));
                            J1.b((AbstractC2970z) c0433o.f8372H, iVar, entry6.getKey(), entry6.getValue());
                        }
                    }
                    break;
                case 51:
                    if (v(i17, obj, i16)) {
                        c0433o.j(i17, ((Double) H2.f24255c.k(obj, j8)).doubleValue());
                    }
                    break;
                case 52:
                    if (v(i17, obj, i16)) {
                        c0433o.n(i17, ((Float) H2.f24255c.k(obj, j8)).floatValue());
                    }
                    break;
                case 53:
                    if (v(i17, obj, i16)) {
                        c0433o.q(i17, G(obj, j8));
                    }
                    break;
                case 54:
                    if (v(i17, obj, i16)) {
                        c0433o.x(i17, G(obj, j8));
                    }
                    break;
                case 55:
                    if (v(i17, obj, i16)) {
                        c0433o.p(i17, F(obj, j8));
                    }
                    break;
                case 56:
                    if (v(i17, obj, i16)) {
                        c0433o.m(i17, G(obj, j8));
                    }
                    break;
                case 57:
                    if (v(i17, obj, i16)) {
                        c0433o.l(i17, F(obj, j8));
                    }
                    break;
                case 58:
                    if (v(i17, obj, i16)) {
                        c0433o.h(i17, ((Boolean) H2.f24255c.k(obj, j8)).booleanValue());
                    }
                    break;
                case 59:
                    if (v(i17, obj, i16)) {
                        object3 = unsafe.getObject(obj, j8);
                        if (object3 instanceof String) {
                            ((AbstractC2970z) c0433o.f8372H).M0(i17, (String) object3);
                        } else {
                            c0433o.i(i17, (r) object3);
                        }
                    }
                    break;
                case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                    if (v(i17, obj, i16)) {
                        c0433o.r(i17, q(i16), unsafe.getObject(obj, j8));
                    }
                    break;
                case 61:
                    if (v(i17, obj, i16)) {
                        c0433o.i(i17, (r) unsafe.getObject(obj, j8));
                    }
                    break;
                case 62:
                    if (v(i17, obj, i16)) {
                        c0433o.w(i17, F(obj, j8));
                    }
                    break;
                case 63:
                    if (v(i17, obj, i16)) {
                        c0433o.k(i17, F(obj, j8));
                    }
                    break;
                case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                    if (v(i17, obj, i16)) {
                        c0433o.s(i17, F(obj, j8));
                    }
                    break;
                case 65:
                    if (v(i17, obj, i16)) {
                        c0433o.t(i17, G(obj, j8));
                    }
                    break;
                case 66:
                    if (v(i17, obj, i16)) {
                        c0433o.u(i17, F(obj, j8));
                    }
                    break;
                case 67:
                    if (v(i17, obj, i16)) {
                        c0433o.v(i17, G(obj, j8));
                    }
                    break;
                case 68:
                    if (v(i17, obj, i16)) {
                        c0433o.o(i17, q(i16), unsafe.getObject(obj, j8));
                    }
                    break;
            }
            entry3 = entry2;
            it2 = it;
            iArr = iArr2;
            i11 = length;
            i12 = i16;
            i16 = i12 + 3;
            i14 = i9;
            it = it2;
            i15 = i8;
            entry = entry3;
            iArr2 = iArr;
            length = i11;
        }
        Iterator it4 = it;
        while (entry != null) {
            p7.getClass();
            P0.e(c0433o, entry);
            entry = it4.hasNext() ? (Map.Entry) it4.next() : null;
        }
        this.f24347m.getClass();
        ((AbstractC2909i1) obj).unknownFields.g(c0433o);
    }

    @Override // com.google.protobuf.InterfaceC2914j2
    public final void a(Object obj, byte[] bArr, int i8, int i9, SG sg) {
        I(obj, bArr, i8, i9, 0, sg);
    }

    @Override // com.google.protobuf.InterfaceC2914j2
    public final void b(Object obj, Object obj2) {
        l(obj);
        obj2.getClass();
        int i8 = 0;
        while (true) {
            int[] iArr = this.f24335a;
            if (i8 >= iArr.length) {
                AbstractC2918k2.B(this.f24347m, obj, obj2);
                if (this.f24340f) {
                    this.f24348n.getClass();
                    W0 w7 = ((GeneratedMessageLite$ExtendableMessage) obj2).extensions;
                    if (w7.f24386a.isEmpty()) {
                        return;
                    }
                    ((GeneratedMessageLite$ExtendableMessage) obj).ensureExtensionsAreMutable().n(w7);
                    return;
                }
                return;
            }
            int iW = W(i8);
            long j8 = 1048575 & iW;
            int i9 = iArr[i8];
            switch (V(iW)) {
                case 0:
                    if (s(i8, obj2)) {
                        H2.o(obj, j8, H2.f24255c.g(obj2, j8));
                        Q(i8, obj);
                    }
                    break;
                case 1:
                    if (s(i8, obj2)) {
                        H2.p(obj, j8, H2.f24255c.h(obj2, j8));
                        Q(i8, obj);
                    }
                    break;
                case 2:
                    if (s(i8, obj2)) {
                        H2.r(obj, j8, H2.f24255c.j(obj2, j8));
                        Q(i8, obj);
                    }
                    break;
                case 3:
                    if (s(i8, obj2)) {
                        H2.r(obj, j8, H2.f24255c.j(obj2, j8));
                        Q(i8, obj);
                    }
                    break;
                case 4:
                    if (s(i8, obj2)) {
                        H2.q(obj, H2.f24255c.i(obj2, j8), j8);
                        Q(i8, obj);
                    }
                    break;
                case 5:
                    if (s(i8, obj2)) {
                        H2.r(obj, j8, H2.f24255c.j(obj2, j8));
                        Q(i8, obj);
                    }
                    break;
                case 6:
                    if (s(i8, obj2)) {
                        H2.q(obj, H2.f24255c.i(obj2, j8), j8);
                        Q(i8, obj);
                    }
                    break;
                case 7:
                    if (s(i8, obj2)) {
                        H2.k(obj, j8, H2.f24255c.d(obj2, j8));
                        Q(i8, obj);
                    }
                    break;
                case 8:
                    if (s(i8, obj2)) {
                        H2.s(obj, j8, H2.f24255c.k(obj2, j8));
                        Q(i8, obj);
                    }
                    break;
                case 9:
                    y(i8, obj, obj2);
                    break;
                case 10:
                    if (s(i8, obj2)) {
                        H2.s(obj, j8, H2.f24255c.k(obj2, j8));
                        Q(i8, obj);
                    }
                    break;
                case 11:
                    if (s(i8, obj2)) {
                        H2.q(obj, H2.f24255c.i(obj2, j8), j8);
                        Q(i8, obj);
                    }
                    break;
                case 12:
                    if (s(i8, obj2)) {
                        H2.q(obj, H2.f24255c.i(obj2, j8), j8);
                        Q(i8, obj);
                    }
                    break;
                case 13:
                    if (s(i8, obj2)) {
                        H2.q(obj, H2.f24255c.i(obj2, j8), j8);
                        Q(i8, obj);
                    }
                    break;
                case 14:
                    if (s(i8, obj2)) {
                        H2.r(obj, j8, H2.f24255c.j(obj2, j8));
                        Q(i8, obj);
                    }
                    break;
                case 15:
                    if (s(i8, obj2)) {
                        H2.q(obj, H2.f24255c.i(obj2, j8), j8);
                        Q(i8, obj);
                    }
                    break;
                case 16:
                    if (s(i8, obj2)) {
                        H2.r(obj, j8, H2.f24255c.j(obj2, j8));
                        Q(i8, obj);
                    }
                    break;
                case 17:
                    y(i8, obj, obj2);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case Service.BILLING_FIELD_NUMBER /* 26 */:
                case 27:
                case Service.MONITORING_FIELD_NUMBER /* 28 */:
                case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                case 32:
                case 33:
                case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                case 35:
                case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                case 37:
                case 38:
                case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
                case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                case 43:
                case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                case 46:
                case 47:
                case 48:
                case 49:
                    this.f24346l.b(obj, j8, obj2);
                    break;
                case 50:
                    Class cls = AbstractC2918k2.f24462a;
                    G2 g8 = H2.f24255c;
                    Object objK = g8.k(obj, j8);
                    Object objK2 = g8.k(obj2, j8);
                    this.f24349o.getClass();
                    H2.s(obj, j8, L1.e(objK, objK2));
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (v(i9, obj2, i8)) {
                        H2.s(obj, j8, H2.f24255c.k(obj2, j8));
                        R(i9, obj, i8);
                    }
                    break;
                case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                    z(i8, obj, obj2);
                    break;
                case 61:
                case 62:
                case 63:
                case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                case 65:
                case 66:
                case 67:
                    if (v(i9, obj2, i8)) {
                        H2.s(obj, j8, H2.f24255c.k(obj2, j8));
                        R(i9, obj, i8);
                    }
                    break;
                case 68:
                    z(i8, obj, obj2);
                    break;
            }
            i8 += 3;
        }
    }

    @Override // com.google.protobuf.InterfaceC2914j2
    public final void c(Object obj, CO co, O0 o4) throws Throwable {
        o4.getClass();
        l(obj);
        w(this.f24347m, this.f24348n, obj, co, o4);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0068  */
    /* JADX WARN: Code duplicated, block: B:27:0x006e  */
    /* JADX WARN: Code duplicated, block: B:40:0x0079 A[SYNTHETIC] */
    @Override // com.google.protobuf.InterfaceC2914j2
    public final void d(Object obj) {
        if (u(obj)) {
            if (obj instanceof AbstractC2909i1) {
                AbstractC2909i1 abstractC2909i1 = (AbstractC2909i1) obj;
                abstractC2909i1.clearMemoizedSerializedSize();
                abstractC2909i1.clearMemoizedHashCode();
                abstractC2909i1.markImmutable();
            }
            int[] iArr = this.f24335a;
            int length = iArr.length;
            for (int i8 = 0; i8 < length; i8 += 3) {
                int iW = W(i8);
                long j8 = 1048575 & iW;
                int iV = V(iW);
                Unsafe unsafe = f24334q;
                if (iV != 9) {
                    if (iV != 60 && iV != 68) {
                        switch (iV) {
                            case 17:
                                if (s(i8, obj)) {
                                    q(i8).d(unsafe.getObject(obj, j8));
                                }
                                break;
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                            case Service.BILLING_FIELD_NUMBER /* 26 */:
                            case 27:
                            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                            case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                            case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                            case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                            case 32:
                            case 33:
                            case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                            case 35:
                            case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                            case 37:
                            case 38:
                            case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                            case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                            case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
                            case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                            case 43:
                            case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                            case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                            case 46:
                            case 47:
                            case 48:
                            case 49:
                                this.f24346l.a(obj, j8);
                                break;
                            case 50:
                                Object object = unsafe.getObject(obj, j8);
                                if (object != null) {
                                    this.f24349o.getClass();
                                    L1.g(object);
                                    unsafe.putObject(obj, j8, object);
                                }
                                break;
                        }
                    } else if (v(iArr[i8], obj, i8)) {
                        q(i8).d(unsafe.getObject(obj, j8));
                    }
                } else if (s(i8, obj)) {
                    q(i8).d(unsafe.getObject(obj, j8));
                }
            }
            this.f24347m.getClass();
            B2.b(obj);
            if (this.f24340f) {
                this.f24348n.getClass();
                P0.c(obj);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:51:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:54:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:57:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:60:0x0105 A[LOOP:2: B:55:0x00f4->B:60:0x0105, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:77:0x0104 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:88:0x012b A[SYNTHETIC] */
    @Override // com.google.protobuf.InterfaceC2914j2
    public final boolean e(Object obj) {
        int i8;
        int i9;
        List list;
        InterfaceC2914j2 interfaceC2914j2Q;
        int i10;
        int i11 = 1048575;
        int i12 = 0;
        int i13 = 0;
        while (i13 < this.f24343i) {
            int i14 = this.f24342h[i13];
            int[] iArr = this.f24335a;
            int i15 = iArr[i14];
            int iW = W(i14);
            int i16 = iArr[i14 + 2];
            int i17 = i16 & 1048575;
            int i18 = 1 << (i16 >>> 20);
            if (i17 != i11) {
                if (i17 != 1048575) {
                    i12 = f24334q.getInt(obj, i17);
                }
                i9 = i12;
                i8 = i17;
            } else {
                i8 = i11;
                i9 = i12;
            }
            if ((268435456 & iW) != 0 && !t(obj, i14, i8, i9, i18)) {
                return false;
            }
            int iV = V(iW);
            if (iV == 9 || iV == 17) {
                if (t(obj, i14, i8, i9, i18)) {
                    if (!q(i14).e(H2.f24255c.k(obj, iW & 1048575))) {
                        return false;
                    }
                } else {
                    continue;
                }
            } else if (iV == 27) {
                list = (List) H2.f24255c.k(obj, iW & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    interfaceC2914j2Q = q(i14);
                    for (i10 = 0; i10 < list.size(); i10++) {
                        if (!interfaceC2914j2Q.e(list.get(i10))) {
                            return false;
                        }
                    }
                }
            } else if (iV == 60 || iV == 68) {
                if (v(i15, obj, i14)) {
                    if (!q(i14).e(H2.f24255c.k(obj, iW & 1048575))) {
                        return false;
                    }
                } else {
                    continue;
                }
            } else if (iV == 49) {
                list = (List) H2.f24255c.k(obj, iW & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    interfaceC2914j2Q = q(i14);
                    while (i10 < list.size()) {
                        if (!interfaceC2914j2Q.e(list.get(i10))) {
                            return false;
                        }
                    }
                }
            } else if (iV != 50) {
                continue;
            } else {
                Object objK = H2.f24255c.k(obj, iW & 1048575);
                this.f24349o.getClass();
                K1 k8 = (K1) objK;
                if (!k8.isEmpty() && ((S2) ((J1) p(i14)).f24264a.f27226J).f24308G == T2.MESSAGE) {
                    InterfaceC2914j2 interfaceC2914j2A = null;
                    for (Object obj2 : k8.values()) {
                        if (interfaceC2914j2A == null) {
                            interfaceC2914j2A = C2902g2.f24439c.a(obj2.getClass());
                        }
                        if (!interfaceC2914j2A.e(obj2)) {
                            return false;
                        }
                    }
                }
            }
            i13++;
            i11 = i8;
            i12 = i9;
        }
        if (this.f24340f) {
            this.f24348n.getClass();
            if (!P0.b(obj).j()) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.protobuf.InterfaceC2914j2
    public final void f(Object obj, C0433o c0433o) {
        c0433o.getClass();
        X(obj, c0433o);
    }

    @Override // com.google.protobuf.InterfaceC2914j2
    public final boolean g(Object obj, Object obj2) {
        boolean zC;
        int[] iArr = this.f24335a;
        int length = iArr.length;
        for (int i8 = 0; i8 < length; i8 += 3) {
            int iW = W(i8);
            long j8 = iW & 1048575;
            switch (V(iW)) {
                case 0:
                    if (k(i8, obj, obj2)) {
                        G2 g8 = H2.f24255c;
                        if (Double.doubleToLongBits(g8.g(obj, j8)) == Double.doubleToLongBits(g8.g(obj2, j8))) {
                            continue;
                            break;
                        }
                    }
                    return false;
                case 1:
                    if (k(i8, obj, obj2)) {
                        G2 g9 = H2.f24255c;
                        if (Float.floatToIntBits(g9.h(obj, j8)) == Float.floatToIntBits(g9.h(obj2, j8))) {
                            continue;
                            break;
                        }
                    }
                    return false;
                case 2:
                    if (k(i8, obj, obj2)) {
                        G2 g10 = H2.f24255c;
                        if (g10.j(obj, j8) == g10.j(obj2, j8)) {
                            continue;
                            break;
                        }
                    }
                    return false;
                case 3:
                    if (k(i8, obj, obj2)) {
                        G2 g11 = H2.f24255c;
                        if (g11.j(obj, j8) == g11.j(obj2, j8)) {
                            continue;
                            break;
                        }
                    }
                    return false;
                case 4:
                    if (k(i8, obj, obj2)) {
                        G2 g12 = H2.f24255c;
                        if (g12.i(obj, j8) == g12.i(obj2, j8)) {
                            continue;
                            break;
                        }
                    }
                    return false;
                case 5:
                    if (k(i8, obj, obj2)) {
                        G2 g13 = H2.f24255c;
                        if (g13.j(obj, j8) == g13.j(obj2, j8)) {
                            continue;
                            break;
                        }
                    }
                    return false;
                case 6:
                    if (k(i8, obj, obj2)) {
                        G2 g14 = H2.f24255c;
                        if (g14.i(obj, j8) == g14.i(obj2, j8)) {
                            continue;
                            break;
                        }
                    }
                    return false;
                case 7:
                    if (k(i8, obj, obj2)) {
                        G2 g15 = H2.f24255c;
                        if (g15.d(obj, j8) == g15.d(obj2, j8)) {
                            continue;
                            break;
                        }
                    }
                    return false;
                case 8:
                    if (k(i8, obj, obj2)) {
                        G2 g16 = H2.f24255c;
                        if (AbstractC2918k2.C(g16.k(obj, j8), g16.k(obj2, j8))) {
                            continue;
                            break;
                        }
                    }
                    return false;
                case 9:
                    if (k(i8, obj, obj2)) {
                        G2 g17 = H2.f24255c;
                        if (AbstractC2918k2.C(g17.k(obj, j8), g17.k(obj2, j8))) {
                            continue;
                            break;
                        }
                    }
                    return false;
                case 10:
                    if (k(i8, obj, obj2)) {
                        G2 g18 = H2.f24255c;
                        if (AbstractC2918k2.C(g18.k(obj, j8), g18.k(obj2, j8))) {
                            continue;
                            break;
                        }
                    }
                    return false;
                case 11:
                    if (k(i8, obj, obj2)) {
                        G2 g19 = H2.f24255c;
                        if (g19.i(obj, j8) == g19.i(obj2, j8)) {
                            continue;
                            break;
                        }
                    }
                    return false;
                case 12:
                    if (k(i8, obj, obj2)) {
                        G2 g20 = H2.f24255c;
                        if (g20.i(obj, j8) == g20.i(obj2, j8)) {
                            continue;
                            break;
                        }
                    }
                    return false;
                case 13:
                    if (k(i8, obj, obj2)) {
                        G2 g21 = H2.f24255c;
                        if (g21.i(obj, j8) == g21.i(obj2, j8)) {
                            continue;
                            break;
                        }
                    }
                    return false;
                case 14:
                    if (k(i8, obj, obj2)) {
                        G2 g22 = H2.f24255c;
                        if (g22.j(obj, j8) == g22.j(obj2, j8)) {
                            continue;
                            break;
                        }
                    }
                    return false;
                case 15:
                    if (k(i8, obj, obj2)) {
                        G2 g23 = H2.f24255c;
                        if (g23.i(obj, j8) == g23.i(obj2, j8)) {
                            continue;
                            break;
                        }
                    }
                    return false;
                case 16:
                    if (k(i8, obj, obj2)) {
                        G2 g24 = H2.f24255c;
                        if (g24.j(obj, j8) == g24.j(obj2, j8)) {
                            continue;
                            break;
                        }
                    }
                    return false;
                case 17:
                    if (k(i8, obj, obj2)) {
                        G2 g25 = H2.f24255c;
                        if (AbstractC2918k2.C(g25.k(obj, j8), g25.k(obj2, j8))) {
                            continue;
                            break;
                        }
                    }
                    return false;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case Service.BILLING_FIELD_NUMBER /* 26 */:
                case 27:
                case Service.MONITORING_FIELD_NUMBER /* 28 */:
                case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                case 32:
                case 33:
                case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                case 35:
                case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                case 37:
                case 38:
                case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
                case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                case 43:
                case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                case 46:
                case 47:
                case 48:
                case 49:
                    G2 g26 = H2.f24255c;
                    zC = AbstractC2918k2.C(g26.k(obj, j8), g26.k(obj2, j8));
                    break;
                case 50:
                    G2 g27 = H2.f24255c;
                    zC = AbstractC2918k2.C(g27.k(obj, j8), g27.k(obj2, j8));
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                case 61:
                case 62:
                case 63:
                case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                case 65:
                case 66:
                case 67:
                case 68:
                    long j9 = iArr[i8 + 2] & 1048575;
                    G2 g28 = H2.f24255c;
                    if (g28.i(obj, j9) != g28.i(obj2, j9) || !AbstractC2918k2.C(g28.k(obj, j8), g28.k(obj2, j8))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                default:
                    continue;
                    break;
            }
            if (!zC) {
                return false;
            }
        }
        this.f24347m.getClass();
        if (!((AbstractC2909i1) obj).unknownFields.equals(((AbstractC2909i1) obj2).unknownFields)) {
            return false;
        }
        if (!this.f24340f) {
            return true;
        }
        this.f24348n.getClass();
        return ((GeneratedMessageLite$ExtendableMessage) obj).extensions.equals(((GeneratedMessageLite$ExtendableMessage) obj2).extensions);
    }

    @Override // com.google.protobuf.InterfaceC2914j2
    public final int h(Object obj) {
        int i8;
        int i9;
        int i10;
        int iB0;
        int iZ;
        int i11;
        int iQ0;
        int iS0;
        int i12 = 1048575;
        int i13 = 1048575;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        while (true) {
            int[] iArr = this.f24335a;
            if (i15 >= iArr.length) {
                this.f24347m.getClass();
                int iC = ((AbstractC2909i1) obj).unknownFields.c() + i16;
                if (!this.f24340f) {
                    return iC;
                }
                this.f24348n.getClass();
                return iC + P0.b(obj).h();
            }
            int iW = W(i15);
            int iV = V(iW);
            int i17 = iArr[i15];
            int i18 = iArr[i15 + 2];
            int i19 = i18 & i12;
            Unsafe unsafe = f24334q;
            if (iV <= 17) {
                if (i19 != i13) {
                    i14 = i19 == i12 ? 0 : unsafe.getInt(obj, i19);
                    i13 = i19;
                }
                i8 = i13;
                i9 = i14;
                i10 = 1 << (i18 >>> 20);
            } else {
                i8 = i13;
                i9 = i14;
                i10 = 0;
            }
            long j8 = iW & i12;
            if (iV >= X0.f24390H.a()) {
                X0.f24391I.a();
            }
            switch (iV) {
                case 0:
                    if (t(obj, i15, i8, i9, i10)) {
                        iB0 = AbstractC2970z.b0(i17);
                        i16 += iB0;
                    }
                    break;
                case 1:
                    if (t(obj, i15, i8, i9, i10)) {
                        iB0 = AbstractC2970z.f0(i17);
                        i16 += iB0;
                    }
                    break;
                case 2:
                    if (t(obj, i15, i8, i9, i10)) {
                        iB0 = AbstractC2970z.j0(i17, unsafe.getLong(obj, j8));
                        i16 += iB0;
                    }
                    break;
                case 3:
                    if (t(obj, i15, i8, i9, i10)) {
                        iB0 = AbstractC2970z.t0(i17, unsafe.getLong(obj, j8));
                        i16 += iB0;
                    }
                    break;
                case 4:
                    if (t(obj, i15, i8, i9, i10)) {
                        iB0 = AbstractC2970z.h0(i17, unsafe.getInt(obj, j8));
                        i16 += iB0;
                    }
                    break;
                case 5:
                    if (t(obj, i15, i8, i9, i10)) {
                        iB0 = AbstractC2970z.e0(i17);
                        i16 += iB0;
                    }
                    break;
                case 6:
                    if (t(obj, i15, i8, i9, i10)) {
                        iB0 = AbstractC2970z.d0(i17);
                        i16 += iB0;
                    }
                    break;
                case 7:
                    if (t(obj, i15, i8, i9, i10)) {
                        iB0 = AbstractC2970z.Y(i17);
                        i16 += iB0;
                    }
                    break;
                case 8:
                    if (t(obj, i15, i8, i9, i10)) {
                        Object object = unsafe.getObject(obj, j8);
                        iZ = object instanceof r ? AbstractC2970z.Z(i17, (r) object) : AbstractC2970z.o0(i17, (String) object);
                        i16 = iZ + i16;
                    }
                    break;
                case 9:
                    if (t(obj, i15, i8, i9, i10)) {
                        iB0 = AbstractC2918k2.o(i17, q(i15), unsafe.getObject(obj, j8));
                        i16 += iB0;
                    }
                    break;
                case 10:
                    if (t(obj, i15, i8, i9, i10)) {
                        iB0 = AbstractC2970z.Z(i17, (r) unsafe.getObject(obj, j8));
                        i16 += iB0;
                    }
                    break;
                case 11:
                    if (t(obj, i15, i8, i9, i10)) {
                        iB0 = AbstractC2970z.r0(i17, unsafe.getInt(obj, j8));
                        i16 += iB0;
                    }
                    break;
                case 12:
                    if (t(obj, i15, i8, i9, i10)) {
                        iB0 = AbstractC2970z.c0(i17, unsafe.getInt(obj, j8));
                        i16 += iB0;
                    }
                    break;
                case 13:
                    if (t(obj, i15, i8, i9, i10)) {
                        iB0 = AbstractC2970z.k0(i17);
                        i16 += iB0;
                    }
                    break;
                case 14:
                    if (t(obj, i15, i8, i9, i10)) {
                        iB0 = AbstractC2970z.l0(i17);
                        i16 += iB0;
                    }
                    break;
                case 15:
                    if (t(obj, i15, i8, i9, i10)) {
                        iB0 = AbstractC2970z.m0(i17, unsafe.getInt(obj, j8));
                        i16 += iB0;
                    }
                    break;
                case 16:
                    if (t(obj, i15, i8, i9, i10)) {
                        iB0 = AbstractC2970z.n0(i17, unsafe.getLong(obj, j8));
                        i16 += iB0;
                    }
                    break;
                case 17:
                    if (t(obj, i15, i8, i9, i10)) {
                        iB0 = AbstractC2970z.g0(i17, (Q1) unsafe.getObject(obj, j8), q(i15));
                        i16 += iB0;
                    }
                    break;
                case 18:
                    iB0 = AbstractC2918k2.h(i17, (List) unsafe.getObject(obj, j8));
                    i16 += iB0;
                    break;
                case 19:
                    iB0 = AbstractC2918k2.f(i17, (List) unsafe.getObject(obj, j8));
                    i16 += iB0;
                    break;
                case 20:
                    iB0 = AbstractC2918k2.m(i17, (List) unsafe.getObject(obj, j8));
                    i16 += iB0;
                    break;
                case 21:
                    iB0 = AbstractC2918k2.x(i17, (List) unsafe.getObject(obj, j8));
                    i16 += iB0;
                    break;
                case 22:
                    iB0 = AbstractC2918k2.k(i17, (List) unsafe.getObject(obj, j8));
                    i16 += iB0;
                    break;
                case 23:
                    iB0 = AbstractC2918k2.h(i17, (List) unsafe.getObject(obj, j8));
                    i16 += iB0;
                    break;
                case 24:
                    iB0 = AbstractC2918k2.f(i17, (List) unsafe.getObject(obj, j8));
                    i16 += iB0;
                    break;
                case 25:
                    iB0 = AbstractC2918k2.a(i17, (List) unsafe.getObject(obj, j8));
                    i16 += iB0;
                    break;
                case Service.BILLING_FIELD_NUMBER /* 26 */:
                    iB0 = AbstractC2918k2.u(i17, (List) unsafe.getObject(obj, j8));
                    i16 += iB0;
                    break;
                case 27:
                    iB0 = AbstractC2918k2.p(i17, (List) unsafe.getObject(obj, j8), q(i15));
                    i16 += iB0;
                    break;
                case Service.MONITORING_FIELD_NUMBER /* 28 */:
                    iB0 = AbstractC2918k2.c(i17, (List) unsafe.getObject(obj, j8));
                    i16 += iB0;
                    break;
                case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                    iB0 = AbstractC2918k2.v(i17, (List) unsafe.getObject(obj, j8));
                    i16 += iB0;
                    break;
                case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                    iB0 = AbstractC2918k2.d(i17, (List) unsafe.getObject(obj, j8));
                    i16 += iB0;
                    break;
                case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                    iB0 = AbstractC2918k2.f(i17, (List) unsafe.getObject(obj, j8));
                    i16 += iB0;
                    break;
                case 32:
                    iB0 = AbstractC2918k2.h(i17, (List) unsafe.getObject(obj, j8));
                    i16 += iB0;
                    break;
                case 33:
                    iB0 = AbstractC2918k2.q(i17, (List) unsafe.getObject(obj, j8));
                    i16 += iB0;
                    break;
                case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                    iB0 = AbstractC2918k2.s(i17, (List) unsafe.getObject(obj, j8));
                    i16 += iB0;
                    break;
                case 35:
                    i11 = AbstractC2918k2.i((List) unsafe.getObject(obj, j8));
                    if (i11 > 0) {
                        iQ0 = AbstractC2970z.q0(i17);
                        iS0 = AbstractC2970z.s0(i11);
                        i16 += iS0 + iQ0 + i11;
                    }
                    break;
                case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                    i11 = AbstractC2918k2.g((List) unsafe.getObject(obj, j8));
                    if (i11 > 0) {
                        iQ0 = AbstractC2970z.q0(i17);
                        iS0 = AbstractC2970z.s0(i11);
                        i16 += iS0 + iQ0 + i11;
                    }
                    break;
                case 37:
                    i11 = AbstractC2918k2.n((List) unsafe.getObject(obj, j8));
                    if (i11 > 0) {
                        iQ0 = AbstractC2970z.q0(i17);
                        iS0 = AbstractC2970z.s0(i11);
                        i16 += iS0 + iQ0 + i11;
                    }
                    break;
                case 38:
                    i11 = AbstractC2918k2.y((List) unsafe.getObject(obj, j8));
                    if (i11 > 0) {
                        iQ0 = AbstractC2970z.q0(i17);
                        iS0 = AbstractC2970z.s0(i11);
                        i16 += iS0 + iQ0 + i11;
                    }
                    break;
                case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                    i11 = AbstractC2918k2.l((List) unsafe.getObject(obj, j8));
                    if (i11 > 0) {
                        iQ0 = AbstractC2970z.q0(i17);
                        iS0 = AbstractC2970z.s0(i11);
                        i16 += iS0 + iQ0 + i11;
                    }
                    break;
                case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                    i11 = AbstractC2918k2.i((List) unsafe.getObject(obj, j8));
                    if (i11 > 0) {
                        iQ0 = AbstractC2970z.q0(i17);
                        iS0 = AbstractC2970z.s0(i11);
                        i16 += iS0 + iQ0 + i11;
                    }
                    break;
                case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
                    i11 = AbstractC2918k2.g((List) unsafe.getObject(obj, j8));
                    if (i11 > 0) {
                        iQ0 = AbstractC2970z.q0(i17);
                        iS0 = AbstractC2970z.s0(i11);
                        i16 += iS0 + iQ0 + i11;
                    }
                    break;
                case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                    i11 = AbstractC2918k2.b((List) unsafe.getObject(obj, j8));
                    if (i11 > 0) {
                        iQ0 = AbstractC2970z.q0(i17);
                        iS0 = AbstractC2970z.s0(i11);
                        i16 += iS0 + iQ0 + i11;
                    }
                    break;
                case 43:
                    i11 = AbstractC2918k2.w((List) unsafe.getObject(obj, j8));
                    if (i11 > 0) {
                        iQ0 = AbstractC2970z.q0(i17);
                        iS0 = AbstractC2970z.s0(i11);
                        i16 += iS0 + iQ0 + i11;
                    }
                    break;
                case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                    i11 = AbstractC2918k2.e((List) unsafe.getObject(obj, j8));
                    if (i11 > 0) {
                        iQ0 = AbstractC2970z.q0(i17);
                        iS0 = AbstractC2970z.s0(i11);
                        i16 += iS0 + iQ0 + i11;
                    }
                    break;
                case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                    i11 = AbstractC2918k2.g((List) unsafe.getObject(obj, j8));
                    if (i11 > 0) {
                        iQ0 = AbstractC2970z.q0(i17);
                        iS0 = AbstractC2970z.s0(i11);
                        i16 += iS0 + iQ0 + i11;
                    }
                    break;
                case 46:
                    i11 = AbstractC2918k2.i((List) unsafe.getObject(obj, j8));
                    if (i11 > 0) {
                        iQ0 = AbstractC2970z.q0(i17);
                        iS0 = AbstractC2970z.s0(i11);
                        i16 += iS0 + iQ0 + i11;
                    }
                    break;
                case 47:
                    i11 = AbstractC2918k2.r((List) unsafe.getObject(obj, j8));
                    if (i11 > 0) {
                        iQ0 = AbstractC2970z.q0(i17);
                        iS0 = AbstractC2970z.s0(i11);
                        i16 += iS0 + iQ0 + i11;
                    }
                    break;
                case 48:
                    i11 = AbstractC2918k2.t((List) unsafe.getObject(obj, j8));
                    if (i11 > 0) {
                        iQ0 = AbstractC2970z.q0(i17);
                        iS0 = AbstractC2970z.s0(i11);
                        i16 += iS0 + iQ0 + i11;
                    }
                    break;
                case 49:
                    iB0 = AbstractC2918k2.j(i17, (List) unsafe.getObject(obj, j8), q(i15));
                    i16 += iB0;
                    break;
                case 50:
                    Object object2 = unsafe.getObject(obj, j8);
                    Object objP = p(i15);
                    this.f24349o.getClass();
                    iB0 = L1.c(i17, object2, objP);
                    i16 += iB0;
                    break;
                case 51:
                    if (v(i17, obj, i15)) {
                        iB0 = AbstractC2970z.b0(i17);
                        i16 += iB0;
                    }
                    break;
                case 52:
                    if (v(i17, obj, i15)) {
                        iB0 = AbstractC2970z.f0(i17);
                        i16 += iB0;
                    }
                    break;
                case 53:
                    if (v(i17, obj, i15)) {
                        iB0 = AbstractC2970z.j0(i17, G(obj, j8));
                        i16 += iB0;
                    }
                    break;
                case 54:
                    if (v(i17, obj, i15)) {
                        iB0 = AbstractC2970z.t0(i17, G(obj, j8));
                        i16 += iB0;
                    }
                    break;
                case 55:
                    if (v(i17, obj, i15)) {
                        iB0 = AbstractC2970z.h0(i17, F(obj, j8));
                        i16 += iB0;
                    }
                    break;
                case 56:
                    if (v(i17, obj, i15)) {
                        iB0 = AbstractC2970z.e0(i17);
                        i16 += iB0;
                    }
                    break;
                case 57:
                    if (v(i17, obj, i15)) {
                        iB0 = AbstractC2970z.d0(i17);
                        i16 += iB0;
                    }
                    break;
                case 58:
                    if (v(i17, obj, i15)) {
                        iB0 = AbstractC2970z.Y(i17);
                        i16 += iB0;
                    }
                    break;
                case 59:
                    if (v(i17, obj, i15)) {
                        Object object3 = unsafe.getObject(obj, j8);
                        iZ = object3 instanceof r ? AbstractC2970z.Z(i17, (r) object3) : AbstractC2970z.o0(i17, (String) object3);
                        i16 = iZ + i16;
                    }
                    break;
                case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                    if (v(i17, obj, i15)) {
                        iB0 = AbstractC2918k2.o(i17, q(i15), unsafe.getObject(obj, j8));
                        i16 += iB0;
                    }
                    break;
                case 61:
                    if (v(i17, obj, i15)) {
                        iB0 = AbstractC2970z.Z(i17, (r) unsafe.getObject(obj, j8));
                        i16 += iB0;
                    }
                    break;
                case 62:
                    if (v(i17, obj, i15)) {
                        iB0 = AbstractC2970z.r0(i17, F(obj, j8));
                        i16 += iB0;
                    }
                    break;
                case 63:
                    if (v(i17, obj, i15)) {
                        iB0 = AbstractC2970z.c0(i17, F(obj, j8));
                        i16 += iB0;
                    }
                    break;
                case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                    if (v(i17, obj, i15)) {
                        iB0 = AbstractC2970z.k0(i17);
                        i16 += iB0;
                    }
                    break;
                case 65:
                    if (v(i17, obj, i15)) {
                        iB0 = AbstractC2970z.l0(i17);
                        i16 += iB0;
                    }
                    break;
                case 66:
                    if (v(i17, obj, i15)) {
                        iB0 = AbstractC2970z.m0(i17, F(obj, j8));
                        i16 += iB0;
                    }
                    break;
                case 67:
                    if (v(i17, obj, i15)) {
                        iB0 = AbstractC2970z.n0(i17, G(obj, j8));
                        i16 += iB0;
                    }
                    break;
                case 68:
                    if (v(i17, obj, i15)) {
                        iB0 = AbstractC2970z.g0(i17, (Q1) unsafe.getObject(obj, j8), q(i15));
                        i16 += iB0;
                    }
                    break;
            }
            i15 += 3;
            i13 = i8;
            i14 = i9;
            i12 = 1048575;
        }
    }

    @Override // com.google.protobuf.InterfaceC2914j2
    public final Object i() {
        this.f24345k.getClass();
        return ((AbstractC2909i1) this.f24339e).newMutableInstance();
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00e1 A[PHI: r3
      0x00e1: PHI (r3v32 int) = (r3v10 int), (r3v33 int) binds: [B:83:0x0217, B:41:0x00df] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.protobuf.InterfaceC2914j2
    public final int j(Object obj) {
        int i8;
        int iB;
        int i9;
        int[] iArr = this.f24335a;
        int length = iArr.length;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11 += 3) {
            int iW = W(i11);
            int i12 = iArr[i11];
            long j8 = 1048575 & iW;
            int i13 = 1237;
            int iHashCode = 37;
            switch (V(iW)) {
                case 0:
                    i8 = i10 * 53;
                    iB = AbstractC2960v1.b(Double.doubleToLongBits(H2.f24255c.g(obj, j8)));
                    i10 = iB + i8;
                    break;
                case 1:
                    i8 = i10 * 53;
                    iB = Float.floatToIntBits(H2.f24255c.h(obj, j8));
                    i10 = iB + i8;
                    break;
                case 2:
                    i8 = i10 * 53;
                    iB = AbstractC2960v1.b(H2.f24255c.j(obj, j8));
                    i10 = iB + i8;
                    break;
                case 3:
                    i8 = i10 * 53;
                    iB = AbstractC2960v1.b(H2.f24255c.j(obj, j8));
                    i10 = iB + i8;
                    break;
                case 4:
                    i8 = i10 * 53;
                    iB = H2.f24255c.i(obj, j8);
                    i10 = iB + i8;
                    break;
                case 5:
                    i8 = i10 * 53;
                    iB = AbstractC2960v1.b(H2.f24255c.j(obj, j8));
                    i10 = iB + i8;
                    break;
                case 6:
                    i8 = i10 * 53;
                    iB = H2.f24255c.i(obj, j8);
                    i10 = iB + i8;
                    break;
                case 7:
                    i9 = i10 * 53;
                    boolean zD = H2.f24255c.d(obj, j8);
                    Charset charset = AbstractC2960v1.f24524a;
                    if (zD) {
                        i13 = 1231;
                    }
                    i10 = i13 + i9;
                    break;
                case 8:
                    i8 = i10 * 53;
                    iB = ((String) H2.f24255c.k(obj, j8)).hashCode();
                    i10 = iB + i8;
                    break;
                case 9:
                    Object objK = H2.f24255c.k(obj, j8);
                    if (objK != null) {
                        iHashCode = objK.hashCode();
                    }
                    i10 = (i10 * 53) + iHashCode;
                    break;
                case 10:
                    i8 = i10 * 53;
                    iB = H2.f24255c.k(obj, j8).hashCode();
                    i10 = iB + i8;
                    break;
                case 11:
                    i8 = i10 * 53;
                    iB = H2.f24255c.i(obj, j8);
                    i10 = iB + i8;
                    break;
                case 12:
                    i8 = i10 * 53;
                    iB = H2.f24255c.i(obj, j8);
                    i10 = iB + i8;
                    break;
                case 13:
                    i8 = i10 * 53;
                    iB = H2.f24255c.i(obj, j8);
                    i10 = iB + i8;
                    break;
                case 14:
                    i8 = i10 * 53;
                    iB = AbstractC2960v1.b(H2.f24255c.j(obj, j8));
                    i10 = iB + i8;
                    break;
                case 15:
                    i8 = i10 * 53;
                    iB = H2.f24255c.i(obj, j8);
                    i10 = iB + i8;
                    break;
                case 16:
                    i8 = i10 * 53;
                    iB = AbstractC2960v1.b(H2.f24255c.j(obj, j8));
                    i10 = iB + i8;
                    break;
                case 17:
                    Object objK2 = H2.f24255c.k(obj, j8);
                    if (objK2 != null) {
                        iHashCode = objK2.hashCode();
                    }
                    i10 = (i10 * 53) + iHashCode;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case Service.BILLING_FIELD_NUMBER /* 26 */:
                case 27:
                case Service.MONITORING_FIELD_NUMBER /* 28 */:
                case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                case 32:
                case 33:
                case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                case 35:
                case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                case 37:
                case 38:
                case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
                case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                case 43:
                case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                case 46:
                case 47:
                case 48:
                case 49:
                    i8 = i10 * 53;
                    iB = H2.f24255c.k(obj, j8).hashCode();
                    i10 = iB + i8;
                    break;
                case 50:
                    i8 = i10 * 53;
                    iB = H2.f24255c.k(obj, j8).hashCode();
                    i10 = iB + i8;
                    break;
                case 51:
                    if (v(i12, obj, i11)) {
                        i8 = i10 * 53;
                        iB = AbstractC2960v1.b(Double.doubleToLongBits(((Double) H2.f24255c.k(obj, j8)).doubleValue()));
                        i10 = iB + i8;
                    }
                    break;
                case 52:
                    if (v(i12, obj, i11)) {
                        i8 = i10 * 53;
                        iB = Float.floatToIntBits(((Float) H2.f24255c.k(obj, j8)).floatValue());
                        i10 = iB + i8;
                    }
                    break;
                case 53:
                    if (v(i12, obj, i11)) {
                        i8 = i10 * 53;
                        iB = AbstractC2960v1.b(G(obj, j8));
                        i10 = iB + i8;
                    }
                    break;
                case 54:
                    if (v(i12, obj, i11)) {
                        i8 = i10 * 53;
                        iB = AbstractC2960v1.b(G(obj, j8));
                        i10 = iB + i8;
                    }
                    break;
                case 55:
                    if (v(i12, obj, i11)) {
                        i8 = i10 * 53;
                        iB = F(obj, j8);
                        i10 = iB + i8;
                    }
                    break;
                case 56:
                    if (v(i12, obj, i11)) {
                        i8 = i10 * 53;
                        iB = AbstractC2960v1.b(G(obj, j8));
                        i10 = iB + i8;
                    }
                    break;
                case 57:
                    if (v(i12, obj, i11)) {
                        i8 = i10 * 53;
                        iB = F(obj, j8);
                        i10 = iB + i8;
                    }
                    break;
                case 58:
                    if (v(i12, obj, i11)) {
                        i9 = i10 * 53;
                        boolean zBooleanValue = ((Boolean) H2.f24255c.k(obj, j8)).booleanValue();
                        Charset charset2 = AbstractC2960v1.f24524a;
                        if (zBooleanValue) {
                            i13 = 1231;
                        }
                        i10 = i13 + i9;
                    }
                    break;
                case 59:
                    if (v(i12, obj, i11)) {
                        i8 = i10 * 53;
                        iB = ((String) H2.f24255c.k(obj, j8)).hashCode();
                        i10 = iB + i8;
                    }
                    break;
                case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                    if (v(i12, obj, i11)) {
                        i8 = i10 * 53;
                        iB = H2.f24255c.k(obj, j8).hashCode();
                        i10 = iB + i8;
                    }
                    break;
                case 61:
                    if (v(i12, obj, i11)) {
                        i8 = i10 * 53;
                        iB = H2.f24255c.k(obj, j8).hashCode();
                        i10 = iB + i8;
                    }
                    break;
                case 62:
                    if (v(i12, obj, i11)) {
                        i8 = i10 * 53;
                        iB = F(obj, j8);
                        i10 = iB + i8;
                    }
                    break;
                case 63:
                    if (v(i12, obj, i11)) {
                        i8 = i10 * 53;
                        iB = F(obj, j8);
                        i10 = iB + i8;
                    }
                    break;
                case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                    if (v(i12, obj, i11)) {
                        i8 = i10 * 53;
                        iB = F(obj, j8);
                        i10 = iB + i8;
                    }
                    break;
                case 65:
                    if (v(i12, obj, i11)) {
                        i8 = i10 * 53;
                        iB = AbstractC2960v1.b(G(obj, j8));
                        i10 = iB + i8;
                    }
                    break;
                case 66:
                    if (v(i12, obj, i11)) {
                        i8 = i10 * 53;
                        iB = F(obj, j8);
                        i10 = iB + i8;
                    }
                    break;
                case 67:
                    if (v(i12, obj, i11)) {
                        i8 = i10 * 53;
                        iB = AbstractC2960v1.b(G(obj, j8));
                        i10 = iB + i8;
                    }
                    break;
                case 68:
                    if (v(i12, obj, i11)) {
                        i8 = i10 * 53;
                        iB = H2.f24255c.k(obj, j8).hashCode();
                        i10 = iB + i8;
                    }
                    break;
            }
        }
        this.f24347m.getClass();
        int iHashCode2 = ((AbstractC2909i1) obj).unknownFields.hashCode() + (i10 * 53);
        if (!this.f24340f) {
            return iHashCode2;
        }
        this.f24348n.getClass();
        return (iHashCode2 * 53) + ((GeneratedMessageLite$ExtendableMessage) obj).extensions.f24386a.hashCode();
    }

    public final boolean k(int i8, Object obj, Object obj2) {
        return s(i8, obj) == s(i8, obj2);
    }

    public final Object n(Object obj, int i8, Object obj2, B2 b8, Object obj3) {
        InterfaceC2941q1 interfaceC2941q1O;
        int i9 = this.f24335a[i8];
        Object objK = H2.f24255c.k(obj, W(i8) & 1048575);
        if (objK == null || (interfaceC2941q1O = o(i8)) == null) {
            return obj2;
        }
        this.f24349o.getClass();
        p096m2.i iVar = ((J1) p(i8)).f24264a;
        Iterator it = ((K1) objK).entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (!interfaceC2941q1O.a(((Integer) entry.getValue()).intValue())) {
                if (obj2 == null) {
                    b8.getClass();
                    obj2 = B2.a(obj3);
                }
                int iA = J1.a(iVar, entry.getKey(), entry.getValue());
                byte[] bArr = new byte[iA];
                Logger logger = AbstractC2970z.f24550d;
                C2964x c2964x = new C2964x(bArr, 0, iA);
                try {
                    J1.b(c2964x, iVar, entry.getKey(), entry.getValue());
                    if (c2964x.w0() != 0) {
                        throw new IllegalStateException("Did not write as much data as expected.");
                    }
                    C2939q c2939q = new C2939q(bArr);
                    b8.getClass();
                    ((A2) obj2).f((i9 << 3) | 2, c2939q);
                    it.remove();
                } catch (IOException e8) {
                    throw new RuntimeException(e8);
                }
            }
        }
        return obj2;
    }

    public final InterfaceC2941q1 o(int i8) {
        return (InterfaceC2941q1) this.f24336b[((i8 / 3) * 2) + 1];
    }

    public final Object p(int i8) {
        return this.f24336b[(i8 / 3) * 2];
    }

    public final InterfaceC2914j2 q(int i8) {
        int i9 = (i8 / 3) * 2;
        Object[] objArr = this.f24336b;
        InterfaceC2914j2 interfaceC2914j2 = (InterfaceC2914j2) objArr[i9];
        if (interfaceC2914j2 != null) {
            return interfaceC2914j2;
        }
        InterfaceC2914j2 interfaceC2914j2A = C2902g2.f24439c.a((Class) objArr[i9 + 1]);
        objArr[i9] = interfaceC2914j2A;
        return interfaceC2914j2A;
    }

    public final boolean s(int i8, Object obj) {
        int i9 = this.f24335a[i8 + 2];
        long j8 = i9 & 1048575;
        if (j8 != 1048575) {
            return ((1 << (i9 >>> 20)) & H2.f24255c.i(obj, j8)) != 0;
        }
        int iW = W(i8);
        long j9 = iW & 1048575;
        switch (V(iW)) {
            case 0:
                return Double.doubleToRawLongBits(H2.f24255c.g(obj, j9)) != 0;
            case 1:
                return Float.floatToRawIntBits(H2.f24255c.h(obj, j9)) != 0;
            case 2:
                return H2.f24255c.j(obj, j9) != 0;
            case 3:
                return H2.f24255c.j(obj, j9) != 0;
            case 4:
                return H2.f24255c.i(obj, j9) != 0;
            case 5:
                return H2.f24255c.j(obj, j9) != 0;
            case 6:
                return H2.f24255c.i(obj, j9) != 0;
            case 7:
                return H2.f24255c.d(obj, j9);
            case 8:
                Object objK = H2.f24255c.k(obj, j9);
                if (objK instanceof String) {
                    return !((String) objK).isEmpty();
                }
                if (objK instanceof r) {
                    return !r.f24491H.equals(objK);
                }
                throw new IllegalArgumentException();
            case 9:
                return H2.f24255c.k(obj, j9) != null;
            case 10:
                return !r.f24491H.equals(H2.f24255c.k(obj, j9));
            case 11:
                return H2.f24255c.i(obj, j9) != 0;
            case 12:
                return H2.f24255c.i(obj, j9) != 0;
            case 13:
                return H2.f24255c.i(obj, j9) != 0;
            case 14:
                return H2.f24255c.j(obj, j9) != 0;
            case 15:
                return H2.f24255c.i(obj, j9) != 0;
            case 16:
                return H2.f24255c.j(obj, j9) != 0;
            case 17:
                return H2.f24255c.k(obj, j9) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    public final boolean t(Object obj, int i8, int i9, int i10, int i11) {
        if (i9 == 1048575) {
            return s(i8, obj);
        }
        return (i10 & i11) != 0;
    }

    public final boolean v(int i8, Object obj, int i9) {
        return H2.f24255c.i(obj, (long) (this.f24335a[i9 + 2] & 1048575)) == i8;
    }

    /* JADX WARN: Code duplicated, block: B:172:0x06a6 A[Catch: all -> 0x06ac, TryCatch #8 {all -> 0x06ac, blocks: (B:170:0x06a1, B:172:0x06a6, B:175:0x06ae), top: B:205:0x06a1 }] */
    /* JADX WARN: Code duplicated, block: B:179:0x06b9 A[LOOP:2: B:178:0x06b7->B:179:0x06b9, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:181:0x06cc  */
    /* JADX WARN: Code duplicated, block: B:188:0x06dc A[LOOP:3: B:187:0x06da->B:188:0x06dc, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:190:0x06ef  */
    /* JADX WARN: Code duplicated, block: B:220:0x06b4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:233:? A[RETURN, SYNTHETIC] */
    public final void w(B2 b8, P0 p7, Object obj, CO co, O0 o4) throws Throwable {
        Object objN;
        int i8;
        C2901g1 c2901g1A;
        int i9;
        Object objN2;
        int i10;
        int[] iArr = this.f24342h;
        int i11 = this.f24344j;
        int i12 = this.f24343i;
        Object objD = null;
        W0 w0EnsureExtensionsAreMutable = null;
        while (true) {
            try {
                int iB = co.b();
                try {
                    int iS = (iB < this.f24337c || iB > this.f24338d) ? -1 : S(iB, 0);
                    if (iS < 0) {
                        if (iB == Integer.MAX_VALUE) {
                            Object objN3 = objD;
                            while (i12 < i11) {
                                objN3 = n(obj, iArr[i12], objN3, b8, obj);
                                i12++;
                            }
                            if (objN3 != null) {
                                b8.getClass();
                                B2.d(obj, objN3);
                                return;
                            }
                            return;
                        }
                        if (this.f24340f) {
                            Q1 q7 = this.f24339e;
                            p7.getClass();
                            c2901g1A = o4.a(iB, q7);
                        } else {
                            c2901g1A = null;
                        }
                        if (c2901g1A != null) {
                            if (w0EnsureExtensionsAreMutable == null) {
                                try {
                                    p7.getClass();
                                    w0EnsureExtensionsAreMutable = ((GeneratedMessageLite$ExtendableMessage) obj).ensureExtensionsAreMutable();
                                } catch (Throwable th) {
                                    th = th;
                                }
                            }
                            try {
                                p7.getClass();
                                try {
                                    objD = P0.d(obj, co, c2901g1A, o4, w0EnsureExtensionsAreMutable, objD, b8);
                                } catch (Throwable th2) {
                                    th = th2;
                                    i12 = i12;
                                    objD = objD;
                                    objN = objD;
                                    for (i8 = i12; i8 < i11; i8++) {
                                        objN = n(obj, iArr[i8], objN, b8, obj);
                                    }
                                    if (objN != null) {
                                        b8.getClass();
                                        B2.d(obj, objN);
                                    }
                                    throw th;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                            }
                        } else {
                            Object obj2 = objD;
                            b8.getClass();
                            objD = obj2 == null ? B2.a(obj) : obj2;
                            if (!B2.c(0, co, objD)) {
                                Object objN4 = objD;
                                while (i12 < i11) {
                                    objN4 = n(obj, iArr[i12], objN4, b8, obj);
                                    i12++;
                                }
                                if (objN4 != null) {
                                    B2.d(obj, objN4);
                                    return;
                                }
                                return;
                            }
                        }
                        i12 = i12;
                        objN = objD;
                        while (i8 < i11) {
                            objN = n(obj, iArr[i8], objN, b8, obj);
                        }
                        if (objN != null) {
                            b8.getClass();
                            B2.d(obj, objN);
                        }
                        throw th;
                    }
                    objD = objD;
                    int iW = W(iS);
                    try {
                        int iV = V(iW);
                        D1 d6 = this.f24346l;
                        switch (iV) {
                            case 0:
                                i12 = i12;
                                long jE = E(iW);
                                co.G(1);
                                H2.o(obj, jE, ((AbstractC2961w) co.f12631d).o());
                                Q(iS, obj);
                                objD = objD;
                                i12 = i12;
                                break;
                            case 1:
                                i12 = i12;
                                long jE2 = E(iW);
                                co.G(5);
                                H2.p(obj, jE2, ((AbstractC2961w) co.f12631d).s());
                                Q(iS, obj);
                                objD = objD;
                                i12 = i12;
                                break;
                            case 2:
                                i12 = i12;
                                H2.r(obj, E(iW), co.s());
                                Q(iS, obj);
                                objD = objD;
                                i12 = i12;
                                break;
                            case 3:
                                i12 = i12;
                                long jE3 = E(iW);
                                co.G(0);
                                H2.r(obj, jE3, ((AbstractC2961w) co.f12631d).H());
                                Q(iS, obj);
                                objD = objD;
                                i12 = i12;
                                break;
                            case 4:
                                i12 = i12;
                                H2.q(obj, co.q(), E(iW));
                                Q(iS, obj);
                                objD = objD;
                                i12 = i12;
                                break;
                            case 5:
                                i12 = i12;
                                H2.r(obj, E(iW), co.n());
                                Q(iS, obj);
                                objD = objD;
                                i12 = i12;
                                break;
                            case 6:
                                i12 = i12;
                                H2.q(obj, co.l(), E(iW));
                                Q(iS, obj);
                                objD = objD;
                                i12 = i12;
                                break;
                            case 7:
                                i12 = i12;
                                long jE4 = E(iW);
                                co.G(0);
                                H2.k(obj, jE4, ((AbstractC2961w) co.f12631d).m());
                                Q(iS, obj);
                                objD = objD;
                                i12 = i12;
                                break;
                            case 8:
                                i12 = i12;
                                N(iW, co, obj);
                                Q(iS, obj);
                                objD = objD;
                                i12 = i12;
                                break;
                            case 9:
                                i12 = i12;
                                Q1 q8 = (Q1) A(iS, obj);
                                InterfaceC2914j2 interfaceC2914j2Q = q(iS);
                                co.G(2);
                                co.e(q8, interfaceC2914j2Q, o4);
                                T(iS, obj, q8);
                                objD = objD;
                                i12 = i12;
                                break;
                            case 10:
                                i12 = i12;
                                H2.s(obj, E(iW), co.g());
                                Q(iS, obj);
                                objD = objD;
                                i12 = i12;
                                break;
                            case 11:
                                i12 = i12;
                                H2.q(obj, co.A(), E(iW));
                                Q(iS, obj);
                                objD = objD;
                                i12 = i12;
                                break;
                            case 12:
                                i12 = i12;
                                co.G(0);
                                int iP = ((AbstractC2961w) co.f12631d).p();
                                InterfaceC2941q1 interfaceC2941q1O = o(iS);
                                if (interfaceC2941q1O == null || interfaceC2941q1O.a(iP)) {
                                    H2.q(obj, iP, E(iW));
                                    Q(iS, obj);
                                    objD = objD;
                                } else {
                                    objD = AbstractC2918k2.D(obj, iB, iP, objD, b8);
                                }
                                i12 = i12;
                                break;
                            case 13:
                                i12 = i12;
                                long jE5 = E(iW);
                                co.G(5);
                                H2.q(obj, ((AbstractC2961w) co.f12631d).z(), jE5);
                                Q(iS, obj);
                                objD = objD;
                                i12 = i12;
                                break;
                            case 14:
                                i12 = i12;
                                long jE6 = E(iW);
                                co.G(1);
                                H2.r(obj, jE6, ((AbstractC2961w) co.f12631d).A());
                                Q(iS, obj);
                                objD = objD;
                                i12 = i12;
                                break;
                            case 15:
                                i12 = i12;
                                long jE7 = E(iW);
                                co.G(0);
                                H2.q(obj, ((AbstractC2961w) co.f12631d).B(), jE7);
                                Q(iS, obj);
                                objD = objD;
                                i12 = i12;
                                break;
                            case 16:
                                i12 = i12;
                                long jE8 = E(iW);
                                co.G(0);
                                H2.r(obj, jE8, ((AbstractC2961w) co.f12631d).C());
                                Q(iS, obj);
                                objD = objD;
                                i12 = i12;
                                break;
                            case 17:
                                i12 = i12;
                                Q1 q9 = (Q1) A(iS, obj);
                                co.c(q9, q(iS), o4);
                                T(iS, obj, q9);
                                objD = objD;
                                i12 = i12;
                                break;
                            case 18:
                                i12 = i12;
                                co.i(d6.c(obj, E(iW)));
                                objD = objD;
                                i12 = i12;
                                break;
                            case 19:
                                i12 = i12;
                                co.p(d6.c(obj, E(iW)));
                                objD = objD;
                                i12 = i12;
                                break;
                            case 20:
                                i12 = i12;
                                co.t(d6.c(obj, E(iW)));
                                objD = objD;
                                i12 = i12;
                                break;
                            case 21:
                                i12 = i12;
                                co.C(d6.c(obj, E(iW)));
                                objD = objD;
                                i12 = i12;
                                break;
                            case 22:
                                i12 = i12;
                                co.r(d6.c(obj, E(iW)));
                                objD = objD;
                                i12 = i12;
                                break;
                            case 23:
                                i12 = i12;
                                co.o(d6.c(obj, E(iW)));
                                objD = objD;
                                i12 = i12;
                                break;
                            case 24:
                                i12 = i12;
                                co.m(d6.c(obj, E(iW)));
                                objD = objD;
                                i12 = i12;
                                break;
                            case 25:
                                i12 = i12;
                                co.f(d6.c(obj, E(iW)));
                                objD = objD;
                                i12 = i12;
                                break;
                            case Service.BILLING_FIELD_NUMBER /* 26 */:
                                i12 = i12;
                                O(iW, co, obj);
                                objD = objD;
                                i12 = i12;
                                break;
                            case 27:
                                i12 = i12;
                                M(obj, iW, co, q(iS), o4);
                                objD = objD;
                                i12 = i12;
                                break;
                            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                                i12 = i12;
                                co.h(d6.c(obj, E(iW)));
                                objD = objD;
                                i12 = i12;
                                break;
                            case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                                i12 = i12;
                                co.B(d6.c(obj, E(iW)));
                                objD = objD;
                                i12 = i12;
                                break;
                            case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                                i12 = i12;
                                List listC = d6.c(obj, E(iW));
                                co.j(listC);
                                objD = AbstractC2918k2.A(obj, iB, listC, o(iS), objD, b8);
                                i12 = i12;
                                break;
                            case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                                i12 = i12;
                                co.v(d6.c(obj, E(iW)));
                                objD = objD;
                                i12 = i12;
                                break;
                            case 32:
                                i12 = i12;
                                co.w(d6.c(obj, E(iW)));
                                objD = objD;
                                i12 = i12;
                                break;
                            case 33:
                                i12 = i12;
                                co.x(d6.c(obj, E(iW)));
                                objD = objD;
                                i12 = i12;
                                break;
                            case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                                i12 = i12;
                                co.y(d6.c(obj, E(iW)));
                                objD = objD;
                                i12 = i12;
                                break;
                            case 35:
                                i12 = i12;
                                co.i(d6.c(obj, E(iW)));
                                objD = objD;
                                i12 = i12;
                                break;
                            case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                                i12 = i12;
                                co.p(d6.c(obj, E(iW)));
                                objD = objD;
                                i12 = i12;
                                break;
                            case 37:
                                i12 = i12;
                                co.t(d6.c(obj, E(iW)));
                                objD = objD;
                                i12 = i12;
                                break;
                            case 38:
                                i12 = i12;
                                co.C(d6.c(obj, E(iW)));
                                objD = objD;
                                i12 = i12;
                                break;
                            case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                i12 = i12;
                                co.r(d6.c(obj, E(iW)));
                                objD = objD;
                                i12 = i12;
                                break;
                            case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                                i12 = i12;
                                co.o(d6.c(obj, E(iW)));
                                objD = objD;
                                i12 = i12;
                                break;
                            case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
                                i12 = i12;
                                co.m(d6.c(obj, E(iW)));
                                objD = objD;
                                i12 = i12;
                                break;
                            case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                                i12 = i12;
                                co.f(d6.c(obj, E(iW)));
                                objD = objD;
                                i12 = i12;
                                break;
                            case 43:
                                i12 = i12;
                                co.B(d6.c(obj, E(iW)));
                                objD = objD;
                                i12 = i12;
                                break;
                            case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                                i12 = i12;
                                List listC2 = d6.c(obj, E(iW));
                                co.j(listC2);
                                objD = AbstractC2918k2.A(obj, iB, listC2, o(iS), objD, b8);
                                i12 = i12;
                                break;
                            case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                                i12 = i12;
                                co.v(d6.c(obj, E(iW)));
                                objD = objD;
                                i12 = i12;
                                break;
                            case 46:
                                i12 = i12;
                                co.w(d6.c(obj, E(iW)));
                                objD = objD;
                                i12 = i12;
                                break;
                            case 47:
                                i12 = i12;
                                co.x(d6.c(obj, E(iW)));
                                objD = objD;
                                i12 = i12;
                                break;
                            case 48:
                                i12 = i12;
                                co.y(d6.c(obj, E(iW)));
                                objD = objD;
                                i12 = i12;
                                break;
                            case 49:
                                i12 = i12;
                                i9 = 0;
                                try {
                                    L(obj, E(iW), co, q(iS), o4);
                                    objD = objD;
                                } catch (C2963w1 unused) {
                                    objD = objD;
                                    try {
                                        b8.getClass();
                                        if (objD == null) {
                                            objD = B2.a(obj);
                                        }
                                        if (!B2.c(i9, co, objD)) {
                                            objN2 = objD;
                                            for (i10 = i12; i10 < i11; i10++) {
                                                objN2 = n(obj, iArr[i10], objN2, b8, obj);
                                            }
                                            if (objN2 != null) {
                                                B2.d(obj, objN2);
                                                return;
                                            }
                                            return;
                                        }
                                    } catch (Throwable th4) {
                                        th = th4;
                                    }
                                } catch (Throwable th5) {
                                    th = th5;
                                    objD = objD;
                                    objN = objD;
                                    while (i8 < i11) {
                                        objN = n(obj, iArr[i8], objN, b8, obj);
                                    }
                                    if (objN != null) {
                                        b8.getClass();
                                        B2.d(obj, objN);
                                    }
                                    throw th;
                                }
                                i12 = i12;
                                break;
                            case 50:
                                x(obj, iS, p(iS), o4, co);
                                i12 = i12;
                                objD = objD;
                                i12 = i12;
                                break;
                            case 51:
                                long jE9 = E(iW);
                                co.G(1);
                                H2.s(obj, jE9, Double.valueOf(((AbstractC2961w) co.f12631d).o()));
                                R(iB, obj, iS);
                                i12 = i12;
                                objD = objD;
                                i12 = i12;
                                break;
                            case 52:
                                long jE10 = E(iW);
                                co.G(5);
                                H2.s(obj, jE10, Float.valueOf(((AbstractC2961w) co.f12631d).s()));
                                R(iB, obj, iS);
                                i12 = i12;
                                objD = objD;
                                i12 = i12;
                                break;
                            case 53:
                                H2.s(obj, E(iW), Long.valueOf(co.s()));
                                R(iB, obj, iS);
                                i12 = i12;
                                objD = objD;
                                i12 = i12;
                                break;
                            case 54:
                                long jE11 = E(iW);
                                co.G(0);
                                H2.s(obj, jE11, Long.valueOf(((AbstractC2961w) co.f12631d).H()));
                                R(iB, obj, iS);
                                i12 = i12;
                                objD = objD;
                                i12 = i12;
                                break;
                            case 55:
                                H2.s(obj, E(iW), Integer.valueOf(co.q()));
                                R(iB, obj, iS);
                                i12 = i12;
                                objD = objD;
                                i12 = i12;
                                break;
                            case 56:
                                H2.s(obj, E(iW), Long.valueOf(co.n()));
                                R(iB, obj, iS);
                                i12 = i12;
                                objD = objD;
                                i12 = i12;
                                break;
                            case 57:
                                H2.s(obj, E(iW), Integer.valueOf(co.l()));
                                R(iB, obj, iS);
                                i12 = i12;
                                objD = objD;
                                i12 = i12;
                                break;
                            case 58:
                                long jE12 = E(iW);
                                co.G(0);
                                H2.s(obj, jE12, Boolean.valueOf(((AbstractC2961w) co.f12631d).m()));
                                R(iB, obj, iS);
                                i12 = i12;
                                objD = objD;
                                i12 = i12;
                                break;
                            case 59:
                                N(iW, co, obj);
                                R(iB, obj, iS);
                                i12 = i12;
                                objD = objD;
                                i12 = i12;
                                break;
                            case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                                Q1 q10 = (Q1) B(iB, obj, iS);
                                InterfaceC2914j2 interfaceC2914j2Q2 = q(iS);
                                co.G(2);
                                co.e(q10, interfaceC2914j2Q2, o4);
                                U(obj, iB, iS, q10);
                                i12 = i12;
                                objD = objD;
                                i12 = i12;
                                break;
                            case 61:
                                H2.s(obj, E(iW), co.g());
                                R(iB, obj, iS);
                                i12 = i12;
                                objD = objD;
                                i12 = i12;
                                break;
                            case 62:
                                H2.s(obj, E(iW), Integer.valueOf(co.A()));
                                R(iB, obj, iS);
                                i12 = i12;
                                objD = objD;
                                i12 = i12;
                                break;
                            case 63:
                                co.G(0);
                                int iP2 = ((AbstractC2961w) co.f12631d).p();
                                InterfaceC2941q1 interfaceC2941q1O2 = o(iS);
                                if (interfaceC2941q1O2 != null && !interfaceC2941q1O2.a(iP2)) {
                                    objD = AbstractC2918k2.D(obj, iB, iP2, objD, b8);
                                    i12 = i12;
                                    i12 = i12;
                                }
                                H2.s(obj, E(iW), Integer.valueOf(iP2));
                                R(iB, obj, iS);
                                i12 = i12;
                                objD = objD;
                                i12 = i12;
                                break;
                            case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                                long jE13 = E(iW);
                                co.G(5);
                                H2.s(obj, jE13, Integer.valueOf(((AbstractC2961w) co.f12631d).z()));
                                R(iB, obj, iS);
                                i12 = i12;
                                objD = objD;
                                i12 = i12;
                                break;
                            case 65:
                                long jE14 = E(iW);
                                co.G(1);
                                H2.s(obj, jE14, Long.valueOf(((AbstractC2961w) co.f12631d).A()));
                                R(iB, obj, iS);
                                i12 = i12;
                                objD = objD;
                                i12 = i12;
                                break;
                            case 66:
                                long jE15 = E(iW);
                                co.G(0);
                                H2.s(obj, jE15, Integer.valueOf(((AbstractC2961w) co.f12631d).B()));
                                R(iB, obj, iS);
                                i12 = i12;
                                objD = objD;
                                i12 = i12;
                                break;
                            case 67:
                                long jE16 = E(iW);
                                co.G(0);
                                H2.s(obj, jE16, Long.valueOf(((AbstractC2961w) co.f12631d).C()));
                                R(iB, obj, iS);
                                i12 = i12;
                                objD = objD;
                                i12 = i12;
                                break;
                            case 68:
                                Q1 q11 = (Q1) B(iB, obj, iS);
                                co.c(q11, q(iS), o4);
                                U(obj, iB, iS, q11);
                                i12 = i12;
                                objD = objD;
                                i12 = i12;
                                break;
                            default:
                                if (objD == null) {
                                    try {
                                        b8.getClass();
                                        objD = B2.a(obj);
                                    } catch (C2963w1 unused2) {
                                        objD = objD;
                                        i9 = 0;
                                        b8.getClass();
                                        if (objD == null) {
                                            objD = B2.a(obj);
                                        }
                                        if (!B2.c(i9, co, objD)) {
                                            objN2 = objD;
                                            while (i10 < i11) {
                                                objN2 = n(obj, iArr[i10], objN2, b8, obj);
                                            }
                                            if (objN2 != null) {
                                                B2.d(obj, objN2);
                                                return;
                                            }
                                            return;
                                        }
                                        i12 = i12;
                                    }
                                } else {
                                    objD = objD;
                                }
                                try {
                                    b8.getClass();
                                    if (!B2.c(0, co, objD)) {
                                        Object objN5 = objD;
                                        while (i12 < i11) {
                                            objN5 = n(obj, iArr[i12], objN5, b8, obj);
                                            i12++;
                                        }
                                        if (objN5 != null) {
                                            B2.d(obj, objN5);
                                            return;
                                        }
                                        return;
                                    }
                                    i12 = i12;
                                } catch (C2963w1 unused3) {
                                    i9 = 0;
                                    b8.getClass();
                                    if (objD == null) {
                                        objD = B2.a(obj);
                                    }
                                    if (!B2.c(i9, co, objD)) {
                                        objN2 = objD;
                                        while (i10 < i11) {
                                            objN2 = n(obj, iArr[i10], objN2, b8, obj);
                                        }
                                        if (objN2 != null) {
                                            B2.d(obj, objN2);
                                            return;
                                        }
                                        return;
                                    }
                                }
                                i12 = i12;
                                break;
                        }
                    } catch (C2963w1 unused4) {
                        i12 = i12;
                        i9 = 0;
                    }
                } catch (Throwable th6) {
                    th = th6;
                }
            } catch (Throwable th7) {
                th = th7;
            }
        }
    }

    public final void x(Object obj, int i8, Object obj2, O0 o4, CO co) throws C2963w1 {
        long jW = W(i8) & 1048575;
        Object objK = H2.f24255c.k(obj, jW);
        L1 l4 = this.f24349o;
        if (objK == null) {
            l4.getClass();
            objK = K1.f24267H.c();
            H2.s(obj, jW, objK);
        } else {
            l4.getClass();
            if (L1.d(objK)) {
                K1 k1C = K1.f24267H.c();
                L1.e(k1C, objK);
                H2.s(obj, jW, k1C);
                objK = k1C;
            }
        }
        l4.getClass();
        K1 k8 = (K1) objK;
        p096m2.i iVar = ((J1) obj2).f24264a;
        co.G(2);
        int iL = ((AbstractC2961w) co.f12631d).l(((AbstractC2961w) co.f12631d).G());
        Object objK2 = iVar.f27225I;
        Object objK3 = iVar.f27227K;
        while (true) {
            try {
                int iB = co.b();
                if (iB == Integer.MAX_VALUE || ((AbstractC2961w) co.f12631d).g()) {
                    break;
                }
                if (iB == 1) {
                    objK2 = co.k((S2) iVar.f27224H, null, null);
                } else if (iB != 2) {
                    try {
                        if (!co.I()) {
                            throw new C2966x1("Unable to parse map entry.");
                        }
                    } catch (C2963w1 unused) {
                        if (!co.I()) {
                            throw new C2966x1("Unable to parse map entry.");
                        }
                    }
                } else {
                    objK3 = co.k((S2) iVar.f27226J, iVar.f27227K.getClass(), o4);
                }
            } catch (Throwable th) {
                ((AbstractC2961w) co.f12631d).k(iL);
                throw th;
            }
        }
        k8.put(objK2, objK3);
        ((AbstractC2961w) co.f12631d).k(iL);
    }

    public final void y(int i8, Object obj, Object obj2) {
        if (s(i8, obj2)) {
            long jW = W(i8) & 1048575;
            Unsafe unsafe = f24334q;
            Object object = unsafe.getObject(obj2, jW);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.f24335a[i8] + " is present but null: " + obj2);
            }
            InterfaceC2914j2 interfaceC2914j2Q = q(i8);
            if (!s(i8, obj)) {
                if (u(object)) {
                    Object objI = interfaceC2914j2Q.i();
                    interfaceC2914j2Q.b(objI, object);
                    unsafe.putObject(obj, jW, objI);
                } else {
                    unsafe.putObject(obj, jW, object);
                }
                Q(i8, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, jW);
            if (!u(object2)) {
                Object objI2 = interfaceC2914j2Q.i();
                interfaceC2914j2Q.b(objI2, object2);
                unsafe.putObject(obj, jW, objI2);
                object2 = objI2;
            }
            interfaceC2914j2Q.b(object2, object);
        }
    }

    public final void z(int i8, Object obj, Object obj2) {
        int[] iArr = this.f24335a;
        int i9 = iArr[i8];
        if (v(i9, obj2, i8)) {
            long jW = W(i8) & 1048575;
            Unsafe unsafe = f24334q;
            Object object = unsafe.getObject(obj2, jW);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + iArr[i8] + " is present but null: " + obj2);
            }
            InterfaceC2914j2 interfaceC2914j2Q = q(i8);
            if (!v(i9, obj, i8)) {
                if (u(object)) {
                    Object objI = interfaceC2914j2Q.i();
                    interfaceC2914j2Q.b(objI, object);
                    unsafe.putObject(obj, jW, objI);
                } else {
                    unsafe.putObject(obj, jW, object);
                }
                R(i9, obj, i8);
                return;
            }
            Object object2 = unsafe.getObject(obj, jW);
            if (!u(object2)) {
                Object objI2 = interfaceC2914j2Q.i();
                interfaceC2914j2Q.b(objI2, object2);
                unsafe.putObject(obj, jW, objI2);
                object2 = objI2;
            }
            interfaceC2914j2Q.b(object2, object);
        }
    }
}
