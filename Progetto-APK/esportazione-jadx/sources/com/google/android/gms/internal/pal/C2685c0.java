package com.google.android.gms.internal.pal;

import A0.C0022w;
import com.google.android.gms.internal.ads.AbstractC2090uc;
import com.google.api.Service;
import com.google.protobuf.DescriptorProtos$FileOptions;
import com.google.protobuf.DescriptorProtos$MethodOptions;
import java.lang.reflect.Field;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.List;
import okhttp3.HttpUrl;
import okhttp3.internal.ws.WebSocketProtocol;
import org.eclipse.paho.client.mqttv3.MqttConnectOptions;
import org.videolan.libvlc.interfaces.IMediaList;
import sun.misc.Unsafe;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.c0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2685c0 implements InterfaceC2749k0 {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int[] f23741m = new int[0];

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final Unsafe f23742n = AbstractC2836v0.j();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f23743a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object[] f23744b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f23745c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f23746d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AbstractC2740j f23747e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f23748f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f23749g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int[] f23750h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f23751i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f23752j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final S f23753k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final C2789p0 f23754l;

    public C2685c0(int[] iArr, Object[] objArr, int i8, int i9, AbstractC2740j abstractC2740j, boolean z7, int[] iArr2, int i10, int i11, S s7, C2789p0 c2789p0, C2859y c2859y, Y y7) {
        this.f23743a = iArr;
        this.f23744b = objArr;
        this.f23745c = i8;
        this.f23746d = i9;
        this.f23748f = abstractC2740j instanceof D;
        this.f23749g = z7;
        this.f23750h = iArr2;
        this.f23751i = i10;
        this.f23752j = i11;
        this.f23753k = s7;
        this.f23754l = c2789p0;
        this.f23747e = abstractC2740j;
    }

    public static int C(Object obj, long j8) {
        return ((Integer) AbstractC2836v0.f24034c.f(obj, j8)).intValue();
    }

    public static int e(int i8) {
        return (i8 >>> 20) & 255;
    }

    public static long g(Object obj, long j8) {
        return ((Long) AbstractC2836v0.f24034c.f(obj, j8)).longValue();
    }

    public static Field l(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String string = Arrays.toString(declaredFields);
            StringBuilder sbQ = com.google.protobuf.U2.q("Field ", str, " for ", name, " not found. Known fields are ");
            sbQ.append(string);
            throw new RuntimeException(sbQ.toString());
        }
    }

    public static final void v(int i8, Object obj, C2843w c2843w) throws I0.u {
        if (!(obj instanceof String)) {
            c2843w.f(i8, (r) obj);
        } else {
            c2843w.f24050a.R0(i8, (String) obj);
        }
    }

    public static C2781o0 x(Object obj) {
        D d6 = (D) obj;
        C2781o0 c2781o0 = d6.zzc;
        if (c2781o0 != C2781o0.f23969f) {
            return c2781o0;
        }
        C2781o0 c2781o0B = C2781o0.b();
        d6.zzc = c2781o0B;
        return c2781o0B;
    }

    public static C2685c0 y(InterfaceC2669a0 interfaceC2669a0, S s7, C2789p0 c2789p0, C2859y c2859y, Y y7) {
        if (interfaceC2669a0 instanceof C2741j0) {
            return z((C2741j0) interfaceC2669a0, s7, c2789p0, c2859y, y7);
        }
        A0.O.I(interfaceC2669a0);
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:123:0x026d  */
    /* JADX WARN: Code duplicated, block: B:124:0x0270  */
    /* JADX WARN: Code duplicated, block: B:127:0x0287  */
    /* JADX WARN: Code duplicated, block: B:128:0x028a  */
    /* JADX WARN: Code duplicated, block: B:176:0x038d  */
    public static C2685c0 z(C2741j0 c2741j0, S s7, C2789p0 c2789p0, C2859y c2859y, Y y7) {
        int i8;
        int iCharAt;
        int iCharAt2;
        int iCharAt3;
        int[] iArr;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        char cCharAt;
        int i14;
        char cCharAt2;
        int i15;
        char cCharAt3;
        int i16;
        char cCharAt4;
        int i17;
        char cCharAt5;
        int i18;
        char cCharAt6;
        int i19;
        char cCharAt7;
        int i20;
        char cCharAt8;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int iObjectFieldOffset;
        int iObjectFieldOffset2;
        int i28;
        Field fieldL;
        int i29;
        char cCharAt9;
        int i30;
        int i31;
        int i32;
        int i33;
        Object obj;
        Field fieldL2;
        int i34;
        Object obj2;
        Field fieldL3;
        int i35;
        char cCharAt10;
        int i36;
        char cCharAt11;
        int i37;
        char cCharAt12;
        int i38;
        char cCharAt13;
        boolean z7 = c2741j0.b() == 2;
        String strC = c2741j0.c();
        int length = strC.length();
        int i39 = 55296;
        if (strC.charAt(0) >= 55296) {
            int i40 = 1;
            while (true) {
                i8 = i40 + 1;
                if (strC.charAt(i40) < 55296) {
                    break;
                }
                i40 = i8;
            }
        } else {
            i8 = 1;
        }
        int i41 = i8 + 1;
        int iCharAt4 = strC.charAt(i8);
        if (iCharAt4 >= 55296) {
            int i42 = iCharAt4 & 8191;
            int i43 = 13;
            while (true) {
                i38 = i41 + 1;
                cCharAt13 = strC.charAt(i41);
                if (cCharAt13 < 55296) {
                    break;
                }
                i42 |= (cCharAt13 & 8191) << i43;
                i43 += 13;
                i41 = i38;
            }
            iCharAt4 = i42 | (cCharAt13 << i43);
            i41 = i38;
        }
        if (iCharAt4 == 0) {
            iArr = f23741m;
            i10 = 0;
            iCharAt = 0;
            iCharAt2 = 0;
            iCharAt3 = 0;
            i12 = 0;
            i11 = 0;
            i9 = 0;
        } else {
            int i44 = i41 + 1;
            int iCharAt5 = strC.charAt(i41);
            if (iCharAt5 >= 55296) {
                int i45 = iCharAt5 & 8191;
                int i46 = 13;
                while (true) {
                    i20 = i44 + 1;
                    cCharAt8 = strC.charAt(i44);
                    if (cCharAt8 < 55296) {
                        break;
                    }
                    i45 |= (cCharAt8 & 8191) << i46;
                    i46 += 13;
                    i44 = i20;
                }
                iCharAt5 = i45 | (cCharAt8 << i46);
                i44 = i20;
            }
            int i47 = i44 + 1;
            int iCharAt6 = strC.charAt(i44);
            if (iCharAt6 >= 55296) {
                int i48 = iCharAt6 & 8191;
                int i49 = 13;
                while (true) {
                    i19 = i47 + 1;
                    cCharAt7 = strC.charAt(i47);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i48 |= (cCharAt7 & 8191) << i49;
                    i49 += 13;
                    i47 = i19;
                }
                iCharAt6 = i48 | (cCharAt7 << i49);
                i47 = i19;
            }
            int i50 = i47 + 1;
            iCharAt = strC.charAt(i47);
            if (iCharAt >= 55296) {
                int i51 = iCharAt & 8191;
                int i52 = 13;
                while (true) {
                    i18 = i50 + 1;
                    cCharAt6 = strC.charAt(i50);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i51 |= (cCharAt6 & 8191) << i52;
                    i52 += 13;
                    i50 = i18;
                }
                iCharAt = i51 | (cCharAt6 << i52);
                i50 = i18;
            }
            int i53 = i50 + 1;
            iCharAt2 = strC.charAt(i50);
            if (iCharAt2 >= 55296) {
                int i54 = iCharAt2 & 8191;
                int i55 = 13;
                while (true) {
                    i17 = i53 + 1;
                    cCharAt5 = strC.charAt(i53);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i54 |= (cCharAt5 & 8191) << i55;
                    i55 += 13;
                    i53 = i17;
                }
                iCharAt2 = i54 | (cCharAt5 << i55);
                i53 = i17;
            }
            int i56 = i53 + 1;
            iCharAt3 = strC.charAt(i53);
            if (iCharAt3 >= 55296) {
                int i57 = iCharAt3 & 8191;
                int i58 = 13;
                while (true) {
                    i16 = i56 + 1;
                    cCharAt4 = strC.charAt(i56);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i57 |= (cCharAt4 & 8191) << i58;
                    i58 += 13;
                    i56 = i16;
                }
                iCharAt3 = i57 | (cCharAt4 << i58);
                i56 = i16;
            }
            int i59 = i56 + 1;
            int iCharAt7 = strC.charAt(i56);
            if (iCharAt7 >= 55296) {
                int i60 = iCharAt7 & 8191;
                int i61 = 13;
                while (true) {
                    i15 = i59 + 1;
                    cCharAt3 = strC.charAt(i59);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i60 |= (cCharAt3 & 8191) << i61;
                    i61 += 13;
                    i59 = i15;
                }
                iCharAt7 = i60 | (cCharAt3 << i61);
                i59 = i15;
            }
            int i62 = i59 + 1;
            int iCharAt8 = strC.charAt(i59);
            if (iCharAt8 >= 55296) {
                int i63 = iCharAt8 & 8191;
                int i64 = 13;
                while (true) {
                    i14 = i62 + 1;
                    cCharAt2 = strC.charAt(i62);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i63 |= (cCharAt2 & 8191) << i64;
                    i64 += 13;
                    i62 = i14;
                }
                iCharAt8 = i63 | (cCharAt2 << i64);
                i62 = i14;
            }
            int i65 = i62 + 1;
            int iCharAt9 = strC.charAt(i62);
            if (iCharAt9 >= 55296) {
                int i66 = iCharAt9 & 8191;
                int i67 = 13;
                while (true) {
                    i13 = i65 + 1;
                    cCharAt = strC.charAt(i65);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i66 |= (cCharAt & 8191) << i67;
                    i67 += 13;
                    i65 = i13;
                }
                iCharAt9 = i66 | (cCharAt << i67);
                i65 = i13;
            }
            iArr = new int[iCharAt9 + iCharAt7 + iCharAt8];
            i9 = iCharAt5 + iCharAt5 + iCharAt6;
            i10 = iCharAt5;
            i41 = i65;
            int i68 = iCharAt9;
            i11 = iCharAt7;
            i12 = i68;
        }
        Object[] objArrD = c2741j0.d();
        Class<?> cls = c2741j0.a().getClass();
        int[] iArr2 = new int[iCharAt3 * 3];
        Object[] objArr = new Object[iCharAt3 + iCharAt3];
        int i69 = i11 + i12;
        int i70 = i12;
        int i71 = i69;
        int i72 = 0;
        int i73 = 0;
        while (i41 < length) {
            int i74 = i41 + 1;
            int iCharAt10 = strC.charAt(i41);
            if (iCharAt10 >= i39) {
                int i75 = iCharAt10 & 8191;
                int i76 = i74;
                int i77 = 13;
                while (true) {
                    i37 = i76 + 1;
                    cCharAt12 = strC.charAt(i76);
                    i21 = length;
                    if (cCharAt12 < 55296) {
                        break;
                    }
                    i75 |= (cCharAt12 & 8191) << i77;
                    i77 += 13;
                    i76 = i37;
                    length = i21;
                }
                iCharAt10 = i75 | (cCharAt12 << i77);
                i22 = i37;
            } else {
                i21 = length;
                i22 = i74;
            }
            int i78 = i22 + 1;
            int iCharAt11 = strC.charAt(i22);
            if (iCharAt11 >= 55296) {
                int i79 = iCharAt11 & 8191;
                int i80 = i78;
                int i81 = 13;
                while (true) {
                    i36 = i80 + 1;
                    cCharAt11 = strC.charAt(i80);
                    i23 = i69;
                    if (cCharAt11 < 55296) {
                        break;
                    }
                    i79 |= (cCharAt11 & 8191) << i81;
                    i81 += 13;
                    i80 = i36;
                    i69 = i23;
                }
                iCharAt11 = i79 | (cCharAt11 << i81);
                i24 = i36;
            } else {
                i23 = i69;
                i24 = i78;
            }
            int i82 = iCharAt11 & 255;
            int i83 = i12;
            if ((iCharAt11 & 1024) != 0) {
                iArr[i73] = i72;
                i73++;
            }
            Unsafe unsafe = f23742n;
            int i84 = iCharAt2;
            if (i82 >= 51) {
                int i85 = i24 + 1;
                int iCharAt12 = strC.charAt(i24);
                if (iCharAt12 >= 55296) {
                    int i86 = iCharAt12 & 8191;
                    int i87 = i85;
                    int i88 = 13;
                    while (true) {
                        i35 = i87 + 1;
                        cCharAt10 = strC.charAt(i87);
                        i25 = iCharAt;
                        if (cCharAt10 < 55296) {
                            break;
                        }
                        i86 |= (cCharAt10 & 8191) << i88;
                        i88 += 13;
                        i87 = i35;
                        iCharAt = i25;
                    }
                    iCharAt12 = i86 | (cCharAt10 << i88);
                    i31 = i35;
                } else {
                    i25 = iCharAt;
                    i31 = i85;
                }
                int i89 = i82 - 51;
                int i90 = i31;
                if (i89 == 9 || i89 == 17) {
                    int i91 = i72 / 3;
                    i32 = i9 + 1;
                    objArr[i91 + i91 + 1] = objArrD[i9];
                } else {
                    if (i89 == 12 && !z7) {
                        int i92 = i72 / 3;
                        i32 = i9 + 1;
                        objArr[i92 + i92 + 1] = objArrD[i9];
                    }
                    i33 = iCharAt12 + iCharAt12;
                    obj = objArrD[i33];
                    if (obj instanceof Field) {
                        fieldL2 = (Field) obj;
                    } else {
                        fieldL2 = l(cls, (String) obj);
                        objArrD[i33] = fieldL2;
                    }
                    int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldL2);
                    i34 = i33 + 1;
                    obj2 = objArrD[i34];
                    if (obj2 instanceof Field) {
                        fieldL3 = (Field) obj2;
                    } else {
                        fieldL3 = l(cls, (String) obj2);
                        objArrD[i34] = fieldL3;
                    }
                    int iObjectFieldOffset4 = (int) unsafe.objectFieldOffset(fieldL3);
                    i26 = i9;
                    iObjectFieldOffset = iObjectFieldOffset3;
                    z7 = z7;
                    objArr = objArr;
                    iObjectFieldOffset2 = iObjectFieldOffset4;
                    i28 = 0;
                    i27 = iCharAt10;
                    i41 = i90;
                }
                i9 = i32;
                i33 = iCharAt12 + iCharAt12;
                obj = objArrD[i33];
                if (obj instanceof Field) {
                    fieldL2 = (Field) obj;
                } else {
                    fieldL2 = l(cls, (String) obj);
                    objArrD[i33] = fieldL2;
                }
                int iObjectFieldOffset5 = (int) unsafe.objectFieldOffset(fieldL2);
                i34 = i33 + 1;
                obj2 = objArrD[i34];
                if (obj2 instanceof Field) {
                    fieldL3 = (Field) obj2;
                } else {
                    fieldL3 = l(cls, (String) obj2);
                    objArrD[i34] = fieldL3;
                }
                int iObjectFieldOffset6 = (int) unsafe.objectFieldOffset(fieldL3);
                i26 = i9;
                iObjectFieldOffset = iObjectFieldOffset5;
                z7 = z7;
                objArr = objArr;
                iObjectFieldOffset2 = iObjectFieldOffset6;
                i28 = 0;
                i27 = iCharAt10;
                i41 = i90;
            } else {
                i25 = iCharAt;
                i26 = i9 + 1;
                Field fieldL4 = l(cls, (String) objArrD[i9]);
                i27 = iCharAt10;
                if (i82 == 9 || i82 == 17) {
                    z7 = z7;
                    objArr[p000a.r.t(i72, 3, 1)] = fieldL4.getType();
                } else {
                    if (i82 == 27 || i82 == 49) {
                        int i93 = i72 / 3;
                        i30 = i9 + 2;
                        objArr[i93 + i93 + 1] = objArrD[i26];
                    } else {
                        if (i82 == 12 || i82 == 30 || i82 == 44) {
                            if (!z7) {
                                int i94 = i72 / 3;
                                i30 = i9 + 2;
                                objArr[i94 + i94 + 1] = objArrD[i26];
                            }
                        } else if (i82 == 50) {
                            int i95 = i70 + 1;
                            iArr[i70] = i72;
                            int i96 = i72 / 3;
                            int i97 = i96 + i96;
                            int i98 = i9 + 2;
                            objArr[i97] = objArrD[i26];
                            if ((iCharAt11 & 2048) != 0) {
                                i26 = i9 + 3;
                                objArr[i97 + 1] = objArrD[i98];
                                i70 = i95;
                                z7 = z7;
                            } else {
                                i70 = i95;
                                i26 = i98;
                                z7 = z7;
                            }
                            iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldL4);
                            iObjectFieldOffset2 = 1048575;
                            if ((iCharAt11 & 4096) == 4096 || i82 > 17) {
                                i41 = i24;
                                i28 = 0;
                            } else {
                                i41 = i24 + 1;
                                int iCharAt13 = strC.charAt(i24);
                                if (iCharAt13 >= 55296) {
                                    int i99 = iCharAt13 & 8191;
                                    int i100 = 13;
                                    while (true) {
                                        i29 = i41 + 1;
                                        cCharAt9 = strC.charAt(i41);
                                        if (cCharAt9 < 55296) {
                                            break;
                                        }
                                        i99 |= (cCharAt9 & 8191) << i100;
                                        i100 += 13;
                                        i41 = i29;
                                    }
                                    iCharAt13 = i99 | (cCharAt9 << i100);
                                    i41 = i29;
                                }
                                int i101 = (iCharAt13 / 32) + i10 + i10;
                                Object obj3 = objArrD[i101];
                                if (obj3 instanceof Field) {
                                    fieldL = (Field) obj3;
                                } else {
                                    fieldL = l(cls, (String) obj3);
                                    objArrD[i101] = fieldL;
                                }
                                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldL);
                                i28 = iCharAt13 % 32;
                            }
                            if (i82 >= 18 && i82 <= 49) {
                                iArr[i71] = iObjectFieldOffset;
                                i71++;
                            }
                        }
                        z7 = z7;
                    }
                    i26 = i30;
                }
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldL4);
                iObjectFieldOffset2 = 1048575;
                if ((iCharAt11 & 4096) == 4096) {
                    i41 = i24;
                    i28 = 0;
                } else {
                    i41 = i24;
                    i28 = 0;
                }
                if (i82 >= 18) {
                    iArr[i71] = iObjectFieldOffset;
                    i71++;
                }
            }
            int i102 = i72 + 1;
            iArr2[i72] = i27;
            int i103 = i72 + 2;
            String str = strC;
            iArr2[i102] = ((iCharAt11 & IMediaList.Event.ItemAdded) != 0 ? 536870912 : 0) | ((iCharAt11 & 256) != 0 ? 268435456 : 0) | (i82 << 20) | iObjectFieldOffset;
            i72 += 3;
            iArr2[i103] = (i28 << 20) | iObjectFieldOffset2;
            objArr = objArr;
            i12 = i83;
            strC = str;
            length = i21;
            i69 = i23;
            z7 = z7;
            iCharAt2 = i84;
            i39 = 55296;
            i9 = i26;
            iCharAt = i25;
        }
        return new C2685c0(iArr2, objArr, iCharAt, iCharAt2, c2741j0.a(), z7, iArr, i12, i69, s7, c2789p0, c2859y, y7);
    }

    public final int A(Object obj) {
        int i8;
        int iI0;
        int iJ0;
        int iI1;
        int iX0;
        int iL;
        int i9 = 1048575;
        int i10 = 0;
        int iA = 0;
        int i11 = 0;
        int i12 = 1048575;
        while (true) {
            int[] iArr = this.f23743a;
            if (i10 >= iArr.length) {
                this.f23754l.getClass();
                return C2789p0.a(C2789p0.b(obj)) + iA;
            }
            int iF = f(i10);
            int i13 = iArr[i10];
            int iE = e(iF);
            Unsafe unsafe = f23742n;
            if (iE <= 17) {
                int i14 = iArr[i10 + 2];
                int i15 = i14 & i9;
                i8 = 1 << (i14 >>> 20);
                if (i15 != i12) {
                    i11 = unsafe.getInt(obj, i15);
                    i12 = i15;
                }
            } else {
                i8 = 0;
            }
            long j8 = iF & i9;
            switch (iE) {
                case 0:
                    if ((i11 & i8) != 0) {
                        iA = AbstractC2090uc.A(i13 << 3, 8, iA);
                    }
                    break;
                case 1:
                    if ((i11 & i8) != 0) {
                        iA = AbstractC2090uc.A(i13 << 3, 4, iA);
                    }
                    break;
                case 2:
                    if ((i8 & i11) != 0) {
                        long j9 = unsafe.getLong(obj, j8);
                        iI0 = C2835v.I0(i13 << 3);
                        iJ0 = C2835v.J0(j9);
                        iL = iJ0 + iI0;
                        iA += iL;
                    }
                    break;
                case 3:
                    if ((i8 & i11) != 0) {
                        long j10 = unsafe.getLong(obj, j8);
                        iI0 = C2835v.I0(i13 << 3);
                        iJ0 = C2835v.J0(j10);
                        iL = iJ0 + iI0;
                        iA += iL;
                    }
                    break;
                case 4:
                    if ((i8 & i11) != 0) {
                        int i16 = unsafe.getInt(obj, j8);
                        iI1 = C2835v.I0(i13 << 3);
                        iX0 = C2835v.X0(i16);
                        iL = iX0 + iI1;
                        iA += iL;
                    }
                    break;
                case 5:
                    if ((i11 & i8) != 0) {
                        iA = AbstractC2090uc.A(i13 << 3, 8, iA);
                    }
                    break;
                case 6:
                    if ((i11 & i8) != 0) {
                        iA = AbstractC2090uc.A(i13 << 3, 4, iA);
                    }
                    break;
                case 7:
                    if ((i11 & i8) != 0) {
                        iA = AbstractC2090uc.A(i13 << 3, 1, iA);
                    }
                    break;
                case 8:
                    if ((i8 & i11) != 0) {
                        Object object = unsafe.getObject(obj, j8);
                        if (!(object instanceof r)) {
                            iI1 = C2835v.I0(i13 << 3);
                            iX0 = C2835v.Y0((String) object);
                            iL = iX0 + iI1;
                            iA += iL;
                        } else {
                            int iI2 = C2835v.I0(i13 << 3);
                            int i17 = ((r) object).i();
                            iA = AbstractC2090uc.x(i17, i17, iI2, iA);
                        }
                    }
                    break;
                case 9:
                    if ((i8 & i11) != 0) {
                        iL = AbstractC2757l0.L(i13, i(i10), unsafe.getObject(obj, j8));
                        iA += iL;
                    }
                    break;
                case 10:
                    if ((i8 & i11) != 0) {
                        r rVar = (r) unsafe.getObject(obj, j8);
                        int iI3 = C2835v.I0(i13 << 3);
                        int i18 = rVar.i();
                        iA = AbstractC2090uc.x(i18, i18, iI3, iA);
                    }
                    break;
                case 11:
                    if ((i8 & i11) != 0) {
                        iA = AbstractC2090uc.A(unsafe.getInt(obj, j8), C2835v.I0(i13 << 3), iA);
                    }
                    break;
                case 12:
                    if ((i8 & i11) != 0) {
                        int i19 = unsafe.getInt(obj, j8);
                        iI1 = C2835v.I0(i13 << 3);
                        iX0 = C2835v.X0(i19);
                        iL = iX0 + iI1;
                        iA += iL;
                    }
                    break;
                case 13:
                    if ((i11 & i8) != 0) {
                        iA = AbstractC2090uc.A(i13 << 3, 4, iA);
                    }
                    break;
                case 14:
                    if ((i11 & i8) != 0) {
                        iA = AbstractC2090uc.A(i13 << 3, 8, iA);
                    }
                    break;
                case 15:
                    if ((i8 & i11) != 0) {
                        int i20 = unsafe.getInt(obj, j8);
                        iA = AbstractC2090uc.A((i20 >> 31) ^ (i20 + i20), C2835v.I0(i13 << 3), iA);
                    }
                    break;
                case 16:
                    if ((i8 & i11) != 0) {
                        long j11 = unsafe.getLong(obj, j8);
                        iI0 = C2835v.I0(i13 << 3);
                        iJ0 = C2835v.J0((j11 >> 63) ^ (j11 + j11));
                        iL = iJ0 + iI0;
                        iA += iL;
                    }
                    break;
                case 17:
                    if ((i8 & i11) != 0) {
                        iL = C2835v.W0(i13, (AbstractC2740j) unsafe.getObject(obj, j8), i(i10));
                        iA += iL;
                    }
                    break;
                case 18:
                    iL = AbstractC2757l0.E(i13, (List) unsafe.getObject(obj, j8));
                    iA += iL;
                    break;
                case 19:
                    iL = AbstractC2757l0.C(i13, (List) unsafe.getObject(obj, j8));
                    iA += iL;
                    break;
                case 20:
                    iL = AbstractC2757l0.J(i13, (List) unsafe.getObject(obj, j8));
                    iA += iL;
                    break;
                case 21:
                    iL = AbstractC2757l0.U(i13, (List) unsafe.getObject(obj, j8));
                    iA += iL;
                    break;
                case 22:
                    iL = AbstractC2757l0.H(i13, (List) unsafe.getObject(obj, j8));
                    iA += iL;
                    break;
                case 23:
                    iL = AbstractC2757l0.E(i13, (List) unsafe.getObject(obj, j8));
                    iA += iL;
                    break;
                case 24:
                    iL = AbstractC2757l0.C(i13, (List) unsafe.getObject(obj, j8));
                    iA += iL;
                    break;
                case 25:
                    iL = AbstractC2757l0.w(i13, (List) unsafe.getObject(obj, j8));
                    iA += iL;
                    break;
                case Service.BILLING_FIELD_NUMBER /* 26 */:
                    iL = AbstractC2757l0.R(i13, (List) unsafe.getObject(obj, j8));
                    iA += iL;
                    break;
                case 27:
                    iL = AbstractC2757l0.M(i13, (List) unsafe.getObject(obj, j8), i(i10));
                    iA += iL;
                    break;
                case Service.MONITORING_FIELD_NUMBER /* 28 */:
                    iL = AbstractC2757l0.z(i13, (List) unsafe.getObject(obj, j8));
                    iA += iL;
                    break;
                case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                    iL = AbstractC2757l0.S(i13, (List) unsafe.getObject(obj, j8));
                    iA += iL;
                    break;
                case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                    iL = AbstractC2757l0.A(i13, (List) unsafe.getObject(obj, j8));
                    iA += iL;
                    break;
                case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                    iL = AbstractC2757l0.C(i13, (List) unsafe.getObject(obj, j8));
                    iA += iL;
                    break;
                case 32:
                    iL = AbstractC2757l0.E(i13, (List) unsafe.getObject(obj, j8));
                    iA += iL;
                    break;
                case 33:
                    iL = AbstractC2757l0.N(i13, (List) unsafe.getObject(obj, j8));
                    iA += iL;
                    break;
                case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                    iL = AbstractC2757l0.P(i13, (List) unsafe.getObject(obj, j8));
                    iA += iL;
                    break;
                case 35:
                    int iF2 = AbstractC2757l0.F((List) unsafe.getObject(obj, j8));
                    if (iF2 > 0) {
                        iA = AbstractC2090uc.x(iF2, C2835v.Z0(i13), iF2, iA);
                    }
                    break;
                case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                    int iD = AbstractC2757l0.D((List) unsafe.getObject(obj, j8));
                    if (iD > 0) {
                        iA = AbstractC2090uc.x(iD, C2835v.Z0(i13), iD, iA);
                    }
                    break;
                case 37:
                    int iK = AbstractC2757l0.K((List) unsafe.getObject(obj, j8));
                    if (iK > 0) {
                        iA = AbstractC2090uc.x(iK, C2835v.Z0(i13), iK, iA);
                    }
                    break;
                case 38:
                    int iV = AbstractC2757l0.V((List) unsafe.getObject(obj, j8));
                    if (iV > 0) {
                        iA = AbstractC2090uc.x(iV, C2835v.Z0(i13), iV, iA);
                    }
                    break;
                case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                    int I7 = AbstractC2757l0.I((List) unsafe.getObject(obj, j8));
                    if (I7 > 0) {
                        iA = AbstractC2090uc.x(I7, C2835v.Z0(i13), I7, iA);
                    }
                    break;
                case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                    int iF3 = AbstractC2757l0.F((List) unsafe.getObject(obj, j8));
                    if (iF3 > 0) {
                        iA = AbstractC2090uc.x(iF3, C2835v.Z0(i13), iF3, iA);
                    }
                    break;
                case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
                    int iD2 = AbstractC2757l0.D((List) unsafe.getObject(obj, j8));
                    if (iD2 > 0) {
                        iA = AbstractC2090uc.x(iD2, C2835v.Z0(i13), iD2, iA);
                    }
                    break;
                case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                    int iY = AbstractC2757l0.y((List) unsafe.getObject(obj, j8));
                    if (iY > 0) {
                        iA = AbstractC2090uc.x(iY, C2835v.Z0(i13), iY, iA);
                    }
                    break;
                case 43:
                    int iT = AbstractC2757l0.T((List) unsafe.getObject(obj, j8));
                    if (iT > 0) {
                        iA = AbstractC2090uc.x(iT, C2835v.Z0(i13), iT, iA);
                    }
                    break;
                case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                    int iB = AbstractC2757l0.B((List) unsafe.getObject(obj, j8));
                    if (iB > 0) {
                        iA = AbstractC2090uc.x(iB, C2835v.Z0(i13), iB, iA);
                    }
                    break;
                case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                    int iD3 = AbstractC2757l0.D((List) unsafe.getObject(obj, j8));
                    if (iD3 > 0) {
                        iA = AbstractC2090uc.x(iD3, C2835v.Z0(i13), iD3, iA);
                    }
                    break;
                case 46:
                    int iF4 = AbstractC2757l0.F((List) unsafe.getObject(obj, j8));
                    if (iF4 > 0) {
                        iA = AbstractC2090uc.x(iF4, C2835v.Z0(i13), iF4, iA);
                    }
                    break;
                case 47:
                    int iO = AbstractC2757l0.O((List) unsafe.getObject(obj, j8));
                    if (iO > 0) {
                        iA = AbstractC2090uc.x(iO, C2835v.Z0(i13), iO, iA);
                    }
                    break;
                case 48:
                    int iQ = AbstractC2757l0.Q((List) unsafe.getObject(obj, j8));
                    if (iQ > 0) {
                        iA = AbstractC2090uc.x(iQ, C2835v.Z0(i13), iQ, iA);
                    }
                    break;
                case 49:
                    iL = AbstractC2757l0.G(i13, (List) unsafe.getObject(obj, j8), i(i10));
                    iA += iL;
                    break;
                case 50:
                    Y.a(unsafe.getObject(obj, j8), k(i10));
                    break;
                case 51:
                    if (u(i13, obj, i10)) {
                        iA = AbstractC2090uc.A(i13 << 3, 8, iA);
                    }
                    break;
                case 52:
                    if (u(i13, obj, i10)) {
                        iA = AbstractC2090uc.A(i13 << 3, 4, iA);
                    }
                    break;
                case 53:
                    if (u(i13, obj, i10)) {
                        long jG = g(obj, j8);
                        iI0 = C2835v.I0(i13 << 3);
                        iJ0 = C2835v.J0(jG);
                        iL = iJ0 + iI0;
                        iA += iL;
                    }
                    break;
                case 54:
                    if (u(i13, obj, i10)) {
                        long jG2 = g(obj, j8);
                        iI0 = C2835v.I0(i13 << 3);
                        iJ0 = C2835v.J0(jG2);
                        iL = iJ0 + iI0;
                        iA += iL;
                    }
                    break;
                case 55:
                    if (u(i13, obj, i10)) {
                        int iC = C(obj, j8);
                        iI1 = C2835v.I0(i13 << 3);
                        iX0 = C2835v.X0(iC);
                        iL = iX0 + iI1;
                        iA += iL;
                    }
                    break;
                case 56:
                    if (u(i13, obj, i10)) {
                        iA = AbstractC2090uc.A(i13 << 3, 8, iA);
                    }
                    break;
                case 57:
                    if (u(i13, obj, i10)) {
                        iA = AbstractC2090uc.A(i13 << 3, 4, iA);
                    }
                    break;
                case 58:
                    if (u(i13, obj, i10)) {
                        iA = AbstractC2090uc.A(i13 << 3, 1, iA);
                    }
                    break;
                case 59:
                    if (u(i13, obj, i10)) {
                        Object object2 = unsafe.getObject(obj, j8);
                        if (!(object2 instanceof r)) {
                            iI1 = C2835v.I0(i13 << 3);
                            iX0 = C2835v.Y0((String) object2);
                            iL = iX0 + iI1;
                            iA += iL;
                        } else {
                            int iI4 = C2835v.I0(i13 << 3);
                            int i21 = ((r) object2).i();
                            iA = AbstractC2090uc.x(i21, i21, iI4, iA);
                        }
                    }
                    break;
                case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                    if (u(i13, obj, i10)) {
                        iL = AbstractC2757l0.L(i13, i(i10), unsafe.getObject(obj, j8));
                        iA += iL;
                    }
                    break;
                case 61:
                    if (u(i13, obj, i10)) {
                        r rVar2 = (r) unsafe.getObject(obj, j8);
                        int iI5 = C2835v.I0(i13 << 3);
                        int i22 = rVar2.i();
                        iA = AbstractC2090uc.x(i22, i22, iI5, iA);
                    }
                    break;
                case 62:
                    if (u(i13, obj, i10)) {
                        iA = AbstractC2090uc.A(C(obj, j8), C2835v.I0(i13 << 3), iA);
                    }
                    break;
                case 63:
                    if (u(i13, obj, i10)) {
                        int iC2 = C(obj, j8);
                        iI1 = C2835v.I0(i13 << 3);
                        iX0 = C2835v.X0(iC2);
                        iL = iX0 + iI1;
                        iA += iL;
                    }
                    break;
                case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                    if (u(i13, obj, i10)) {
                        iA = AbstractC2090uc.A(i13 << 3, 4, iA);
                    }
                    break;
                case 65:
                    if (u(i13, obj, i10)) {
                        iA = AbstractC2090uc.A(i13 << 3, 8, iA);
                    }
                    break;
                case 66:
                    if (u(i13, obj, i10)) {
                        int iC3 = C(obj, j8);
                        iA = AbstractC2090uc.A((iC3 >> 31) ^ (iC3 + iC3), C2835v.I0(i13 << 3), iA);
                    }
                    break;
                case 67:
                    if (u(i13, obj, i10)) {
                        long jG3 = g(obj, j8);
                        iI0 = C2835v.I0(i13 << 3);
                        iJ0 = C2835v.J0((jG3 >> 63) ^ (jG3 + jG3));
                        iL = iJ0 + iI0;
                        iA += iL;
                    }
                    break;
                case 68:
                    if (u(i13, obj, i10)) {
                        iL = C2835v.W0(i13, (AbstractC2740j) unsafe.getObject(obj, j8), i(i10));
                        iA += iL;
                    }
                    break;
            }
            i10 += 3;
            i9 = 1048575;
        }
    }

    public final int B(Object obj) {
        int iI0;
        int iJ0;
        int iI1;
        int iX0;
        int iL;
        int iI2;
        int iJ1;
        int i8 = 0;
        int iA = 0;
        while (true) {
            int[] iArr = this.f23743a;
            if (i8 >= iArr.length) {
                this.f23754l.getClass();
                return C2789p0.a(C2789p0.b(obj)) + iA;
            }
            int iF = f(i8);
            int iE = e(iF);
            int i9 = iArr[i8];
            long j8 = iF & 1048575;
            if (iE >= A.f23419H.zza() && iE <= A.f23420I.zza()) {
                int i10 = iArr[i8 + 2];
            }
            Unsafe unsafe = f23742n;
            switch (iE) {
                case 0:
                    if (t(i8, obj)) {
                        iA = AbstractC2090uc.A(i9 << 3, 8, iA);
                    }
                    break;
                case 1:
                    if (t(i8, obj)) {
                        iA = AbstractC2090uc.A(i9 << 3, 4, iA);
                    }
                    break;
                case 2:
                    if (t(i8, obj)) {
                        long jG = AbstractC2836v0.g(obj, j8);
                        iI0 = C2835v.I0(i9 << 3);
                        iJ0 = C2835v.J0(jG);
                        iL = iJ0 + iI0;
                        iA = iL + iA;
                    }
                    break;
                case 3:
                    if (t(i8, obj)) {
                        long jG2 = AbstractC2836v0.g(obj, j8);
                        iI0 = C2835v.I0(i9 << 3);
                        iJ0 = C2835v.J0(jG2);
                        iL = iJ0 + iI0;
                        iA = iL + iA;
                    }
                    break;
                case 4:
                    if (t(i8, obj)) {
                        int iF2 = AbstractC2836v0.f(obj, j8);
                        iI1 = C2835v.I0(i9 << 3);
                        iX0 = C2835v.X0(iF2);
                        iL = iX0 + iI1;
                        iA = iL + iA;
                    }
                    break;
                case 5:
                    if (t(i8, obj)) {
                        iA = AbstractC2090uc.A(i9 << 3, 8, iA);
                    }
                    break;
                case 6:
                    if (t(i8, obj)) {
                        iA = AbstractC2090uc.A(i9 << 3, 4, iA);
                    }
                    break;
                case 7:
                    if (t(i8, obj)) {
                        iA = AbstractC2090uc.A(i9 << 3, 1, iA);
                    }
                    break;
                case 8:
                    if (t(i8, obj)) {
                        Object objI = AbstractC2836v0.i(obj, j8);
                        if (!(objI instanceof r)) {
                            iI1 = C2835v.I0(i9 << 3);
                            iX0 = C2835v.Y0((String) objI);
                            iL = iX0 + iI1;
                            iA = iL + iA;
                        } else {
                            int iI3 = C2835v.I0(i9 << 3);
                            int i11 = ((r) objI).i();
                            iA = AbstractC2090uc.x(i11, i11, iI3, iA);
                        }
                    }
                    break;
                case 9:
                    if (t(i8, obj)) {
                        iL = AbstractC2757l0.L(i9, i(i8), AbstractC2836v0.i(obj, j8));
                        iA = iL + iA;
                    }
                    break;
                case 10:
                    if (t(i8, obj)) {
                        r rVar = (r) AbstractC2836v0.i(obj, j8);
                        int iI4 = C2835v.I0(i9 << 3);
                        int i12 = rVar.i();
                        iA = AbstractC2090uc.x(i12, i12, iI4, iA);
                    }
                    break;
                case 11:
                    if (t(i8, obj)) {
                        iA = AbstractC2090uc.A(AbstractC2836v0.f(obj, j8), C2835v.I0(i9 << 3), iA);
                    }
                    break;
                case 12:
                    if (t(i8, obj)) {
                        int iF3 = AbstractC2836v0.f(obj, j8);
                        iI1 = C2835v.I0(i9 << 3);
                        iX0 = C2835v.X0(iF3);
                        iL = iX0 + iI1;
                        iA = iL + iA;
                    }
                    break;
                case 13:
                    if (t(i8, obj)) {
                        iA = AbstractC2090uc.A(i9 << 3, 4, iA);
                    }
                    break;
                case 14:
                    if (t(i8, obj)) {
                        iA = AbstractC2090uc.A(i9 << 3, 8, iA);
                    }
                    break;
                case 15:
                    if (t(i8, obj)) {
                        int iF4 = AbstractC2836v0.f(obj, j8);
                        iA = AbstractC2090uc.A((iF4 >> 31) ^ (iF4 + iF4), C2835v.I0(i9 << 3), iA);
                    }
                    break;
                case 16:
                    if (t(i8, obj)) {
                        long jG3 = AbstractC2836v0.g(obj, j8);
                        iI2 = C2835v.I0(i9 << 3);
                        iJ1 = C2835v.J0((jG3 + jG3) ^ (jG3 >> 63));
                        iA = iJ1 + iI2 + iA;
                    }
                    break;
                case 17:
                    if (t(i8, obj)) {
                        iL = C2835v.W0(i9, (AbstractC2740j) AbstractC2836v0.i(obj, j8), i(i8));
                        iA = iL + iA;
                    }
                    break;
                case 18:
                    iL = AbstractC2757l0.E(i9, (List) AbstractC2836v0.i(obj, j8));
                    iA = iL + iA;
                    break;
                case 19:
                    iL = AbstractC2757l0.C(i9, (List) AbstractC2836v0.i(obj, j8));
                    iA = iL + iA;
                    break;
                case 20:
                    iL = AbstractC2757l0.J(i9, (List) AbstractC2836v0.i(obj, j8));
                    iA = iL + iA;
                    break;
                case 21:
                    iL = AbstractC2757l0.U(i9, (List) AbstractC2836v0.i(obj, j8));
                    iA = iL + iA;
                    break;
                case 22:
                    iL = AbstractC2757l0.H(i9, (List) AbstractC2836v0.i(obj, j8));
                    iA = iL + iA;
                    break;
                case 23:
                    iL = AbstractC2757l0.E(i9, (List) AbstractC2836v0.i(obj, j8));
                    iA = iL + iA;
                    break;
                case 24:
                    iL = AbstractC2757l0.C(i9, (List) AbstractC2836v0.i(obj, j8));
                    iA = iL + iA;
                    break;
                case 25:
                    iL = AbstractC2757l0.w(i9, (List) AbstractC2836v0.i(obj, j8));
                    iA = iL + iA;
                    break;
                case Service.BILLING_FIELD_NUMBER /* 26 */:
                    iL = AbstractC2757l0.R(i9, (List) AbstractC2836v0.i(obj, j8));
                    iA = iL + iA;
                    break;
                case 27:
                    iL = AbstractC2757l0.M(i9, (List) AbstractC2836v0.i(obj, j8), i(i8));
                    iA = iL + iA;
                    break;
                case Service.MONITORING_FIELD_NUMBER /* 28 */:
                    iL = AbstractC2757l0.z(i9, (List) AbstractC2836v0.i(obj, j8));
                    iA = iL + iA;
                    break;
                case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                    iL = AbstractC2757l0.S(i9, (List) AbstractC2836v0.i(obj, j8));
                    iA = iL + iA;
                    break;
                case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                    iL = AbstractC2757l0.A(i9, (List) AbstractC2836v0.i(obj, j8));
                    iA = iL + iA;
                    break;
                case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                    iL = AbstractC2757l0.C(i9, (List) AbstractC2836v0.i(obj, j8));
                    iA = iL + iA;
                    break;
                case 32:
                    iL = AbstractC2757l0.E(i9, (List) AbstractC2836v0.i(obj, j8));
                    iA = iL + iA;
                    break;
                case 33:
                    iL = AbstractC2757l0.N(i9, (List) AbstractC2836v0.i(obj, j8));
                    iA = iL + iA;
                    break;
                case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                    iL = AbstractC2757l0.P(i9, (List) AbstractC2836v0.i(obj, j8));
                    iA = iL + iA;
                    break;
                case 35:
                    int iF5 = AbstractC2757l0.F((List) unsafe.getObject(obj, j8));
                    if (iF5 > 0) {
                        iA = AbstractC2090uc.x(iF5, C2835v.Z0(i9), iF5, iA);
                    }
                    break;
                case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                    int iD = AbstractC2757l0.D((List) unsafe.getObject(obj, j8));
                    if (iD > 0) {
                        iA = AbstractC2090uc.x(iD, C2835v.Z0(i9), iD, iA);
                    }
                    break;
                case 37:
                    int iK = AbstractC2757l0.K((List) unsafe.getObject(obj, j8));
                    if (iK > 0) {
                        iA = AbstractC2090uc.x(iK, C2835v.Z0(i9), iK, iA);
                    }
                    break;
                case 38:
                    int iV = AbstractC2757l0.V((List) unsafe.getObject(obj, j8));
                    if (iV > 0) {
                        iA = AbstractC2090uc.x(iV, C2835v.Z0(i9), iV, iA);
                    }
                    break;
                case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                    int I7 = AbstractC2757l0.I((List) unsafe.getObject(obj, j8));
                    if (I7 > 0) {
                        iA = AbstractC2090uc.x(I7, C2835v.Z0(i9), I7, iA);
                    }
                    break;
                case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                    int iF6 = AbstractC2757l0.F((List) unsafe.getObject(obj, j8));
                    if (iF6 > 0) {
                        iA = AbstractC2090uc.x(iF6, C2835v.Z0(i9), iF6, iA);
                    }
                    break;
                case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
                    int iD2 = AbstractC2757l0.D((List) unsafe.getObject(obj, j8));
                    if (iD2 > 0) {
                        iA = AbstractC2090uc.x(iD2, C2835v.Z0(i9), iD2, iA);
                    }
                    break;
                case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                    int iY = AbstractC2757l0.y((List) unsafe.getObject(obj, j8));
                    if (iY > 0) {
                        iA = AbstractC2090uc.x(iY, C2835v.Z0(i9), iY, iA);
                    }
                    break;
                case 43:
                    int iT = AbstractC2757l0.T((List) unsafe.getObject(obj, j8));
                    if (iT > 0) {
                        iA = AbstractC2090uc.x(iT, C2835v.Z0(i9), iT, iA);
                    }
                    break;
                case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                    int iB = AbstractC2757l0.B((List) unsafe.getObject(obj, j8));
                    if (iB > 0) {
                        iA = AbstractC2090uc.x(iB, C2835v.Z0(i9), iB, iA);
                    }
                    break;
                case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                    int iD3 = AbstractC2757l0.D((List) unsafe.getObject(obj, j8));
                    if (iD3 > 0) {
                        iA = AbstractC2090uc.x(iD3, C2835v.Z0(i9), iD3, iA);
                    }
                    break;
                case 46:
                    int iF7 = AbstractC2757l0.F((List) unsafe.getObject(obj, j8));
                    if (iF7 > 0) {
                        iA = AbstractC2090uc.x(iF7, C2835v.Z0(i9), iF7, iA);
                    }
                    break;
                case 47:
                    int iO = AbstractC2757l0.O((List) unsafe.getObject(obj, j8));
                    if (iO > 0) {
                        iA = AbstractC2090uc.x(iO, C2835v.Z0(i9), iO, iA);
                    }
                    break;
                case 48:
                    int iQ = AbstractC2757l0.Q((List) unsafe.getObject(obj, j8));
                    if (iQ > 0) {
                        iA = AbstractC2090uc.x(iQ, C2835v.Z0(i9), iQ, iA);
                    }
                    break;
                case 49:
                    iL = AbstractC2757l0.G(i9, (List) AbstractC2836v0.i(obj, j8), i(i8));
                    iA = iL + iA;
                    break;
                case 50:
                    Y.a(AbstractC2836v0.i(obj, j8), k(i8));
                    break;
                case 51:
                    if (u(i9, obj, i8)) {
                        iA = AbstractC2090uc.A(i9 << 3, 8, iA);
                    }
                    break;
                case 52:
                    if (u(i9, obj, i8)) {
                        iA = AbstractC2090uc.A(i9 << 3, 4, iA);
                    }
                    break;
                case 53:
                    if (u(i9, obj, i8)) {
                        long jG4 = g(obj, j8);
                        iI0 = C2835v.I0(i9 << 3);
                        iJ0 = C2835v.J0(jG4);
                        iL = iJ0 + iI0;
                        iA = iL + iA;
                    }
                    break;
                case 54:
                    if (u(i9, obj, i8)) {
                        long jG5 = g(obj, j8);
                        iI0 = C2835v.I0(i9 << 3);
                        iJ0 = C2835v.J0(jG5);
                        iL = iJ0 + iI0;
                        iA = iL + iA;
                    }
                    break;
                case 55:
                    if (u(i9, obj, i8)) {
                        int iC = C(obj, j8);
                        iI1 = C2835v.I0(i9 << 3);
                        iX0 = C2835v.X0(iC);
                        iL = iX0 + iI1;
                        iA = iL + iA;
                    }
                    break;
                case 56:
                    if (u(i9, obj, i8)) {
                        iA = AbstractC2090uc.A(i9 << 3, 8, iA);
                    }
                    break;
                case 57:
                    if (u(i9, obj, i8)) {
                        iA = AbstractC2090uc.A(i9 << 3, 4, iA);
                    }
                    break;
                case 58:
                    if (u(i9, obj, i8)) {
                        iA = AbstractC2090uc.A(i9 << 3, 1, iA);
                    }
                    break;
                case 59:
                    if (u(i9, obj, i8)) {
                        Object objI2 = AbstractC2836v0.i(obj, j8);
                        if (!(objI2 instanceof r)) {
                            iI1 = C2835v.I0(i9 << 3);
                            iX0 = C2835v.Y0((String) objI2);
                            iL = iX0 + iI1;
                            iA = iL + iA;
                        } else {
                            int iI5 = C2835v.I0(i9 << 3);
                            int i13 = ((r) objI2).i();
                            iA = AbstractC2090uc.x(i13, i13, iI5, iA);
                        }
                    }
                    break;
                case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                    if (u(i9, obj, i8)) {
                        iL = AbstractC2757l0.L(i9, i(i8), AbstractC2836v0.i(obj, j8));
                        iA = iL + iA;
                    }
                    break;
                case 61:
                    if (u(i9, obj, i8)) {
                        r rVar2 = (r) AbstractC2836v0.i(obj, j8);
                        int iI6 = C2835v.I0(i9 << 3);
                        int i14 = rVar2.i();
                        iA = AbstractC2090uc.x(i14, i14, iI6, iA);
                    }
                    break;
                case 62:
                    if (u(i9, obj, i8)) {
                        iA = AbstractC2090uc.A(C(obj, j8), C2835v.I0(i9 << 3), iA);
                    }
                    break;
                case 63:
                    if (u(i9, obj, i8)) {
                        int iC2 = C(obj, j8);
                        iI1 = C2835v.I0(i9 << 3);
                        iX0 = C2835v.X0(iC2);
                        iL = iX0 + iI1;
                        iA = iL + iA;
                    }
                    break;
                case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                    if (u(i9, obj, i8)) {
                        iA = AbstractC2090uc.A(i9 << 3, 4, iA);
                    }
                    break;
                case 65:
                    if (u(i9, obj, i8)) {
                        iA = AbstractC2090uc.A(i9 << 3, 8, iA);
                    }
                    break;
                case 66:
                    if (u(i9, obj, i8)) {
                        int iC3 = C(obj, j8);
                        iA = AbstractC2090uc.A((iC3 >> 31) ^ (iC3 + iC3), C2835v.I0(i9 << 3), iA);
                    }
                    break;
                case 67:
                    if (u(i9, obj, i8)) {
                        long jG6 = g(obj, j8);
                        iI2 = C2835v.I0(i9 << 3);
                        iJ1 = C2835v.J0((jG6 + jG6) ^ (jG6 >> 63));
                        iA = iJ1 + iI2 + iA;
                    }
                    break;
                case 68:
                    if (u(i9, obj, i8)) {
                        iL = C2835v.W0(i9, (AbstractC2740j) AbstractC2836v0.i(obj, j8), i(i8));
                        iA = iL + iA;
                    }
                    break;
            }
            i8 += 3;
        }
    }

    public final void D(Object obj, int i8, long j8) {
        Object objK = k(i8);
        Unsafe unsafe = f23742n;
        Object object = unsafe.getObject(obj, j8);
        if (Y.b(object)) {
            W wB = W.a().b();
            Y.c(wB, object);
            unsafe.putObject(obj, j8, wB);
        }
        A0.O.I(objK);
        throw null;
    }

    public final int E(Object obj, byte[] bArr, int i8, int i9, int i10, int i11, int i12, int i13, int i14, long j8, int i15, C0022w c0022w) throws L {
        long j9 = this.f23743a[i15 + 2] & 1048575;
        Unsafe unsafe = f23742n;
        switch (i14) {
            case 51:
                if (i12 != 1) {
                    return i8;
                }
                unsafe.putObject(obj, j8, Double.valueOf(Double.longBitsToDouble(AbstractC2864y4.H0(bArr, i8))));
                unsafe.putInt(obj, j9, i11);
                return i8 + 8;
            case 52:
                if (i12 != 5) {
                    return i8;
                }
                unsafe.putObject(obj, j8, Float.valueOf(Float.intBitsToFloat(AbstractC2864y4.D(bArr, i8))));
                unsafe.putInt(obj, j9, i11);
                return i8 + 4;
            case 53:
            case 54:
                if (i12 != 0) {
                    return i8;
                }
                int iF0 = AbstractC2864y4.F0(bArr, i8, c0022w);
                unsafe.putObject(obj, j8, Long.valueOf(c0022w.f219a));
                unsafe.putInt(obj, j9, i11);
                return iF0;
            case 55:
            case 62:
                if (i12 != 0) {
                    return i8;
                }
                int iY0 = AbstractC2864y4.y0(bArr, i8, c0022w);
                unsafe.putObject(obj, j8, Integer.valueOf(c0022w.f220b));
                unsafe.putInt(obj, j9, i11);
                return iY0;
            case 56:
            case 65:
                if (i12 != 1) {
                    return i8;
                }
                unsafe.putObject(obj, j8, Long.valueOf(AbstractC2864y4.H0(bArr, i8)));
                unsafe.putInt(obj, j9, i11);
                return i8 + 8;
            case 57:
            case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                if (i12 != 5) {
                    return i8;
                }
                unsafe.putObject(obj, j8, Integer.valueOf(AbstractC2864y4.D(bArr, i8)));
                unsafe.putInt(obj, j9, i11);
                return i8 + 4;
            case 58:
                if (i12 != 0) {
                    return i8;
                }
                int iF1 = AbstractC2864y4.F0(bArr, i8, c0022w);
                unsafe.putObject(obj, j8, Boolean.valueOf(c0022w.f219a != 0));
                unsafe.putInt(obj, j9, i11);
                return iF1;
            case 59:
                if (i12 != 2) {
                    return i8;
                }
                int iY1 = AbstractC2864y4.y0(bArr, i8, c0022w);
                int i16 = c0022w.f220b;
                if (i16 == 0) {
                    unsafe.putObject(obj, j8, HttpUrl.FRAGMENT_ENCODE_SET);
                } else {
                    if ((i13 & 536870912) != 0 && !AbstractC2852x0.e(iY1, bArr, iY1 + i16)) {
                        throw L.b();
                    }
                    unsafe.putObject(obj, j8, new String(bArr, iY1, i16, J.f23560a));
                    iY1 += i16;
                }
                unsafe.putInt(obj, j9, i11);
                return iY1;
            case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                if (i12 != 2) {
                    return i8;
                }
                int iA0 = AbstractC2864y4.a0(i(i15), bArr, i8, i9, c0022w);
                Object object = unsafe.getInt(obj, j9) == i11 ? unsafe.getObject(obj, j8) : null;
                if (object == null) {
                    unsafe.putObject(obj, j8, c0022w.f221c);
                } else {
                    unsafe.putObject(obj, j8, J.b(object, c0022w.f221c));
                }
                unsafe.putInt(obj, j9, i11);
                return iA0;
            case 61:
                if (i12 != 2) {
                    return i8;
                }
                int iC = AbstractC2864y4.c(bArr, i8, c0022w);
                unsafe.putObject(obj, j8, c0022w.f221c);
                unsafe.putInt(obj, j9, i11);
                return iC;
            case 63:
                if (i12 != 0) {
                    return i8;
                }
                int iY2 = AbstractC2864y4.y0(bArr, i8, c0022w);
                int i17 = c0022w.f220b;
                G gH = h(i15);
                if (gH == null || gH.zza(i17)) {
                    unsafe.putObject(obj, j8, Integer.valueOf(i17));
                    unsafe.putInt(obj, j9, i11);
                } else {
                    x(obj).c(i10, Long.valueOf(i17));
                }
                return iY2;
            case 66:
                if (i12 != 0) {
                    return i8;
                }
                int iY3 = AbstractC2864y4.y0(bArr, i8, c0022w);
                unsafe.putObject(obj, j8, Integer.valueOf(C2819t.i(c0022w.f220b)));
                unsafe.putInt(obj, j9, i11);
                return iY3;
            case 67:
                if (i12 != 0) {
                    return i8;
                }
                int iF2 = AbstractC2864y4.F0(bArr, i8, c0022w);
                unsafe.putObject(obj, j8, Long.valueOf(C2819t.j(c0022w.f219a)));
                unsafe.putInt(obj, j9, i11);
                return iF2;
            case 68:
                if (i12 != 3) {
                    return i8;
                }
                int iR = AbstractC2864y4.R(i(i15), bArr, i8, i9, (i10 & (-8)) | 4, c0022w);
                Object object2 = unsafe.getInt(obj, j9) == i11 ? unsafe.getObject(obj, j8) : null;
                if (object2 == null) {
                    unsafe.putObject(obj, j8, c0022w.f221c);
                } else {
                    unsafe.putObject(obj, j8, J.b(object2, c0022w.f221c));
                }
                unsafe.putInt(obj, j9, i11);
                return iR;
            default:
                return i8;
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x003e  */
    /* JADX WARN: Failed to find 'out' block for switch in B:33:0x0097. Please report as an issue. */
    public final void F(Object obj, byte[] bArr, int i8, int i9, C0022w c0022w) throws L {
        int i10;
        int iD;
        int i11;
        int i12;
        Object obj2;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int iF0;
        int i18;
        C2685c0 c2685c0 = this;
        Object obj3 = obj;
        bArr = bArr;
        i9 = i9;
        c0022w = c0022w;
        int i19 = 0;
        int iW0 = i8;
        int i20 = -1;
        int i21 = 0;
        int i22 = 0;
        int i23 = 1048575;
        while (true) {
            Unsafe unsafe = f23742n;
            if (iW0 >= i9) {
                int i24 = i22;
                Object obj4 = obj3;
                if (i23 != 1048575) {
                    unsafe.putInt(obj4, i23, i24);
                }
                if (iW0 != i9) {
                    throw L.d();
                }
                return;
            }
            int i25 = iW0 + 1;
            byte b8 = bArr[iW0];
            if (b8 < 0) {
                int iB0 = AbstractC2864y4.B0(b8, bArr, i25, c0022w);
                i10 = c0022w.f220b;
                i25 = iB0;
            } else {
                i10 = b8;
            }
            int i26 = i10 >>> 3;
            int i27 = i10 & 7;
            int i28 = c2685c0.f23746d;
            int i29 = c2685c0.f23745c;
            if (i26 > i20) {
                int i30 = i21 / 3;
                if (i26 < i29 || i26 > i28) {
                    iD = -1;
                } else {
                    iD = c2685c0.d(i26, i30);
                }
            } else if (i26 < i29 || i26 > i28) {
                iD = -1;
            } else {
                iD = c2685c0.d(i26, i19);
            }
            i21 = iD;
            if (i21 == -1) {
                i11 = i25;
                i12 = i26;
                obj2 = obj3;
                i13 = 0;
            } else {
                int[] iArr = c2685c0.f23743a;
                int i31 = iArr[i21 + 1];
                int iE = e(i31);
                int i32 = i25;
                long j8 = i31 & 1048575;
                if (iE <= 17) {
                    int i33 = iArr[i21 + 2];
                    int i34 = 1 << (i33 >>> 20);
                    int i35 = i33 & 1048575;
                    if (i35 != i23) {
                        if (i23 != 1048575) {
                            unsafe.putInt(obj3, i23, i22);
                            i18 = i35;
                        } else {
                            i18 = i35;
                        }
                        if (i18 != 1048575) {
                            i22 = unsafe.getInt(obj3, i18);
                        }
                        i23 = i18;
                    }
                    switch (iE) {
                        case 0:
                            i17 = i32;
                            i12 = i26;
                            if (i27 != 1) {
                                i13 = i21;
                                i11 = i17;
                                obj2 = obj3;
                            } else {
                                AbstractC2836v0.m(obj3, j8, Double.longBitsToDouble(AbstractC2864y4.H0(bArr, i17)));
                                iW0 = i17 + 8;
                                i22 |= i34;
                                i20 = i12;
                                i19 = 0;
                            }
                            break;
                        case 1:
                            i17 = i32;
                            i12 = i26;
                            if (i27 != 5) {
                                i13 = i21;
                                i11 = i17;
                                obj2 = obj3;
                            } else {
                                AbstractC2836v0.n(obj3, j8, Float.intBitsToFloat(AbstractC2864y4.D(bArr, i17)));
                                iW0 = i17 + 4;
                                i22 |= i34;
                                i20 = i12;
                                i19 = 0;
                            }
                            break;
                        case 2:
                        case 3:
                            i17 = i32;
                            i12 = i26;
                            if (i27 != 0) {
                                i13 = i21;
                                i11 = i17;
                                obj2 = obj3;
                            } else {
                                iF0 = AbstractC2864y4.F0(bArr, i17, c0022w);
                                unsafe.putLong(obj, j8, c0022w.f219a);
                                i22 |= i34;
                                iW0 = iF0;
                                i20 = i12;
                                i19 = 0;
                            }
                            break;
                        case 4:
                        case 11:
                            i9 = i9;
                            i17 = i32;
                            i12 = i26;
                            if (i27 != 0) {
                                i13 = i21;
                                i11 = i17;
                                obj2 = obj3;
                            } else {
                                iW0 = AbstractC2864y4.y0(bArr, i17, c0022w);
                                unsafe.putInt(obj3, j8, c0022w.f220b);
                                i22 |= i34;
                                i20 = i12;
                                i19 = 0;
                            }
                            break;
                        case 5:
                        case 14:
                            i17 = i32;
                            i12 = i26;
                            if (i27 != 1) {
                                i13 = i21;
                                i11 = i17;
                                obj2 = obj3;
                            } else {
                                unsafe.putLong(obj, j8, AbstractC2864y4.H0(bArr, i17));
                                iW0 = i17 + 8;
                                i22 |= i34;
                                i20 = i12;
                                i19 = 0;
                            }
                            break;
                        case 6:
                        case 13:
                            i17 = i32;
                            i12 = i26;
                            if (i27 != 5) {
                                i13 = i21;
                                i11 = i17;
                                obj2 = obj3;
                            } else {
                                unsafe.putInt(obj3, j8, AbstractC2864y4.D(bArr, i17));
                                iW0 = i17 + 4;
                                i22 |= i34;
                                i20 = i12;
                                i19 = 0;
                            }
                            break;
                        case 7:
                            i9 = i9;
                            i17 = i32;
                            i12 = i26;
                            if (i27 != 0) {
                                i13 = i21;
                                i11 = i17;
                                obj2 = obj3;
                            } else {
                                iW0 = AbstractC2864y4.F0(bArr, i17, c0022w);
                                AbstractC2836v0.k(obj3, j8, c0022w.f219a != 0);
                                i22 |= i34;
                                i20 = i12;
                                i19 = 0;
                            }
                            break;
                        case 8:
                            i9 = i9;
                            i17 = i32;
                            i12 = i26;
                            if (i27 != 2) {
                                i13 = i21;
                                i11 = i17;
                                obj2 = obj3;
                            } else {
                                iW0 = (i31 & 536870912) == 0 ? AbstractC2864y4.q0(bArr, i17, c0022w) : AbstractC2864y4.t0(bArr, i17, c0022w);
                                unsafe.putObject(obj3, j8, c0022w.f221c);
                                i22 |= i34;
                                i20 = i12;
                                i19 = 0;
                            }
                            break;
                        case 9:
                            i17 = i32;
                            i12 = i26;
                            if (i27 != 2) {
                                i13 = i21;
                                i11 = i17;
                                obj2 = obj3;
                            } else {
                                i9 = i9;
                                iW0 = AbstractC2864y4.a0(c2685c0.i(i21), bArr, i17, i9, c0022w);
                                Object object = unsafe.getObject(obj3, j8);
                                if (object == null) {
                                    unsafe.putObject(obj3, j8, c0022w.f221c);
                                } else {
                                    unsafe.putObject(obj3, j8, J.b(object, c0022w.f221c));
                                }
                                i22 |= i34;
                                i20 = i12;
                                i19 = 0;
                            }
                            break;
                        case 10:
                            i17 = i32;
                            i12 = i26;
                            if (i27 != 2) {
                                i13 = i21;
                                i11 = i17;
                                obj2 = obj3;
                            } else {
                                iW0 = AbstractC2864y4.c(bArr, i17, c0022w);
                                unsafe.putObject(obj3, j8, c0022w.f221c);
                                i22 |= i34;
                                i9 = i9;
                                i20 = i12;
                                i19 = 0;
                            }
                            break;
                        case 12:
                            i17 = i32;
                            i12 = i26;
                            if (i27 != 0) {
                                i13 = i21;
                                i11 = i17;
                                obj2 = obj3;
                            } else {
                                iW0 = AbstractC2864y4.y0(bArr, i17, c0022w);
                                unsafe.putInt(obj3, j8, c0022w.f220b);
                                i22 |= i34;
                                i9 = i9;
                                i20 = i12;
                                i19 = 0;
                            }
                            break;
                        case 15:
                            i17 = i32;
                            i12 = i26;
                            if (i27 != 0) {
                                i13 = i21;
                                i11 = i17;
                                obj2 = obj3;
                            } else {
                                iW0 = AbstractC2864y4.y0(bArr, i17, c0022w);
                                unsafe.putInt(obj3, j8, C2819t.i(c0022w.f220b));
                                i22 |= i34;
                                i9 = i9;
                                i20 = i12;
                                i19 = 0;
                            }
                            break;
                        case 16:
                            if (i27 != 0) {
                                i17 = i32;
                                i12 = i26;
                                i13 = i21;
                                i11 = i17;
                                obj2 = obj3;
                            } else {
                                iF0 = AbstractC2864y4.F0(bArr, i32, c0022w);
                                i12 = i26;
                                unsafe.putLong(obj, j8, C2819t.j(c0022w.f219a));
                                i22 |= i34;
                                iW0 = iF0;
                                i20 = i12;
                                i19 = 0;
                            }
                            break;
                        default:
                            i17 = i32;
                            i12 = i26;
                            i13 = i21;
                            i11 = i17;
                            obj2 = obj3;
                            break;
                    }
                } else {
                    i12 = i26;
                    if (iE != 27) {
                        if (iE <= 49) {
                            i14 = i22;
                            i15 = i23;
                            i13 = i21;
                            iW0 = G(obj, bArr, i32, i9, i10, i12, i27, i21, i31, iE, j8, c0022w);
                            if (iW0 != i32) {
                                c2685c0 = this;
                                obj3 = obj;
                                bArr = bArr;
                                i9 = i9;
                                c0022w = c0022w;
                                i20 = i12;
                                i22 = i14;
                                i23 = i15;
                                i21 = i13;
                                i19 = 0;
                            } else {
                                obj2 = obj;
                                i11 = iW0;
                            }
                        } else {
                            i14 = i22;
                            i15 = i23;
                            i16 = i32;
                            i13 = i21;
                            if (iE != 50) {
                                obj2 = obj;
                                iW0 = E(obj, bArr, i16, i9, i10, i12, i27, i31, iE, j8, i13, c0022w);
                                if (iW0 != i16) {
                                    obj3 = obj2;
                                    i21 = i13;
                                    i20 = i12;
                                    i22 = i14;
                                    i23 = i15;
                                } else {
                                    i11 = iW0;
                                    i13 = i13;
                                }
                            } else if (i27 == 2) {
                                D(obj, i13, j8);
                                throw null;
                            }
                            i19 = 0;
                            c2685c0 = this;
                        }
                        i22 = i14;
                        i23 = i15;
                    } else if (i27 == 2) {
                        AbstractC2748k abstractC2748k = (AbstractC2748k) ((I) unsafe.getObject(obj3, j8));
                        boolean zZzc = abstractC2748k.zzc();
                        AbstractC2748k abstractC2748k2 = abstractC2748k;
                        if (!zZzc) {
                            int size = abstractC2748k.size();
                            I iZzd = abstractC2748k.zzd(size == 0 ? 10 : size + size);
                            unsafe.putObject(obj3, j8, iZzd);
                            abstractC2748k2 = iZzd;
                        }
                        iW0 = AbstractC2864y4.i0(c2685c0.i(i21), i10, bArr, i32, i9, abstractC2748k2, c0022w);
                        i22 = i22;
                        i20 = i12;
                        i19 = 0;
                    } else {
                        i14 = i22;
                        i15 = i23;
                        i16 = i32;
                        i13 = i21;
                    }
                    i11 = i16;
                    i22 = i14;
                    i23 = i15;
                    obj2 = obj;
                }
            }
            iW0 = AbstractC2864y4.w0(i10, bArr, i11, i9, x(obj), c0022w);
            obj3 = obj2;
            i20 = i12;
            i21 = i13;
            i19 = 0;
            c2685c0 = this;
        }
    }

    public final int G(Object obj, byte[] bArr, int i8, int i9, int i10, int i11, int i12, int i13, long j8, int i14, long j9, C0022w c0022w) throws L {
        int i15;
        int iD0;
        int iY0 = i8;
        Unsafe unsafe = f23742n;
        AbstractC2748k abstractC2748k = (AbstractC2748k) ((I) unsafe.getObject(obj, j9));
        boolean zZzc = abstractC2748k.zzc();
        AbstractC2748k abstractC2748k2 = abstractC2748k;
        if (!zZzc) {
            int size = abstractC2748k.size();
            I iZzd = abstractC2748k.zzd(size == 0 ? 10 : size + size);
            unsafe.putObject(obj, j9, iZzd);
            abstractC2748k2 = iZzd;
        }
        switch (i14) {
            case 18:
            case 35:
                if (i12 == 2) {
                    AbstractC2090uc.v(abstractC2748k2);
                    int iY1 = AbstractC2864y4.y0(bArr, iY0, c0022w);
                    int i16 = c0022w.f220b + iY1;
                    if (iY1 < i16) {
                        Double.longBitsToDouble(AbstractC2864y4.H0(bArr, iY1));
                        throw null;
                    }
                    if (iY1 == i16) {
                        return iY1;
                    }
                    throw L.e();
                }
                if (i12 == 1) {
                    AbstractC2090uc.v(abstractC2748k2);
                    Double.longBitsToDouble(AbstractC2864y4.H0(bArr, i8));
                    throw null;
                }
                break;
            case 19:
            case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                if (i12 == 2) {
                    AbstractC2090uc.v(abstractC2748k2);
                    int iY2 = AbstractC2864y4.y0(bArr, iY0, c0022w);
                    int i17 = c0022w.f220b + iY2;
                    if (iY2 < i17) {
                        Float.intBitsToFloat(AbstractC2864y4.D(bArr, iY2));
                        throw null;
                    }
                    if (iY2 == i17) {
                        return iY2;
                    }
                    throw L.e();
                }
                if (i12 == 5) {
                    AbstractC2090uc.v(abstractC2748k2);
                    Float.intBitsToFloat(AbstractC2864y4.D(bArr, i8));
                    throw null;
                }
                break;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i12 == 2) {
                    AbstractC2090uc.v(abstractC2748k2);
                    int iY3 = AbstractC2864y4.y0(bArr, iY0, c0022w);
                    int i18 = c0022w.f220b + iY3;
                    if (iY3 < i18) {
                        AbstractC2864y4.F0(bArr, iY3, c0022w);
                        throw null;
                    }
                    if (iY3 == i18) {
                        return iY3;
                    }
                    throw L.e();
                }
                if (i12 == 0) {
                    AbstractC2090uc.v(abstractC2748k2);
                    AbstractC2864y4.F0(bArr, iY0, c0022w);
                    throw null;
                }
                break;
            case 22:
            case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
            case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
            case 43:
                if (i12 == 2) {
                    return AbstractC2864y4.n0(bArr, iY0, abstractC2748k2, c0022w);
                }
                if (i12 == 0) {
                    return AbstractC2864y4.D0(i10, bArr, i8, i9, abstractC2748k2, c0022w);
                }
                break;
            case 23:
            case 32:
            case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
            case 46:
                if (i12 == 2) {
                    AbstractC2090uc.v(abstractC2748k2);
                    int iY4 = AbstractC2864y4.y0(bArr, iY0, c0022w);
                    int i19 = c0022w.f220b + iY4;
                    if (iY4 < i19) {
                        AbstractC2864y4.H0(bArr, iY4);
                        throw null;
                    }
                    if (iY4 == i19) {
                        return iY4;
                    }
                    throw L.e();
                }
                if (i12 == 1) {
                    AbstractC2090uc.v(abstractC2748k2);
                    AbstractC2864y4.H0(bArr, i8);
                    throw null;
                }
                break;
            case 24:
            case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
            case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
            case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                if (i12 == 2) {
                    F f8 = (F) abstractC2748k2;
                    int iY5 = AbstractC2864y4.y0(bArr, iY0, c0022w);
                    int i20 = c0022w.f220b + iY5;
                    while (iY5 < i20) {
                        f8.b(AbstractC2864y4.D(bArr, iY5));
                        iY5 += 4;
                    }
                    if (iY5 == i20) {
                        return iY5;
                    }
                    throw L.e();
                }
                if (i12 == 5) {
                    F f9 = (F) abstractC2748k2;
                    f9.b(AbstractC2864y4.D(bArr, i8));
                    while (true) {
                        i15 = iY0 + 4;
                        if (i15 < i9) {
                            iY0 = AbstractC2864y4.y0(bArr, i15, c0022w);
                            if (i10 == c0022w.f220b) {
                                f9.b(AbstractC2864y4.D(bArr, iY0));
                            }
                        }
                    }
                    return i15;
                }
                break;
            case 25:
            case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                if (i12 == 2) {
                    AbstractC2090uc.v(abstractC2748k2);
                    int iY6 = AbstractC2864y4.y0(bArr, iY0, c0022w);
                    int i21 = c0022w.f220b + iY6;
                    if (iY6 < i21) {
                        AbstractC2864y4.F0(bArr, iY6, c0022w);
                        throw null;
                    }
                    if (iY6 == i21) {
                        return iY6;
                    }
                    throw L.e();
                }
                if (i12 == 0) {
                    AbstractC2090uc.v(abstractC2748k2);
                    AbstractC2864y4.F0(bArr, iY0, c0022w);
                    throw null;
                }
                break;
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                if (i12 == 2) {
                    if ((j8 & 536870912) == 0) {
                        iY0 = AbstractC2864y4.y0(bArr, iY0, c0022w);
                        int i22 = c0022w.f220b;
                        if (i22 < 0) {
                            throw L.c();
                        }
                        if (i22 == 0) {
                            abstractC2748k2.add(HttpUrl.FRAGMENT_ENCODE_SET);
                        } else {
                            abstractC2748k2.add(new String(bArr, iY0, i22, J.f23560a));
                            iY0 += i22;
                        }
                        while (iY0 < i9) {
                            int iY7 = AbstractC2864y4.y0(bArr, iY0, c0022w);
                            if (i10 != c0022w.f220b) {
                                break;
                            } else {
                                iY0 = AbstractC2864y4.y0(bArr, iY7, c0022w);
                                int i23 = c0022w.f220b;
                                if (i23 < 0) {
                                    throw L.c();
                                }
                                if (i23 == 0) {
                                    abstractC2748k2.add(HttpUrl.FRAGMENT_ENCODE_SET);
                                } else {
                                    abstractC2748k2.add(new String(bArr, iY0, i23, J.f23560a));
                                    iY0 += i23;
                                }
                            }
                        }
                    } else {
                        iY0 = AbstractC2864y4.y0(bArr, iY0, c0022w);
                        int i24 = c0022w.f220b;
                        if (i24 < 0) {
                            throw L.c();
                        }
                        if (i24 == 0) {
                            abstractC2748k2.add(HttpUrl.FRAGMENT_ENCODE_SET);
                        } else {
                            int i25 = iY0 + i24;
                            if (!AbstractC2852x0.e(iY0, bArr, i25)) {
                                throw L.b();
                            }
                            abstractC2748k2.add(new String(bArr, iY0, i24, J.f23560a));
                            iY0 = i25;
                        }
                        while (iY0 < i9) {
                            int iY8 = AbstractC2864y4.y0(bArr, iY0, c0022w);
                            if (i10 != c0022w.f220b) {
                                break;
                            } else {
                                iY0 = AbstractC2864y4.y0(bArr, iY8, c0022w);
                                int i26 = c0022w.f220b;
                                if (i26 < 0) {
                                    throw L.c();
                                }
                                if (i26 == 0) {
                                    abstractC2748k2.add(HttpUrl.FRAGMENT_ENCODE_SET);
                                } else {
                                    int i27 = iY0 + i26;
                                    if (!AbstractC2852x0.e(iY0, bArr, i27)) {
                                        throw L.b();
                                    }
                                    abstractC2748k2.add(new String(bArr, iY0, i26, J.f23560a));
                                    iY0 = i27;
                                }
                            }
                        }
                    }
                }
                break;
            case 27:
                if (i12 == 2) {
                    return AbstractC2864y4.i0(i(i13), i10, bArr, i8, i9, abstractC2748k2, c0022w);
                }
                break;
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                if (i12 == 2) {
                    int iY9 = AbstractC2864y4.y0(bArr, iY0, c0022w);
                    int i28 = c0022w.f220b;
                    if (i28 < 0) {
                        throw L.c();
                    }
                    if (i28 > bArr.length - iY9) {
                        throw L.e();
                    }
                    if (i28 == 0) {
                        abstractC2748k2.add(r.f23990H);
                    } else {
                        abstractC2748k2.add(r.o(iY9, bArr, i28));
                        iY9 += i28;
                    }
                    while (iY9 < i9) {
                        int iY10 = AbstractC2864y4.y0(bArr, iY9, c0022w);
                        if (i10 != c0022w.f220b) {
                            return iY9;
                        }
                        iY9 = AbstractC2864y4.y0(bArr, iY10, c0022w);
                        int i29 = c0022w.f220b;
                        if (i29 < 0) {
                            throw L.c();
                        }
                        if (i29 > bArr.length - iY9) {
                            throw L.e();
                        }
                        if (i29 == 0) {
                            abstractC2748k2.add(r.f23990H);
                        } else {
                            abstractC2748k2.add(r.o(iY9, bArr, i29));
                            iY9 += i29;
                        }
                    }
                    return iY9;
                }
                break;
            case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
            case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                if (i12 == 2) {
                    iD0 = AbstractC2864y4.n0(bArr, iY0, abstractC2748k2, c0022w);
                } else if (i12 == 0) {
                    iD0 = AbstractC2864y4.D0(i10, bArr, i8, i9, abstractC2748k2, c0022w);
                }
                D d6 = (D) obj;
                C2781o0 c2781o0 = d6.zzc;
                Object objA = AbstractC2757l0.a(i11, abstractC2748k2, h(i13), c2781o0 != C2781o0.f23969f ? c2781o0 : null, this.f23754l);
                if (objA == null) {
                    return iD0;
                }
                d6.zzc = (C2781o0) objA;
                return iD0;
            case 33:
            case 47:
                if (i12 == 2) {
                    F f10 = (F) abstractC2748k2;
                    int iY11 = AbstractC2864y4.y0(bArr, iY0, c0022w);
                    int i30 = c0022w.f220b + iY11;
                    while (iY11 < i30) {
                        iY11 = AbstractC2864y4.y0(bArr, iY11, c0022w);
                        f10.b(C2819t.i(c0022w.f220b));
                    }
                    if (iY11 == i30) {
                        return iY11;
                    }
                    throw L.e();
                }
                if (i12 == 0) {
                    F f11 = (F) abstractC2748k2;
                    int iY12 = AbstractC2864y4.y0(bArr, iY0, c0022w);
                    f11.b(C2819t.i(c0022w.f220b));
                    while (iY12 < i9) {
                        int iY13 = AbstractC2864y4.y0(bArr, iY12, c0022w);
                        if (i10 != c0022w.f220b) {
                            return iY12;
                        }
                        iY12 = AbstractC2864y4.y0(bArr, iY13, c0022w);
                        f11.b(C2819t.i(c0022w.f220b));
                    }
                    return iY12;
                }
                break;
            case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
            case 48:
                if (i12 == 2) {
                    AbstractC2090uc.v(abstractC2748k2);
                    int iY14 = AbstractC2864y4.y0(bArr, iY0, c0022w);
                    int i31 = c0022w.f220b + iY14;
                    if (iY14 < i31) {
                        AbstractC2864y4.F0(bArr, iY14, c0022w);
                        throw null;
                    }
                    if (iY14 == i31) {
                        return iY14;
                    }
                    throw L.e();
                }
                if (i12 == 0) {
                    AbstractC2090uc.v(abstractC2748k2);
                    AbstractC2864y4.F0(bArr, iY0, c0022w);
                    throw null;
                }
                break;
            default:
                if (i12 == 3) {
                    InterfaceC2749k0 interfaceC2749k0I = i(i13);
                    int i32 = (i10 & (-8)) | 4;
                    int iR = AbstractC2864y4.R(interfaceC2749k0I, bArr, i8, i9, i32, c0022w);
                    abstractC2748k2.add(c0022w.f221c);
                    while (iR < i9) {
                        int iY15 = AbstractC2864y4.y0(bArr, iR, c0022w);
                        if (i10 != c0022w.f220b) {
                            return iR;
                        }
                        iR = AbstractC2864y4.R(interfaceC2749k0I, bArr, iY15, i9, i32, c0022w);
                        abstractC2748k2.add(c0022w.f221c);
                    }
                    return iR;
                }
                break;
        }
        return iY0;
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2749k0
    public final void a(Object obj, byte[] bArr, int i8, int i9, C0022w c0022w) throws L {
        if (this.f23749g) {
            F(obj, bArr, i8, i9, c0022w);
        } else {
            w(obj, bArr, i8, i9, 0, c0022w);
        }
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2749k0
    public final void b(Object obj, C2843w c2843w) throws I0.u {
        if (!this.f23749g) {
            r(obj, c2843w);
            return;
        }
        int[] iArr = this.f23743a;
        int length = iArr.length;
        for (int i8 = 0; i8 < length; i8 += 3) {
            int iF = f(i8);
            int i9 = iArr[i8];
            switch (e(iF)) {
                case 0:
                    if (t(i8, obj)) {
                        c2843w.g(i9, AbstractC2836v0.d(obj, iF & 1048575));
                    }
                    break;
                case 1:
                    if (t(i8, obj)) {
                        c2843w.k(i9, AbstractC2836v0.e(obj, iF & 1048575));
                    }
                    break;
                case 2:
                    if (t(i8, obj)) {
                        c2843w.n(i9, AbstractC2836v0.f24034c.d(obj, iF & 1048575));
                    }
                    break;
                case 3:
                    if (t(i8, obj)) {
                        c2843w.d(i9, AbstractC2836v0.f24034c.d(obj, iF & 1048575));
                    }
                    break;
                case 4:
                    if (t(i8, obj)) {
                        c2843w.m(i9, AbstractC2836v0.f24034c.c(obj, iF & 1048575));
                    }
                    break;
                case 5:
                    if (t(i8, obj)) {
                        c2843w.j(i9, AbstractC2836v0.f24034c.d(obj, iF & 1048575));
                    }
                    break;
                case 6:
                    if (t(i8, obj)) {
                        c2843w.i(i9, AbstractC2836v0.f24034c.c(obj, iF & 1048575));
                    }
                    break;
                case 7:
                    if (t(i8, obj)) {
                        c2843w.e(i9, AbstractC2836v0.u(obj, iF & 1048575));
                    }
                    break;
                case 8:
                    if (t(i8, obj)) {
                        v(i9, AbstractC2836v0.f24034c.f(obj, iF & 1048575), c2843w);
                    }
                    break;
                case 9:
                    if (t(i8, obj)) {
                        c2843w.o(i9, i(i8), AbstractC2836v0.f24034c.f(obj, iF & 1048575));
                    }
                    break;
                case 10:
                    if (t(i8, obj)) {
                        c2843w.f(i9, (r) AbstractC2836v0.f24034c.f(obj, iF & 1048575));
                    }
                    break;
                case 11:
                    if (t(i8, obj)) {
                        c2843w.c(i9, AbstractC2836v0.f24034c.c(obj, iF & 1048575));
                    }
                    break;
                case 12:
                    if (t(i8, obj)) {
                        c2843w.h(i9, AbstractC2836v0.f24034c.c(obj, iF & 1048575));
                    }
                    break;
                case 13:
                    if (t(i8, obj)) {
                        c2843w.p(i9, AbstractC2836v0.f24034c.c(obj, iF & 1048575));
                    }
                    break;
                case 14:
                    if (t(i8, obj)) {
                        c2843w.q(i9, AbstractC2836v0.f24034c.d(obj, iF & 1048575));
                    }
                    break;
                case 15:
                    if (t(i8, obj)) {
                        c2843w.a(i9, AbstractC2836v0.f24034c.c(obj, iF & 1048575));
                    }
                    break;
                case 16:
                    if (t(i8, obj)) {
                        c2843w.b(i9, AbstractC2836v0.f24034c.d(obj, iF & 1048575));
                    }
                    break;
                case 17:
                    if (t(i8, obj)) {
                        c2843w.l(i9, i(i8), AbstractC2836v0.f24034c.f(obj, iF & 1048575));
                    }
                    break;
                case 18:
                    AbstractC2757l0.f(i9, (List) AbstractC2836v0.f24034c.f(obj, iF & 1048575), c2843w, false);
                    break;
                case 19:
                    AbstractC2757l0.j(i9, (List) AbstractC2836v0.f24034c.f(obj, iF & 1048575), c2843w, false);
                    break;
                case 20:
                    AbstractC2757l0.m(i9, (List) AbstractC2836v0.f24034c.f(obj, iF & 1048575), c2843w, false);
                    break;
                case 21:
                    AbstractC2757l0.u(i9, (List) AbstractC2836v0.f24034c.f(obj, iF & 1048575), c2843w, false);
                    break;
                case 22:
                    AbstractC2757l0.l(i9, (List) AbstractC2836v0.f24034c.f(obj, iF & 1048575), c2843w, false);
                    break;
                case 23:
                    AbstractC2757l0.i(i9, (List) AbstractC2836v0.f24034c.f(obj, iF & 1048575), c2843w, false);
                    break;
                case 24:
                    AbstractC2757l0.h(i9, (List) AbstractC2836v0.f24034c.f(obj, iF & 1048575), c2843w, false);
                    break;
                case 25:
                    AbstractC2757l0.d(i9, (List) AbstractC2836v0.f24034c.f(obj, iF & 1048575), c2843w, false);
                    break;
                case Service.BILLING_FIELD_NUMBER /* 26 */:
                    AbstractC2757l0.s(i9, (List) AbstractC2836v0.f24034c.f(obj, iF & 1048575), c2843w);
                    break;
                case 27:
                    AbstractC2757l0.n(i9, (List) AbstractC2836v0.f24034c.f(obj, iF & 1048575), c2843w, i(i8));
                    break;
                case Service.MONITORING_FIELD_NUMBER /* 28 */:
                    AbstractC2757l0.e(i9, (List) AbstractC2836v0.f24034c.f(obj, iF & 1048575), c2843w);
                    break;
                case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                    AbstractC2757l0.t(i9, (List) AbstractC2836v0.f24034c.f(obj, iF & 1048575), c2843w, false);
                    break;
                case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                    AbstractC2757l0.g(i9, (List) AbstractC2836v0.f24034c.f(obj, iF & 1048575), c2843w, false);
                    break;
                case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                    AbstractC2757l0.o(i9, (List) AbstractC2836v0.f24034c.f(obj, iF & 1048575), c2843w, false);
                    break;
                case 32:
                    AbstractC2757l0.p(i9, (List) AbstractC2836v0.f24034c.f(obj, iF & 1048575), c2843w, false);
                    break;
                case 33:
                    AbstractC2757l0.q(i9, (List) AbstractC2836v0.f24034c.f(obj, iF & 1048575), c2843w, false);
                    break;
                case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                    AbstractC2757l0.r(i9, (List) AbstractC2836v0.f24034c.f(obj, iF & 1048575), c2843w, false);
                    break;
                case 35:
                    AbstractC2757l0.f(i9, (List) AbstractC2836v0.f24034c.f(obj, iF & 1048575), c2843w, true);
                    break;
                case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                    AbstractC2757l0.j(i9, (List) AbstractC2836v0.f24034c.f(obj, iF & 1048575), c2843w, true);
                    break;
                case 37:
                    AbstractC2757l0.m(i9, (List) AbstractC2836v0.f24034c.f(obj, iF & 1048575), c2843w, true);
                    break;
                case 38:
                    AbstractC2757l0.u(i9, (List) AbstractC2836v0.f24034c.f(obj, iF & 1048575), c2843w, true);
                    break;
                case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                    AbstractC2757l0.l(i9, (List) AbstractC2836v0.f24034c.f(obj, iF & 1048575), c2843w, true);
                    break;
                case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                    AbstractC2757l0.i(i9, (List) AbstractC2836v0.f24034c.f(obj, iF & 1048575), c2843w, true);
                    break;
                case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
                    AbstractC2757l0.h(i9, (List) AbstractC2836v0.f24034c.f(obj, iF & 1048575), c2843w, true);
                    break;
                case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                    AbstractC2757l0.d(i9, (List) AbstractC2836v0.f24034c.f(obj, iF & 1048575), c2843w, true);
                    break;
                case 43:
                    AbstractC2757l0.t(i9, (List) AbstractC2836v0.f24034c.f(obj, iF & 1048575), c2843w, true);
                    break;
                case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                    AbstractC2757l0.g(i9, (List) AbstractC2836v0.f24034c.f(obj, iF & 1048575), c2843w, true);
                    break;
                case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                    AbstractC2757l0.o(i9, (List) AbstractC2836v0.f24034c.f(obj, iF & 1048575), c2843w, true);
                    break;
                case 46:
                    AbstractC2757l0.p(i9, (List) AbstractC2836v0.f24034c.f(obj, iF & 1048575), c2843w, true);
                    break;
                case 47:
                    AbstractC2757l0.q(i9, (List) AbstractC2836v0.f24034c.f(obj, iF & 1048575), c2843w, true);
                    break;
                case 48:
                    AbstractC2757l0.r(i9, (List) AbstractC2836v0.f24034c.f(obj, iF & 1048575), c2843w, true);
                    break;
                case 49:
                    AbstractC2757l0.k(i9, (List) AbstractC2836v0.f24034c.f(obj, iF & 1048575), c2843w, i(i8));
                    break;
                case 50:
                    if (AbstractC2836v0.f24034c.f(obj, iF & 1048575) != null) {
                        A0.O.I(k(i8));
                        throw null;
                    }
                    break;
                    break;
                case 51:
                    if (u(i9, obj, i8)) {
                        c2843w.g(i9, ((Double) AbstractC2836v0.f24034c.f(obj, iF & 1048575)).doubleValue());
                    }
                    break;
                case 52:
                    if (u(i9, obj, i8)) {
                        c2843w.k(i9, ((Float) AbstractC2836v0.f24034c.f(obj, iF & 1048575)).floatValue());
                    }
                    break;
                case 53:
                    if (u(i9, obj, i8)) {
                        c2843w.n(i9, g(obj, iF & 1048575));
                    }
                    break;
                case 54:
                    if (u(i9, obj, i8)) {
                        c2843w.d(i9, g(obj, iF & 1048575));
                    }
                    break;
                case 55:
                    if (u(i9, obj, i8)) {
                        c2843w.m(i9, C(obj, iF & 1048575));
                    }
                    break;
                case 56:
                    if (u(i9, obj, i8)) {
                        c2843w.j(i9, g(obj, iF & 1048575));
                    }
                    break;
                case 57:
                    if (u(i9, obj, i8)) {
                        c2843w.i(i9, C(obj, iF & 1048575));
                    }
                    break;
                case 58:
                    if (u(i9, obj, i8)) {
                        c2843w.e(i9, ((Boolean) AbstractC2836v0.f24034c.f(obj, iF & 1048575)).booleanValue());
                    }
                    break;
                case 59:
                    if (u(i9, obj, i8)) {
                        v(i9, AbstractC2836v0.f24034c.f(obj, iF & 1048575), c2843w);
                    }
                    break;
                case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                    if (u(i9, obj, i8)) {
                        c2843w.o(i9, i(i8), AbstractC2836v0.f24034c.f(obj, iF & 1048575));
                    }
                    break;
                case 61:
                    if (u(i9, obj, i8)) {
                        c2843w.f(i9, (r) AbstractC2836v0.f24034c.f(obj, iF & 1048575));
                    }
                    break;
                case 62:
                    if (u(i9, obj, i8)) {
                        c2843w.c(i9, C(obj, iF & 1048575));
                    }
                    break;
                case 63:
                    if (u(i9, obj, i8)) {
                        c2843w.h(i9, C(obj, iF & 1048575));
                    }
                    break;
                case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                    if (u(i9, obj, i8)) {
                        c2843w.p(i9, C(obj, iF & 1048575));
                    }
                    break;
                case 65:
                    if (u(i9, obj, i8)) {
                        c2843w.q(i9, g(obj, iF & 1048575));
                    }
                    break;
                case 66:
                    if (u(i9, obj, i8)) {
                        c2843w.a(i9, C(obj, iF & 1048575));
                    }
                    break;
                case 67:
                    if (u(i9, obj, i8)) {
                        c2843w.b(i9, g(obj, iF & 1048575));
                    }
                    break;
                case 68:
                    if (u(i9, obj, i8)) {
                        c2843w.l(i9, i(i8), AbstractC2836v0.f24034c.f(obj, iF & 1048575));
                    }
                    break;
            }
        }
        this.f23754l.getClass();
        ((D) obj).zzc.d(c2843w);
    }

    /* JADX WARN: Code duplicated, block: B:171:0x06e5 A[Catch: all -> 0x053e, TryCatch #4 {all -> 0x053e, blocks: (B:169:0x06e0, B:171:0x06e5, B:173:0x06ec, B:175:0x06f3, B:134:0x0532, B:139:0x0544, B:140:0x055e, B:141:0x0574, B:142:0x058a, B:144:0x059b, B:147:0x05a2, B:148:0x05a8, B:149:0x05b3, B:150:0x05c9, B:151:0x05db, B:153:0x05e4, B:154:0x0600, B:155:0x0617, B:156:0x0622, B:160:0x0637, B:161:0x063f, B:162:0x0655, B:163:0x066b, B:164:0x0680, B:165:0x0695, B:166:0x06aa, B:167:0x06c3), top: B:197:0x06e0 }] */
    /* JADX WARN: Code duplicated, block: B:173:0x06ec A[Catch: all -> 0x053e, TryCatch #4 {all -> 0x053e, blocks: (B:169:0x06e0, B:171:0x06e5, B:173:0x06ec, B:175:0x06f3, B:134:0x0532, B:139:0x0544, B:140:0x055e, B:141:0x0574, B:142:0x058a, B:144:0x059b, B:147:0x05a2, B:148:0x05a8, B:149:0x05b3, B:150:0x05c9, B:151:0x05db, B:153:0x05e4, B:154:0x0600, B:155:0x0617, B:156:0x0622, B:160:0x0637, B:161:0x063f, B:162:0x0655, B:163:0x066b, B:164:0x0680, B:165:0x0695, B:166:0x06aa, B:167:0x06c3), top: B:197:0x06e0 }] */
    /* JADX WARN: Code duplicated, block: B:179:0x06fd A[LOOP:2: B:178:0x06fb->B:179:0x06fd, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:181:0x0707  */
    /* JADX WARN: Code duplicated, block: B:187:0x0716 A[LOOP:3: B:186:0x0714->B:187:0x0716, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:189:0x0720  */
    /* JADX WARN: Code duplicated, block: B:209:0x06f9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:220:? A[RETURN, SYNTHETIC] */
    @Override // com.google.android.gms.internal.pal.InterfaceC2749k0
    public final void c(Object obj, C2827u c2827u, C2851x c2851x) throws Throwable {
        int i8;
        C2789p0 c2789p0;
        int i9;
        int i10;
        D d6;
        C2781o0 c2781o0B;
        int[] iArr = this.f23750h;
        int i11 = this.f23752j;
        int i12 = this.f23751i;
        c2851x.getClass();
        C2789p0 c2789p1 = this.f23754l;
        Object objB = null;
        while (true) {
            try {
                int iR = c2827u.r();
                int iD = (iR < this.f23745c || iR > this.f23746d) ? -1 : d(iR, 0);
                C2781o0 c2781o0 = C2781o0.f23969f;
                if (iD >= 0) {
                    int iF = f(iD);
                    try {
                        int iE = e(iF);
                        C2819t c2819t = c2827u.f24016a;
                        S s7 = this.f23753k;
                        switch (iE) {
                            case 0:
                                i8 = i12;
                                c2789p0 = c2789p1;
                                c2827u.q(1);
                                AbstractC2836v0.m(obj, iF & 1048575, Double.longBitsToDouble(c2819t.e()));
                                p(iD, obj);
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 1:
                                i8 = i12;
                                c2789p0 = c2789p1;
                                c2827u.q(5);
                                AbstractC2836v0.n(obj, iF & 1048575, Float.intBitsToFloat(c2819t.b()));
                                p(iD, obj);
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 2:
                                i8 = i12;
                                c2789p0 = c2789p1;
                                c2827u.q(0);
                                AbstractC2836v0.p(obj, iF & 1048575, c2819t.f());
                                p(iD, obj);
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 3:
                                i8 = i12;
                                c2789p0 = c2789p1;
                                c2827u.q(0);
                                AbstractC2836v0.p(obj, iF & 1048575, c2819t.f());
                                p(iD, obj);
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 4:
                                i8 = i12;
                                c2789p0 = c2789p1;
                                c2827u.q(0);
                                AbstractC2836v0.o(obj, iF & 1048575, c2819t.c());
                                p(iD, obj);
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 5:
                                i8 = i12;
                                c2789p0 = c2789p1;
                                c2827u.q(1);
                                AbstractC2836v0.p(obj, iF & 1048575, c2819t.e());
                                p(iD, obj);
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 6:
                                i8 = i12;
                                c2789p0 = c2789p1;
                                c2827u.q(5);
                                AbstractC2836v0.o(obj, iF & 1048575, c2819t.b());
                                p(iD, obj);
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 7:
                                i8 = i12;
                                c2789p0 = c2789p1;
                                long j8 = iF & 1048575;
                                c2827u.q(0);
                                AbstractC2836v0.k(obj, j8, c2819t.f() != 0);
                                p(iD, obj);
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 8:
                                i8 = i12;
                                c2789p0 = c2789p1;
                                o(obj, iF, c2827u);
                                p(iD, obj);
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 9:
                                i8 = i12;
                                c2789p0 = c2789p1;
                                if (t(iD, obj)) {
                                    long j9 = iF & 1048575;
                                    Object objI = AbstractC2836v0.i(obj, j9);
                                    InterfaceC2749k0 interfaceC2749k0I = i(iD);
                                    c2827u.q(2);
                                    AbstractC2836v0.q(obj, j9, J.b(objI, c2827u.o(interfaceC2749k0I, c2851x)));
                                } else {
                                    InterfaceC2749k0 interfaceC2749k0I2 = i(iD);
                                    c2827u.q(2);
                                    AbstractC2836v0.q(obj, iF & 1048575, c2827u.o(interfaceC2749k0I2, c2851x));
                                    p(iD, obj);
                                }
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 10:
                                i8 = i12;
                                c2789p0 = c2789p1;
                                AbstractC2836v0.q(obj, iF & 1048575, c2827u.s());
                                p(iD, obj);
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 11:
                                i8 = i12;
                                c2789p0 = c2789p1;
                                c2827u.q(0);
                                AbstractC2836v0.o(obj, iF & 1048575, c2819t.c());
                                p(iD, obj);
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 12:
                                i8 = i12;
                                c2789p0 = c2789p1;
                                c2827u.q(0);
                                int iC = c2819t.c();
                                G gH = h(iD);
                                if (gH == null || gH.zza(iC)) {
                                    AbstractC2836v0.o(obj, iF & 1048575, iC);
                                    p(iD, obj);
                                } else {
                                    objB = AbstractC2757l0.b(iR, iC, objB, c2789p0);
                                }
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 13:
                                i8 = i12;
                                c2789p0 = c2789p1;
                                c2827u.q(5);
                                AbstractC2836v0.o(obj, iF & 1048575, c2819t.b());
                                p(iD, obj);
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 14:
                                i8 = i12;
                                c2789p0 = c2789p1;
                                c2827u.q(1);
                                AbstractC2836v0.p(obj, iF & 1048575, c2819t.e());
                                p(iD, obj);
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 15:
                                i8 = i12;
                                c2789p0 = c2789p1;
                                c2827u.q(0);
                                AbstractC2836v0.o(obj, iF & 1048575, C2819t.i(c2819t.c()));
                                p(iD, obj);
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 16:
                                i8 = i12;
                                long j10 = iF & 1048575;
                                c2827u.q(0);
                                c2789p0 = c2789p1;
                                try {
                                    AbstractC2836v0.p(obj, j10, C2819t.j(c2819t.f()));
                                    p(iD, obj);
                                    break;
                                } catch (K unused) {
                                    try {
                                        c2789p0.getClass();
                                        if (objB == null) {
                                            d6 = (D) obj;
                                            c2781o0B = d6.zzc;
                                            if (c2781o0B == c2781o0) {
                                                c2781o0B = C2781o0.b();
                                                d6.zzc = c2781o0B;
                                            }
                                            objB = c2781o0B;
                                        }
                                        if (!C2789p0.d(objB, c2827u)) {
                                            for (i10 = i8; i10 < i11; i10++) {
                                                j(obj, iArr[i10], objB);
                                            }
                                            if (objB != null) {
                                                ((D) obj).zzc = (C2781o0) objB;
                                                return;
                                            }
                                            return;
                                        }
                                    } catch (Throwable th) {
                                        th = th;
                                        for (i9 = i8; i9 < i11; i9++) {
                                            j(obj, iArr[i9], objB);
                                        }
                                        if (objB != null) {
                                            c2789p0.getClass();
                                            ((D) obj).zzc = (C2781o0) objB;
                                        }
                                        throw th;
                                    }
                                }
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 17:
                                i8 = i12;
                                if (t(iD, obj)) {
                                    long j11 = iF & 1048575;
                                    Object objI2 = AbstractC2836v0.i(obj, j11);
                                    InterfaceC2749k0 interfaceC2749k0I3 = i(iD);
                                    c2827u.q(3);
                                    AbstractC2836v0.q(obj, j11, J.b(objI2, c2827u.n(interfaceC2749k0I3, c2851x)));
                                } else {
                                    InterfaceC2749k0 interfaceC2749k0I4 = i(iD);
                                    c2827u.q(3);
                                    AbstractC2836v0.q(obj, iF & 1048575, c2827u.n(interfaceC2749k0I4, c2851x));
                                    p(iD, obj);
                                }
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 18:
                                i8 = i12;
                                c2827u.x(s7.a(obj, iF & 1048575));
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 19:
                                i8 = i12;
                                c2827u.b(s7.a(obj, iF & 1048575));
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 20:
                                i8 = i12;
                                c2827u.e(s7.a(obj, iF & 1048575));
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 21:
                                i8 = i12;
                                c2827u.m(s7.a(obj, iF & 1048575));
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 22:
                                i8 = i12;
                                c2827u.d(s7.a(obj, iF & 1048575));
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 23:
                                i8 = i12;
                                c2827u.a(s7.a(obj, iF & 1048575));
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 24:
                                i8 = i12;
                                c2827u.z(s7.a(obj, iF & 1048575));
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 25:
                                i8 = i12;
                                c2827u.v(s7.a(obj, iF & 1048575));
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case Service.BILLING_FIELD_NUMBER /* 26 */:
                                i8 = i12;
                                if ((536870912 & iF) != 0) {
                                    c2827u.k(s7.a(obj, iF & 1048575), true);
                                } else {
                                    c2827u.k(s7.a(obj, iF & 1048575), false);
                                }
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 27:
                                i8 = i12;
                                c2827u.f(s7.a(obj, iF & 1048575), i(iD), c2851x);
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                                i8 = i12;
                                c2827u.w(s7.a(obj, iF & 1048575));
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                                i8 = i12;
                                c2827u.l(s7.a(obj, iF & 1048575));
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                                i8 = i12;
                                List listA = s7.a(obj, iF & 1048575);
                                c2827u.y(listA);
                                objB = AbstractC2757l0.a(iR, listA, h(iD), objB, c2789p1);
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                                i8 = i12;
                                c2827u.g(s7.a(obj, iF & 1048575));
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 32:
                                i8 = i12;
                                c2827u.h(s7.a(obj, iF & 1048575));
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 33:
                                i8 = i12;
                                c2827u.i(s7.a(obj, iF & 1048575));
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                                i8 = i12;
                                c2827u.j(s7.a(obj, iF & 1048575));
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 35:
                                i8 = i12;
                                c2827u.x(s7.a(obj, iF & 1048575));
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                                i8 = i12;
                                c2827u.b(s7.a(obj, iF & 1048575));
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 37:
                                i8 = i12;
                                c2827u.e(s7.a(obj, iF & 1048575));
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 38:
                                i8 = i12;
                                c2827u.m(s7.a(obj, iF & 1048575));
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                i8 = i12;
                                c2827u.d(s7.a(obj, iF & 1048575));
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                                i8 = i12;
                                c2827u.a(s7.a(obj, iF & 1048575));
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
                                i8 = i12;
                                c2827u.z(s7.a(obj, iF & 1048575));
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                                i8 = i12;
                                c2827u.v(s7.a(obj, iF & 1048575));
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 43:
                                i8 = i12;
                                c2827u.l(s7.a(obj, iF & 1048575));
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                                i8 = i12;
                                List listA2 = s7.a(obj, iF & 1048575);
                                c2827u.y(listA2);
                                objB = AbstractC2757l0.a(iR, listA2, h(iD), objB, c2789p1);
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                                i8 = i12;
                                c2827u.g(s7.a(obj, iF & 1048575));
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 46:
                                i8 = i12;
                                c2827u.h(s7.a(obj, iF & 1048575));
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 47:
                                i8 = i12;
                                c2827u.i(s7.a(obj, iF & 1048575));
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 48:
                                i8 = i12;
                                c2827u.j(s7.a(obj, iF & 1048575));
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 49:
                                i8 = i12;
                                c2827u.c(s7.a(obj, iF & 1048575), i(iD), c2851x);
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 50:
                                i8 = i12;
                                Object objK = k(iD);
                                long jF = f(iD) & 1048575;
                                Object objI3 = AbstractC2836v0.i(obj, jF);
                                if (objI3 == null) {
                                    objI3 = W.a().b();
                                    AbstractC2836v0.q(obj, jF, objI3);
                                } else if (Y.b(objI3)) {
                                    Object objB2 = W.a().b();
                                    Y.c(objB2, objI3);
                                    AbstractC2836v0.q(obj, jF, objB2);
                                    objI3 = objB2;
                                }
                                A0.O.I(objK);
                                throw null;
                            case 51:
                                i8 = i12;
                                c2827u.q(1);
                                AbstractC2836v0.q(obj, iF & 1048575, Double.valueOf(Double.longBitsToDouble(c2819t.e())));
                                q(iR, obj, iD);
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 52:
                                i8 = i12;
                                c2827u.q(5);
                                AbstractC2836v0.q(obj, iF & 1048575, Float.valueOf(Float.intBitsToFloat(c2819t.b())));
                                q(iR, obj, iD);
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 53:
                                i8 = i12;
                                c2827u.q(0);
                                AbstractC2836v0.q(obj, iF & 1048575, Long.valueOf(c2819t.f()));
                                q(iR, obj, iD);
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 54:
                                i8 = i12;
                                c2827u.q(0);
                                AbstractC2836v0.q(obj, iF & 1048575, Long.valueOf(c2819t.f()));
                                q(iR, obj, iD);
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 55:
                                i8 = i12;
                                c2827u.q(0);
                                AbstractC2836v0.q(obj, iF & 1048575, Integer.valueOf(c2819t.c()));
                                q(iR, obj, iD);
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 56:
                                i8 = i12;
                                c2827u.q(1);
                                AbstractC2836v0.q(obj, iF & 1048575, Long.valueOf(c2819t.e()));
                                q(iR, obj, iD);
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 57:
                                i8 = i12;
                                c2827u.q(5);
                                AbstractC2836v0.q(obj, iF & 1048575, Integer.valueOf(c2819t.b()));
                                q(iR, obj, iD);
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 58:
                                i8 = i12;
                                long j12 = iF & 1048575;
                                c2827u.q(0);
                                AbstractC2836v0.q(obj, j12, Boolean.valueOf(c2819t.f() != 0));
                                q(iR, obj, iD);
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 59:
                                i8 = i12;
                                o(obj, iF, c2827u);
                                q(iR, obj, iD);
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                                if (u(iR, obj, iD)) {
                                    long j13 = iF & 1048575;
                                    Object objI4 = AbstractC2836v0.i(obj, j13);
                                    InterfaceC2749k0 interfaceC2749k0I5 = i(iD);
                                    i8 = i12;
                                    try {
                                        c2827u.q(2);
                                        AbstractC2836v0.q(obj, j13, J.b(objI4, c2827u.o(interfaceC2749k0I5, c2851x)));
                                    } catch (K unused2) {
                                        c2789p0 = c2789p1;
                                        c2789p0.getClass();
                                        if (objB == null) {
                                            d6 = (D) obj;
                                            c2781o0B = d6.zzc;
                                            if (c2781o0B == c2781o0) {
                                                c2781o0B = C2781o0.b();
                                                d6.zzc = c2781o0B;
                                            }
                                            objB = c2781o0B;
                                        }
                                        if (!C2789p0.d(objB, c2827u)) {
                                            while (i10 < i11) {
                                                j(obj, iArr[i10], objB);
                                            }
                                            if (objB != null) {
                                                ((D) obj).zzc = (C2781o0) objB;
                                                return;
                                            }
                                            return;
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        c2789p0 = c2789p1;
                                        while (i9 < i11) {
                                            j(obj, iArr[i9], objB);
                                        }
                                        if (objB != null) {
                                            c2789p0.getClass();
                                            ((D) obj).zzc = (C2781o0) objB;
                                        }
                                        throw th;
                                    }
                                } else {
                                    i8 = i12;
                                    InterfaceC2749k0 interfaceC2749k0I6 = i(iD);
                                    c2827u.q(2);
                                    AbstractC2836v0.q(obj, iF & 1048575, c2827u.o(interfaceC2749k0I6, c2851x));
                                    p(iD, obj);
                                }
                                q(iR, obj, iD);
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 61:
                                AbstractC2836v0.q(obj, iF & 1048575, c2827u.s());
                                q(iR, obj, iD);
                                i8 = i12;
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 62:
                                c2827u.q(0);
                                AbstractC2836v0.q(obj, iF & 1048575, Integer.valueOf(c2819t.c()));
                                q(iR, obj, iD);
                                i8 = i12;
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 63:
                                c2827u.q(0);
                                int iC2 = c2819t.c();
                                G gH2 = h(iD);
                                if (gH2 == null || gH2.zza(iC2)) {
                                    AbstractC2836v0.q(obj, iF & 1048575, Integer.valueOf(iC2));
                                    q(iR, obj, iD);
                                } else {
                                    objB = AbstractC2757l0.b(iR, iC2, objB, c2789p1);
                                }
                                i8 = i12;
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                                c2827u.q(5);
                                AbstractC2836v0.q(obj, iF & 1048575, Integer.valueOf(c2819t.b()));
                                q(iR, obj, iD);
                                i8 = i12;
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 65:
                                c2827u.q(1);
                                AbstractC2836v0.q(obj, iF & 1048575, Long.valueOf(c2819t.e()));
                                q(iR, obj, iD);
                                i8 = i12;
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 66:
                                c2827u.q(0);
                                AbstractC2836v0.q(obj, iF & 1048575, Integer.valueOf(C2819t.i(c2819t.c())));
                                q(iR, obj, iD);
                                i8 = i12;
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 67:
                                c2827u.q(0);
                                AbstractC2836v0.q(obj, iF & 1048575, Long.valueOf(C2819t.j(c2819t.f())));
                                q(iR, obj, iD);
                                i8 = i12;
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            case 68:
                                long j14 = iF & 1048575;
                                InterfaceC2749k0 interfaceC2749k0I7 = i(iD);
                                c2827u.q(3);
                                AbstractC2836v0.q(obj, j14, c2827u.n(interfaceC2749k0I7, c2851x));
                                q(iR, obj, iD);
                                i8 = i12;
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                            default:
                                if (objB == null) {
                                    c2789p1.getClass();
                                    objB = C2781o0.b();
                                }
                                c2789p1.getClass();
                                if (!C2789p0.d(objB, c2827u)) {
                                    while (i12 < i11) {
                                        j(obj, iArr[i12], objB);
                                        i12++;
                                    }
                                    ((D) obj).zzc = (C2781o0) objB;
                                    return;
                                }
                                i8 = i12;
                                c2789p0 = c2789p1;
                                c2789p1 = c2789p0;
                                i12 = i8;
                                break;
                        }
                    } catch (K unused3) {
                        i8 = i12;
                    }
                } else {
                    if (iR == Integer.MAX_VALUE) {
                        while (i12 < i11) {
                            j(obj, iArr[i12], objB);
                            i12++;
                        }
                        if (objB != null) {
                            c2789p1.getClass();
                            ((D) obj).zzc = (C2781o0) objB;
                            return;
                        }
                        return;
                    }
                    c2789p1.getClass();
                    if (objB == null) {
                        D d8 = (D) obj;
                        C2781o0 c2781o0B2 = d8.zzc;
                        if (c2781o0B2 == c2781o0) {
                            c2781o0B2 = C2781o0.b();
                            d8.zzc = c2781o0B2;
                        }
                        objB = c2781o0B2;
                    }
                    if (!C2789p0.d(objB, c2827u)) {
                        while (i12 < i11) {
                            j(obj, iArr[i12], objB);
                            i12++;
                        }
                        if (objB != null) {
                            ((D) obj).zzc = (C2781o0) objB;
                            return;
                        }
                        return;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                i8 = i12;
            }
        }
    }

    public final int d(int i8, int i9) {
        int[] iArr = this.f23743a;
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

    public final int f(int i8) {
        return this.f23743a[i8 + 1];
    }

    public final G h(int i8) {
        int i9 = i8 / 3;
        return (G) this.f23744b[i9 + i9 + 1];
    }

    public final InterfaceC2749k0 i(int i8) {
        int i9 = i8 / 3;
        int i10 = i9 + i9;
        Object[] objArr = this.f23744b;
        InterfaceC2749k0 interfaceC2749k0 = (InterfaceC2749k0) objArr[i10];
        if (interfaceC2749k0 != null) {
            return interfaceC2749k0;
        }
        InterfaceC2749k0 interfaceC2749k0A = C2725h0.f23828c.a((Class) objArr[i10 + 1]);
        objArr[i10] = interfaceC2749k0A;
        return interfaceC2749k0A;
    }

    public final void j(Object obj, int i8, Object obj2) {
        int i9 = this.f23743a[i8];
        Object objF = AbstractC2836v0.f24034c.f(obj, f(i8) & 1048575);
        if (objF == null || h(i8) == null) {
            return;
        }
        A0.O.I(k(i8));
        throw null;
    }

    public final Object k(int i8) {
        int i9 = i8 / 3;
        return this.f23744b[i9 + i9];
    }

    public final void m(int i8, Object obj, Object obj2) {
        long jF = f(i8) & 1048575;
        if (t(i8, obj2)) {
            C2820t0 c2820t0 = AbstractC2836v0.f24034c;
            Object objF = c2820t0.f(obj, jF);
            Object objF2 = c2820t0.f(obj2, jF);
            if (objF != null && objF2 != null) {
                AbstractC2836v0.q(obj, jF, J.b(objF, objF2));
                p(i8, obj);
            } else if (objF2 != null) {
                AbstractC2836v0.q(obj, jF, objF2);
                p(i8, obj);
            }
        }
    }

    public final void n(int i8, Object obj, Object obj2) {
        int iF = f(i8);
        int i9 = this.f23743a[i8];
        long j8 = iF & 1048575;
        if (u(i9, obj2, i8)) {
            Object objF = u(i9, obj, i8) ? AbstractC2836v0.f24034c.f(obj, j8) : null;
            Object objF2 = AbstractC2836v0.f24034c.f(obj2, j8);
            if (objF != null && objF2 != null) {
                AbstractC2836v0.q(obj, j8, J.b(objF, objF2));
                q(i9, obj, i8);
            } else if (objF2 != null) {
                AbstractC2836v0.q(obj, j8, objF2);
                q(i9, obj, i8);
            }
        }
    }

    public final void o(Object obj, int i8, C2827u c2827u) {
        if ((536870912 & i8) != 0) {
            AbstractC2836v0.q(obj, i8 & 1048575, c2827u.u());
        } else if (this.f23748f) {
            AbstractC2836v0.q(obj, i8 & 1048575, c2827u.t());
        } else {
            AbstractC2836v0.q(obj, i8 & 1048575, c2827u.s());
        }
    }

    public final void p(int i8, Object obj) {
        int i9 = this.f23743a[i8 + 2];
        long j8 = 1048575 & i9;
        if (j8 == 1048575) {
            return;
        }
        AbstractC2836v0.o(obj, j8, (1 << (i9 >>> 20)) | AbstractC2836v0.f24034c.c(obj, j8));
    }

    public final void q(int i8, Object obj, int i9) {
        AbstractC2836v0.o(obj, this.f23743a[i9 + 2] & 1048575, i8);
    }

    public final void r(Object obj, C2843w c2843w) throws I0.u {
        int i8;
        int[] iArr = this.f23743a;
        int length = iArr.length;
        int i9 = 1048575;
        int i10 = 0;
        int i11 = 0;
        int i12 = 1048575;
        while (i10 < length) {
            int iF = f(i10);
            int i13 = iArr[i10];
            int iE = e(iF);
            Unsafe unsafe = f23742n;
            if (iE <= 17) {
                int i14 = iArr[i10 + 2];
                int i15 = i14 & i9;
                if (i15 != i12) {
                    i11 = unsafe.getInt(obj, i15);
                    i12 = i15;
                }
                i8 = 1 << (i14 >>> 20);
            } else {
                i8 = 0;
            }
            int i16 = i8;
            long j8 = iF & i9;
            switch (iE) {
                case 0:
                    if ((i11 & i16) != 0) {
                        c2843w.g(i13, AbstractC2836v0.d(obj, j8));
                        continue;
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 1:
                    if ((i11 & i16) != 0) {
                        c2843w.k(i13, AbstractC2836v0.e(obj, j8));
                    } else {
                        continue;
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 2:
                    if ((i11 & i16) != 0) {
                        c2843w.n(i13, unsafe.getLong(obj, j8));
                    } else {
                        continue;
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 3:
                    if ((i11 & i16) != 0) {
                        c2843w.d(i13, unsafe.getLong(obj, j8));
                    } else {
                        continue;
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 4:
                    if ((i11 & i16) != 0) {
                        c2843w.m(i13, unsafe.getInt(obj, j8));
                    } else {
                        continue;
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 5:
                    if ((i11 & i16) != 0) {
                        c2843w.j(i13, unsafe.getLong(obj, j8));
                    } else {
                        continue;
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 6:
                    if ((i11 & i16) != 0) {
                        c2843w.i(i13, unsafe.getInt(obj, j8));
                    } else {
                        continue;
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 7:
                    if ((i11 & i16) != 0) {
                        c2843w.e(i13, AbstractC2836v0.u(obj, j8));
                    } else {
                        continue;
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 8:
                    if ((i11 & i16) != 0) {
                        v(i13, unsafe.getObject(obj, j8), c2843w);
                    } else {
                        continue;
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 9:
                    if ((i11 & i16) != 0) {
                        c2843w.o(i13, i(i10), unsafe.getObject(obj, j8));
                    } else {
                        continue;
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 10:
                    if ((i11 & i16) != 0) {
                        c2843w.f(i13, (r) unsafe.getObject(obj, j8));
                    } else {
                        continue;
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 11:
                    if ((i11 & i16) != 0) {
                        c2843w.c(i13, unsafe.getInt(obj, j8));
                    } else {
                        continue;
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 12:
                    if ((i11 & i16) != 0) {
                        c2843w.h(i13, unsafe.getInt(obj, j8));
                    } else {
                        continue;
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 13:
                    if ((i11 & i16) != 0) {
                        c2843w.p(i13, unsafe.getInt(obj, j8));
                    } else {
                        continue;
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 14:
                    if ((i11 & i16) != 0) {
                        c2843w.q(i13, unsafe.getLong(obj, j8));
                    } else {
                        continue;
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 15:
                    if ((i11 & i16) != 0) {
                        c2843w.a(i13, unsafe.getInt(obj, j8));
                    } else {
                        continue;
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 16:
                    if ((i11 & i16) != 0) {
                        c2843w.b(i13, unsafe.getLong(obj, j8));
                    } else {
                        continue;
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 17:
                    if ((i11 & i16) != 0) {
                        c2843w.l(i13, i(i10), unsafe.getObject(obj, j8));
                    } else {
                        continue;
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 18:
                    AbstractC2757l0.f(iArr[i10], (List) unsafe.getObject(obj, j8), c2843w, false);
                    continue;
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 19:
                    AbstractC2757l0.j(iArr[i10], (List) unsafe.getObject(obj, j8), c2843w, false);
                    continue;
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 20:
                    AbstractC2757l0.m(iArr[i10], (List) unsafe.getObject(obj, j8), c2843w, false);
                    continue;
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 21:
                    AbstractC2757l0.u(iArr[i10], (List) unsafe.getObject(obj, j8), c2843w, false);
                    continue;
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 22:
                    AbstractC2757l0.l(iArr[i10], (List) unsafe.getObject(obj, j8), c2843w, false);
                    continue;
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 23:
                    AbstractC2757l0.i(iArr[i10], (List) unsafe.getObject(obj, j8), c2843w, false);
                    continue;
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 24:
                    AbstractC2757l0.h(iArr[i10], (List) unsafe.getObject(obj, j8), c2843w, false);
                    continue;
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 25:
                    AbstractC2757l0.d(iArr[i10], (List) unsafe.getObject(obj, j8), c2843w, false);
                    continue;
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case Service.BILLING_FIELD_NUMBER /* 26 */:
                    AbstractC2757l0.s(iArr[i10], (List) unsafe.getObject(obj, j8), c2843w);
                    break;
                case 27:
                    AbstractC2757l0.n(iArr[i10], (List) unsafe.getObject(obj, j8), c2843w, i(i10));
                    break;
                case Service.MONITORING_FIELD_NUMBER /* 28 */:
                    AbstractC2757l0.e(iArr[i10], (List) unsafe.getObject(obj, j8), c2843w);
                    break;
                case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                    AbstractC2757l0.t(iArr[i10], (List) unsafe.getObject(obj, j8), c2843w, false);
                    break;
                case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                    AbstractC2757l0.g(iArr[i10], (List) unsafe.getObject(obj, j8), c2843w, false);
                    break;
                case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                    AbstractC2757l0.o(iArr[i10], (List) unsafe.getObject(obj, j8), c2843w, false);
                    break;
                case 32:
                    AbstractC2757l0.p(iArr[i10], (List) unsafe.getObject(obj, j8), c2843w, false);
                    break;
                case 33:
                    AbstractC2757l0.q(iArr[i10], (List) unsafe.getObject(obj, j8), c2843w, false);
                    break;
                case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                    AbstractC2757l0.r(iArr[i10], (List) unsafe.getObject(obj, j8), c2843w, false);
                    break;
                case 35:
                    AbstractC2757l0.f(iArr[i10], (List) unsafe.getObject(obj, j8), c2843w, true);
                    break;
                case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                    AbstractC2757l0.j(iArr[i10], (List) unsafe.getObject(obj, j8), c2843w, true);
                    break;
                case 37:
                    AbstractC2757l0.m(iArr[i10], (List) unsafe.getObject(obj, j8), c2843w, true);
                    break;
                case 38:
                    AbstractC2757l0.u(iArr[i10], (List) unsafe.getObject(obj, j8), c2843w, true);
                    break;
                case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                    AbstractC2757l0.l(iArr[i10], (List) unsafe.getObject(obj, j8), c2843w, true);
                    break;
                case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                    AbstractC2757l0.i(iArr[i10], (List) unsafe.getObject(obj, j8), c2843w, true);
                    break;
                case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
                    AbstractC2757l0.h(iArr[i10], (List) unsafe.getObject(obj, j8), c2843w, true);
                    break;
                case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                    AbstractC2757l0.d(iArr[i10], (List) unsafe.getObject(obj, j8), c2843w, true);
                    break;
                case 43:
                    AbstractC2757l0.t(iArr[i10], (List) unsafe.getObject(obj, j8), c2843w, true);
                    break;
                case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                    AbstractC2757l0.g(iArr[i10], (List) unsafe.getObject(obj, j8), c2843w, true);
                    break;
                case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                    AbstractC2757l0.o(iArr[i10], (List) unsafe.getObject(obj, j8), c2843w, true);
                    break;
                case 46:
                    AbstractC2757l0.p(iArr[i10], (List) unsafe.getObject(obj, j8), c2843w, true);
                    break;
                case 47:
                    AbstractC2757l0.q(iArr[i10], (List) unsafe.getObject(obj, j8), c2843w, true);
                    break;
                case 48:
                    AbstractC2757l0.r(iArr[i10], (List) unsafe.getObject(obj, j8), c2843w, true);
                    break;
                case 49:
                    AbstractC2757l0.k(iArr[i10], (List) unsafe.getObject(obj, j8), c2843w, i(i10));
                    break;
                case 50:
                    if (unsafe.getObject(obj, j8) != null) {
                        A0.O.I(k(i10));
                        throw null;
                    }
                    break;
                case 51:
                    if (u(i13, obj, i10)) {
                        c2843w.g(i13, ((Double) AbstractC2836v0.f24034c.f(obj, j8)).doubleValue());
                    }
                    break;
                case 52:
                    if (u(i13, obj, i10)) {
                        c2843w.k(i13, ((Float) AbstractC2836v0.f24034c.f(obj, j8)).floatValue());
                    }
                    break;
                case 53:
                    if (u(i13, obj, i10)) {
                        c2843w.n(i13, g(obj, j8));
                    }
                    break;
                case 54:
                    if (u(i13, obj, i10)) {
                        c2843w.d(i13, g(obj, j8));
                    }
                    break;
                case 55:
                    if (u(i13, obj, i10)) {
                        c2843w.m(i13, C(obj, j8));
                    }
                    break;
                case 56:
                    if (u(i13, obj, i10)) {
                        c2843w.j(i13, g(obj, j8));
                    }
                    break;
                case 57:
                    if (u(i13, obj, i10)) {
                        c2843w.i(i13, C(obj, j8));
                    }
                    break;
                case 58:
                    if (u(i13, obj, i10)) {
                        c2843w.e(i13, ((Boolean) AbstractC2836v0.f24034c.f(obj, j8)).booleanValue());
                    }
                    break;
                case 59:
                    if (u(i13, obj, i10)) {
                        v(i13, unsafe.getObject(obj, j8), c2843w);
                    }
                    break;
                case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                    if (u(i13, obj, i10)) {
                        c2843w.o(i13, i(i10), unsafe.getObject(obj, j8));
                    }
                    break;
                case 61:
                    if (u(i13, obj, i10)) {
                        c2843w.f(i13, (r) unsafe.getObject(obj, j8));
                    }
                    break;
                case 62:
                    if (u(i13, obj, i10)) {
                        c2843w.c(i13, C(obj, j8));
                    }
                    break;
                case 63:
                    if (u(i13, obj, i10)) {
                        c2843w.h(i13, C(obj, j8));
                    }
                    break;
                case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                    if (u(i13, obj, i10)) {
                        c2843w.p(i13, C(obj, j8));
                    }
                    break;
                case 65:
                    if (u(i13, obj, i10)) {
                        c2843w.q(i13, g(obj, j8));
                    }
                    break;
                case 66:
                    if (u(i13, obj, i10)) {
                        c2843w.a(i13, C(obj, j8));
                    }
                    break;
                case 67:
                    if (u(i13, obj, i10)) {
                        c2843w.b(i13, g(obj, j8));
                    }
                    break;
                case 68:
                    if (u(i13, obj, i10)) {
                        c2843w.l(i13, i(i10), unsafe.getObject(obj, j8));
                    }
                    break;
            }
            i10 += 3;
            i9 = 1048575;
        }
        this.f23754l.getClass();
        C2789p0.c(C2789p0.b(obj), c2843w);
    }

    public final boolean s(int i8, Object obj, Object obj2) {
        return t(i8, obj) == t(i8, obj2);
    }

    public final boolean t(int i8, Object obj) {
        int i9 = this.f23743a[i8 + 2];
        long j8 = i9 & 1048575;
        if (j8 != 1048575) {
            return (AbstractC2836v0.f24034c.c(obj, j8) & (1 << (i9 >>> 20))) != 0;
        }
        int iF = f(i8);
        long j9 = iF & 1048575;
        switch (e(iF)) {
            case 0:
                return Double.doubleToRawLongBits(AbstractC2836v0.d(obj, j9)) != 0;
            case 1:
                return Float.floatToRawIntBits(AbstractC2836v0.e(obj, j9)) != 0;
            case 2:
                return AbstractC2836v0.f24034c.d(obj, j9) != 0;
            case 3:
                return AbstractC2836v0.f24034c.d(obj, j9) != 0;
            case 4:
                return AbstractC2836v0.f24034c.c(obj, j9) != 0;
            case 5:
                return AbstractC2836v0.f24034c.d(obj, j9) != 0;
            case 6:
                return AbstractC2836v0.f24034c.c(obj, j9) != 0;
            case 7:
                return AbstractC2836v0.u(obj, j9);
            case 8:
                Object objF = AbstractC2836v0.f24034c.f(obj, j9);
                if (objF instanceof String) {
                    return !((String) objF).isEmpty();
                }
                if (objF instanceof r) {
                    return !r.f23990H.equals(objF);
                }
                throw new IllegalArgumentException();
            case 9:
                return AbstractC2836v0.f24034c.f(obj, j9) != null;
            case 10:
                return !r.f23990H.equals(AbstractC2836v0.f24034c.f(obj, j9));
            case 11:
                return AbstractC2836v0.f24034c.c(obj, j9) != 0;
            case 12:
                return AbstractC2836v0.f24034c.c(obj, j9) != 0;
            case 13:
                return AbstractC2836v0.f24034c.c(obj, j9) != 0;
            case 14:
                return AbstractC2836v0.f24034c.d(obj, j9) != 0;
            case 15:
                return AbstractC2836v0.f24034c.c(obj, j9) != 0;
            case 16:
                return AbstractC2836v0.f24034c.d(obj, j9) != 0;
            case 17:
                return AbstractC2836v0.f24034c.f(obj, j9) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    public final boolean u(int i8, Object obj, int i9) {
        return AbstractC2836v0.f24034c.c(obj, (long) (this.f23743a[i9 + 2] & 1048575)) == i8;
    }

    public final int w(Object obj, byte[] bArr, int i8, int i9, int i10, C0022w c0022w) {
        Unsafe unsafe;
        Object obj2;
        int i11;
        int iB0;
        int iD;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int iF0;
        C2685c0 c2685c0 = this;
        Object obj3 = obj;
        bArr = bArr;
        i9 = i9;
        i10 = i10;
        c0022w = c0022w;
        int iW0 = i8;
        int i25 = 0;
        int i26 = -1;
        int i27 = 0;
        int i28 = 0;
        int i29 = 1048575;
        while (true) {
            Unsafe unsafe2 = f23742n;
            if (iW0 < i9) {
                int i30 = iW0 + 1;
                byte b8 = bArr[iW0];
                if (b8 < 0) {
                    iB0 = AbstractC2864y4.B0(b8, bArr, i30, c0022w);
                    i11 = c0022w.f220b;
                } else {
                    i11 = b8;
                    iB0 = i30;
                }
                int i31 = i11 >>> 3;
                int i32 = i11 & 7;
                int i33 = c2685c0.f23746d;
                int i34 = iB0;
                int i35 = c2685c0.f23745c;
                int i36 = i11;
                if (i31 > i26) {
                    iD = (i31 < i35 || i31 > i33) ? -1 : c2685c0.d(i31, i27 / 3);
                    i12 = -1;
                } else {
                    iD = (i31 < i35 || i31 > i33) ? -1 : c2685c0.d(i31, 0);
                    i12 = -1;
                }
                if (iD == i12) {
                    i13 = i28;
                    i14 = i31;
                    unsafe = unsafe2;
                    i10 = i10;
                    obj2 = obj3;
                    i15 = i34;
                    i16 = i36;
                    i17 = 0;
                } else {
                    int[] iArr = c2685c0.f23743a;
                    int i37 = iArr[iD + 1];
                    int iE = e(i37);
                    long j8 = i37 & 1048575;
                    if (iE <= 17) {
                        int i38 = iArr[iD + 2];
                        int i39 = 1 << (i38 >>> 20);
                        int i40 = i38 & 1048575;
                        if (i40 != i29) {
                            if (i29 != 1048575) {
                                unsafe2.putInt(obj3, i29, i28);
                            }
                            i22 = unsafe2.getInt(obj3, i40);
                            i19 = i40;
                        } else {
                            i19 = i29;
                            i22 = i28;
                        }
                        switch (iE) {
                            case 0:
                                i18 = i31;
                                i15 = i34;
                                i23 = iD;
                                i24 = i36;
                                bArr = bArr;
                                if (i32 == 1) {
                                    AbstractC2836v0.m(obj3, j8, Double.longBitsToDouble(AbstractC2864y4.H0(bArr, i15)));
                                    iW0 = i15 + 8;
                                    i28 = i22 | i39;
                                    i27 = i23;
                                    i25 = i24;
                                    i26 = i18;
                                    i29 = i19;
                                    i10 = i10;
                                } else {
                                    i13 = i22;
                                    i17 = i23;
                                    unsafe = unsafe2;
                                    i16 = i24;
                                    obj2 = obj3;
                                    i14 = i18;
                                    i29 = i19;
                                    i10 = i10;
                                }
                                break;
                            case 1:
                                i18 = i31;
                                i15 = i34;
                                i23 = iD;
                                i24 = i36;
                                bArr = bArr;
                                if (i32 == 5) {
                                    AbstractC2836v0.n(obj3, j8, Float.intBitsToFloat(AbstractC2864y4.D(bArr, i15)));
                                    iW0 = i15 + 4;
                                    i28 = i22 | i39;
                                    i27 = i23;
                                    i25 = i24;
                                    i26 = i18;
                                    i29 = i19;
                                    i10 = i10;
                                } else {
                                    i13 = i22;
                                    i17 = i23;
                                    unsafe = unsafe2;
                                    i16 = i24;
                                    obj2 = obj3;
                                    i14 = i18;
                                    i29 = i19;
                                    i10 = i10;
                                }
                                break;
                            case 2:
                            case 3:
                                i18 = i31;
                                i15 = i34;
                                i23 = iD;
                                i24 = i36;
                                bArr = bArr;
                                if (i32 == 0) {
                                    iF0 = AbstractC2864y4.F0(bArr, i15, c0022w);
                                    unsafe2.putLong(obj, j8, c0022w.f219a);
                                    i28 = i22 | i39;
                                    i27 = i23;
                                    iW0 = iF0;
                                    i25 = i24;
                                    i26 = i18;
                                    i29 = i19;
                                    i10 = i10;
                                } else {
                                    i13 = i22;
                                    i17 = i23;
                                    unsafe = unsafe2;
                                    i16 = i24;
                                    obj2 = obj3;
                                    i14 = i18;
                                    i29 = i19;
                                    i10 = i10;
                                }
                                break;
                            case 4:
                            case 11:
                                i18 = i31;
                                i15 = i34;
                                i23 = iD;
                                i24 = i36;
                                bArr = bArr;
                                if (i32 == 0) {
                                    iW0 = AbstractC2864y4.y0(bArr, i15, c0022w);
                                    unsafe2.putInt(obj3, j8, c0022w.f220b);
                                    i28 = i22 | i39;
                                    i27 = i23;
                                    i25 = i24;
                                    i26 = i18;
                                    i29 = i19;
                                    i10 = i10;
                                } else {
                                    i13 = i22;
                                    i17 = i23;
                                    unsafe = unsafe2;
                                    i16 = i24;
                                    obj2 = obj3;
                                    i14 = i18;
                                    i29 = i19;
                                    i10 = i10;
                                }
                                break;
                            case 5:
                            case 14:
                                i18 = i31;
                                i15 = i34;
                                i23 = iD;
                                i24 = i36;
                                bArr = bArr;
                                if (i32 == 1) {
                                    unsafe2.putLong(obj, j8, AbstractC2864y4.H0(bArr, i15));
                                    iW0 = i15 + 8;
                                    i28 = i22 | i39;
                                    i27 = i23;
                                    i25 = i24;
                                    i26 = i18;
                                    i29 = i19;
                                    i10 = i10;
                                } else {
                                    i13 = i22;
                                    i17 = i23;
                                    unsafe = unsafe2;
                                    i16 = i24;
                                    obj2 = obj3;
                                    i14 = i18;
                                    i29 = i19;
                                    i10 = i10;
                                }
                                break;
                            case 6:
                            case 13:
                                i18 = i31;
                                i15 = i34;
                                i23 = iD;
                                i24 = i36;
                                bArr = bArr;
                                if (i32 == 5) {
                                    unsafe2.putInt(obj3, j8, AbstractC2864y4.D(bArr, i15));
                                    iW0 = i15 + 4;
                                    i28 = i22 | i39;
                                    i27 = i23;
                                    i25 = i24;
                                    i26 = i18;
                                    i29 = i19;
                                    i10 = i10;
                                } else {
                                    i13 = i22;
                                    i17 = i23;
                                    unsafe = unsafe2;
                                    i16 = i24;
                                    obj2 = obj3;
                                    i14 = i18;
                                    i29 = i19;
                                    i10 = i10;
                                }
                                break;
                            case 7:
                                i18 = i31;
                                i15 = i34;
                                i23 = iD;
                                i24 = i36;
                                bArr = bArr;
                                if (i32 == 0) {
                                    iW0 = AbstractC2864y4.F0(bArr, i15, c0022w);
                                    AbstractC2836v0.k(obj3, j8, c0022w.f219a != 0);
                                    i28 = i22 | i39;
                                    i27 = i23;
                                    i25 = i24;
                                    i26 = i18;
                                    i29 = i19;
                                    i10 = i10;
                                } else {
                                    i13 = i22;
                                    i17 = i23;
                                    unsafe = unsafe2;
                                    i16 = i24;
                                    obj2 = obj3;
                                    i14 = i18;
                                    i29 = i19;
                                    i10 = i10;
                                }
                                break;
                            case 8:
                                i18 = i31;
                                i15 = i34;
                                i23 = iD;
                                i24 = i36;
                                bArr = bArr;
                                if (i32 == 2) {
                                    iW0 = (i37 & 536870912) == 0 ? AbstractC2864y4.q0(bArr, i15, c0022w) : AbstractC2864y4.t0(bArr, i15, c0022w);
                                    unsafe2.putObject(obj3, j8, c0022w.f221c);
                                    i28 = i22 | i39;
                                    i27 = i23;
                                    i25 = i24;
                                    i26 = i18;
                                    i29 = i19;
                                    i10 = i10;
                                } else {
                                    i13 = i22;
                                    i17 = i23;
                                    unsafe = unsafe2;
                                    i16 = i24;
                                    obj2 = obj3;
                                    i14 = i18;
                                    i29 = i19;
                                    i10 = i10;
                                }
                                break;
                            case 9:
                                i18 = i31;
                                i15 = i34;
                                i23 = iD;
                                i24 = i36;
                                bArr = bArr;
                                if (i32 == 2) {
                                    iW0 = AbstractC2864y4.a0(c2685c0.i(i23), bArr, i15, i9, c0022w);
                                    if ((i22 & i39) == 0) {
                                        unsafe2.putObject(obj3, j8, c0022w.f221c);
                                    } else {
                                        unsafe2.putObject(obj3, j8, J.b(unsafe2.getObject(obj3, j8), c0022w.f221c));
                                    }
                                    i28 = i22 | i39;
                                    i27 = i23;
                                    i25 = i24;
                                    i26 = i18;
                                    i29 = i19;
                                    i10 = i10;
                                } else {
                                    i13 = i22;
                                    i17 = i23;
                                    unsafe = unsafe2;
                                    i16 = i24;
                                    obj2 = obj3;
                                    i14 = i18;
                                    i29 = i19;
                                    i10 = i10;
                                }
                                break;
                            case 10:
                                i18 = i31;
                                i15 = i34;
                                i23 = iD;
                                i24 = i36;
                                bArr = bArr;
                                if (i32 == 2) {
                                    iW0 = AbstractC2864y4.c(bArr, i15, c0022w);
                                    unsafe2.putObject(obj3, j8, c0022w.f221c);
                                    i28 = i22 | i39;
                                    i27 = i23;
                                    i25 = i24;
                                    i26 = i18;
                                    i29 = i19;
                                    i10 = i10;
                                } else {
                                    i13 = i22;
                                    i17 = i23;
                                    unsafe = unsafe2;
                                    i16 = i24;
                                    obj2 = obj3;
                                    i14 = i18;
                                    i29 = i19;
                                    i10 = i10;
                                }
                                break;
                            case 12:
                                i18 = i31;
                                i15 = i34;
                                i23 = iD;
                                i24 = i36;
                                bArr = bArr;
                                if (i32 == 0) {
                                    iW0 = AbstractC2864y4.y0(bArr, i15, c0022w);
                                    int i41 = c0022w.f220b;
                                    G gH = c2685c0.h(i23);
                                    if (gH == null || gH.zza(i41)) {
                                        unsafe2.putInt(obj3, j8, i41);
                                        i28 = i22 | i39;
                                    } else {
                                        x(obj).c(i24, Long.valueOf(i41));
                                        i28 = i22;
                                    }
                                    i27 = i23;
                                    i25 = i24;
                                    i26 = i18;
                                    i29 = i19;
                                    i10 = i10;
                                } else {
                                    i13 = i22;
                                    i17 = i23;
                                    unsafe = unsafe2;
                                    i16 = i24;
                                    obj2 = obj3;
                                    i14 = i18;
                                    i29 = i19;
                                    i10 = i10;
                                }
                                break;
                            case 15:
                                i18 = i31;
                                i15 = i34;
                                i23 = iD;
                                i24 = i36;
                                bArr = bArr;
                                if (i32 == 0) {
                                    iW0 = AbstractC2864y4.y0(bArr, i15, c0022w);
                                    unsafe2.putInt(obj3, j8, C2819t.i(c0022w.f220b));
                                    i28 = i22 | i39;
                                    i27 = i23;
                                    i25 = i24;
                                    i26 = i18;
                                    i29 = i19;
                                    i10 = i10;
                                } else {
                                    i13 = i22;
                                    i17 = i23;
                                    unsafe = unsafe2;
                                    i16 = i24;
                                    obj2 = obj3;
                                    i14 = i18;
                                    i29 = i19;
                                    i10 = i10;
                                }
                                break;
                            case 16:
                                i18 = i31;
                                i15 = i34;
                                i23 = iD;
                                if (i32 == 0) {
                                    bArr = bArr;
                                    iF0 = AbstractC2864y4.F0(bArr, i15, c0022w);
                                    i24 = i36;
                                    unsafe2.putLong(obj, j8, C2819t.j(c0022w.f219a));
                                    i28 = i22 | i39;
                                    i27 = i23;
                                    iW0 = iF0;
                                    i25 = i24;
                                    i26 = i18;
                                    i29 = i19;
                                    i10 = i10;
                                } else {
                                    i24 = i36;
                                    i13 = i22;
                                    i17 = i23;
                                    unsafe = unsafe2;
                                    i16 = i24;
                                    obj2 = obj3;
                                    i14 = i18;
                                    i29 = i19;
                                    i10 = i10;
                                }
                                break;
                            default:
                                if (i32 == 3) {
                                    int i42 = (i31 << 3) | 4;
                                    int i43 = iD;
                                    iW0 = AbstractC2864y4.R(c2685c0.i(iD), bArr, i34, i9, i42, c0022w);
                                    if ((i22 & i39) == 0) {
                                        unsafe2.putObject(obj3, j8, c0022w.f221c);
                                    } else {
                                        unsafe2.putObject(obj3, j8, J.b(unsafe2.getObject(obj3, j8), c0022w.f221c));
                                    }
                                    i28 = i22 | i39;
                                    i27 = i43;
                                    i25 = i36;
                                    i26 = i31;
                                    i29 = i19;
                                } else {
                                    i18 = i31;
                                    i15 = i34;
                                    i23 = iD;
                                    i24 = i36;
                                    i13 = i22;
                                    i17 = i23;
                                    unsafe = unsafe2;
                                    i16 = i24;
                                    obj2 = obj3;
                                    i14 = i18;
                                    i29 = i19;
                                    i10 = i10;
                                }
                                break;
                        }
                    } else {
                        i18 = i31;
                        int i44 = iD;
                        bArr = bArr;
                        if (iE != 27) {
                            i13 = i28;
                            i19 = i29;
                            if (iE <= 49) {
                                i17 = i44;
                                i14 = i18;
                                unsafe = unsafe2;
                                iW0 = G(obj, bArr, i34, i9, i36, i18, i32, i17, i37, iE, j8, c0022w);
                                if (iW0 != i34) {
                                    c2685c0 = this;
                                    obj3 = obj;
                                    i9 = i9;
                                    c0022w = c0022w;
                                    i28 = i13;
                                    i26 = i14;
                                    i25 = i36;
                                    i27 = i17;
                                    i29 = i19;
                                } else {
                                    obj2 = obj;
                                    i15 = iW0;
                                    i16 = i36;
                                }
                            } else {
                                i20 = i34;
                                unsafe = unsafe2;
                                i21 = i36;
                                i14 = i18;
                                i17 = i44;
                                if (iE != 50) {
                                    obj2 = obj;
                                    iW0 = E(obj, bArr, i20, i9, i21, i14, i32, i37, iE, j8, i17, c0022w);
                                    if (iW0 != i20) {
                                        i10 = i10;
                                        obj3 = obj2;
                                        i28 = i13;
                                        i26 = i14;
                                        i25 = i21;
                                        i27 = i17;
                                        i29 = i19;
                                    } else {
                                        i15 = iW0;
                                        i16 = i21;
                                        i17 = i17;
                                    }
                                } else if (i32 == 2) {
                                    D(obj, i17, j8);
                                    throw null;
                                }
                                c2685c0 = this;
                            }
                            i29 = i19;
                        } else if (i32 == 2) {
                            AbstractC2748k abstractC2748k = (AbstractC2748k) ((I) unsafe2.getObject(obj3, j8));
                            boolean zZzc = abstractC2748k.zzc();
                            AbstractC2748k abstractC2748k2 = abstractC2748k;
                            if (!zZzc) {
                                int size = abstractC2748k.size();
                                I iZzd = abstractC2748k.zzd(size == 0 ? 10 : size + size);
                                unsafe2.putObject(obj3, j8, iZzd);
                                abstractC2748k2 = iZzd;
                            }
                            i25 = i36;
                            i19 = i29;
                            iW0 = AbstractC2864y4.i0(c2685c0.i(i44), i25, bArr, i34, i9, abstractC2748k2, c0022w);
                            i27 = i44;
                            i28 = i28;
                            i26 = i18;
                            i29 = i19;
                            i10 = i10;
                        } else {
                            i13 = i28;
                            i19 = i29;
                            i20 = i34;
                            i17 = i44;
                            unsafe = unsafe2;
                            i21 = i36;
                            i14 = i18;
                        }
                        i10 = i10;
                        i15 = i20;
                        i16 = i21;
                        i29 = i19;
                        obj2 = obj;
                    }
                }
                if (i16 != i10 || i10 == 0) {
                    iW0 = AbstractC2864y4.w0(i16, bArr, i15, i9, x(obj), c0022w);
                    i10 = i10;
                    i25 = i16;
                    obj3 = obj2;
                    i28 = i13;
                    i26 = i14;
                    i27 = i17;
                    c2685c0 = this;
                } else {
                    iW0 = i15;
                    i25 = i16;
                    i28 = i13;
                }
            } else {
                unsafe = unsafe2;
                i10 = i10;
                obj2 = obj3;
            }
        }
        if (i29 != 1048575) {
            unsafe.putInt(obj2, i29, i28);
        }
        for (int i45 = this.f23751i; i45 < this.f23752j; i45++) {
            j(obj2, this.f23750h[i45], null);
        }
        if (i10 == 0) {
            if (iW0 != i9) {
                throw L.d();
            }
        } else if (iW0 > i9 || i25 != i10) {
            throw L.d();
        }
        return iW0;
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2749k0
    public final int zza(Object obj) {
        return this.f23749g ? B(obj) : A(obj);
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00e1 A[PHI: r3
      0x00e1: PHI (r3v32 int) = (r3v10 int), (r3v33 int) binds: [B:83:0x0215, B:41:0x00df] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.gms.internal.pal.InterfaceC2749k0
    public final int zzb(Object obj) {
        int i8;
        int iA;
        int i9;
        int[] iArr = this.f23743a;
        int length = iArr.length;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11 += 3) {
            int iF = f(i11);
            int i12 = iArr[i11];
            long j8 = 1048575 & iF;
            int i13 = 1237;
            int iHashCode = 37;
            switch (e(iF)) {
                case 0:
                    i8 = i10 * 53;
                    iA = J.a(Double.doubleToLongBits(AbstractC2836v0.d(obj, j8)));
                    i10 = iA + i8;
                    break;
                case 1:
                    i8 = i10 * 53;
                    iA = Float.floatToIntBits(AbstractC2836v0.e(obj, j8));
                    i10 = iA + i8;
                    break;
                case 2:
                    i8 = i10 * 53;
                    iA = J.a(AbstractC2836v0.f24034c.d(obj, j8));
                    i10 = iA + i8;
                    break;
                case 3:
                    i8 = i10 * 53;
                    iA = J.a(AbstractC2836v0.f24034c.d(obj, j8));
                    i10 = iA + i8;
                    break;
                case 4:
                    i8 = i10 * 53;
                    iA = AbstractC2836v0.f24034c.c(obj, j8);
                    i10 = iA + i8;
                    break;
                case 5:
                    i8 = i10 * 53;
                    iA = J.a(AbstractC2836v0.f24034c.d(obj, j8));
                    i10 = iA + i8;
                    break;
                case 6:
                    i8 = i10 * 53;
                    iA = AbstractC2836v0.f24034c.c(obj, j8);
                    i10 = iA + i8;
                    break;
                case 7:
                    i9 = i10 * 53;
                    boolean zU = AbstractC2836v0.u(obj, j8);
                    Charset charset = J.f23560a;
                    if (zU) {
                        i13 = 1231;
                    }
                    i10 = i13 + i9;
                    break;
                case 8:
                    i8 = i10 * 53;
                    iA = ((String) AbstractC2836v0.f24034c.f(obj, j8)).hashCode();
                    i10 = iA + i8;
                    break;
                case 9:
                    Object objF = AbstractC2836v0.f24034c.f(obj, j8);
                    if (objF != null) {
                        iHashCode = objF.hashCode();
                    }
                    i10 = (i10 * 53) + iHashCode;
                    break;
                case 10:
                    i8 = i10 * 53;
                    iA = AbstractC2836v0.f24034c.f(obj, j8).hashCode();
                    i10 = iA + i8;
                    break;
                case 11:
                    i8 = i10 * 53;
                    iA = AbstractC2836v0.f24034c.c(obj, j8);
                    i10 = iA + i8;
                    break;
                case 12:
                    i8 = i10 * 53;
                    iA = AbstractC2836v0.f24034c.c(obj, j8);
                    i10 = iA + i8;
                    break;
                case 13:
                    i8 = i10 * 53;
                    iA = AbstractC2836v0.f24034c.c(obj, j8);
                    i10 = iA + i8;
                    break;
                case 14:
                    i8 = i10 * 53;
                    iA = J.a(AbstractC2836v0.f24034c.d(obj, j8));
                    i10 = iA + i8;
                    break;
                case 15:
                    i8 = i10 * 53;
                    iA = AbstractC2836v0.f24034c.c(obj, j8);
                    i10 = iA + i8;
                    break;
                case 16:
                    i8 = i10 * 53;
                    iA = J.a(AbstractC2836v0.f24034c.d(obj, j8));
                    i10 = iA + i8;
                    break;
                case 17:
                    Object objF2 = AbstractC2836v0.f24034c.f(obj, j8);
                    if (objF2 != null) {
                        iHashCode = objF2.hashCode();
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
                    iA = AbstractC2836v0.f24034c.f(obj, j8).hashCode();
                    i10 = iA + i8;
                    break;
                case 50:
                    i8 = i10 * 53;
                    iA = AbstractC2836v0.f24034c.f(obj, j8).hashCode();
                    i10 = iA + i8;
                    break;
                case 51:
                    if (u(i12, obj, i11)) {
                        i8 = i10 * 53;
                        iA = J.a(Double.doubleToLongBits(((Double) AbstractC2836v0.f24034c.f(obj, j8)).doubleValue()));
                        i10 = iA + i8;
                    }
                    break;
                case 52:
                    if (u(i12, obj, i11)) {
                        i8 = i10 * 53;
                        iA = Float.floatToIntBits(((Float) AbstractC2836v0.f24034c.f(obj, j8)).floatValue());
                        i10 = iA + i8;
                    }
                    break;
                case 53:
                    if (u(i12, obj, i11)) {
                        i8 = i10 * 53;
                        iA = J.a(g(obj, j8));
                        i10 = iA + i8;
                    }
                    break;
                case 54:
                    if (u(i12, obj, i11)) {
                        i8 = i10 * 53;
                        iA = J.a(g(obj, j8));
                        i10 = iA + i8;
                    }
                    break;
                case 55:
                    if (u(i12, obj, i11)) {
                        i8 = i10 * 53;
                        iA = C(obj, j8);
                        i10 = iA + i8;
                    }
                    break;
                case 56:
                    if (u(i12, obj, i11)) {
                        i8 = i10 * 53;
                        iA = J.a(g(obj, j8));
                        i10 = iA + i8;
                    }
                    break;
                case 57:
                    if (u(i12, obj, i11)) {
                        i8 = i10 * 53;
                        iA = C(obj, j8);
                        i10 = iA + i8;
                    }
                    break;
                case 58:
                    if (u(i12, obj, i11)) {
                        i9 = i10 * 53;
                        boolean zBooleanValue = ((Boolean) AbstractC2836v0.f24034c.f(obj, j8)).booleanValue();
                        Charset charset2 = J.f23560a;
                        if (zBooleanValue) {
                            i13 = 1231;
                        }
                        i10 = i13 + i9;
                    }
                    break;
                case 59:
                    if (u(i12, obj, i11)) {
                        i8 = i10 * 53;
                        iA = ((String) AbstractC2836v0.f24034c.f(obj, j8)).hashCode();
                        i10 = iA + i8;
                    }
                    break;
                case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                    if (u(i12, obj, i11)) {
                        i8 = i10 * 53;
                        iA = AbstractC2836v0.f24034c.f(obj, j8).hashCode();
                        i10 = iA + i8;
                    }
                    break;
                case 61:
                    if (u(i12, obj, i11)) {
                        i8 = i10 * 53;
                        iA = AbstractC2836v0.f24034c.f(obj, j8).hashCode();
                        i10 = iA + i8;
                    }
                    break;
                case 62:
                    if (u(i12, obj, i11)) {
                        i8 = i10 * 53;
                        iA = C(obj, j8);
                        i10 = iA + i8;
                    }
                    break;
                case 63:
                    if (u(i12, obj, i11)) {
                        i8 = i10 * 53;
                        iA = C(obj, j8);
                        i10 = iA + i8;
                    }
                    break;
                case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                    if (u(i12, obj, i11)) {
                        i8 = i10 * 53;
                        iA = C(obj, j8);
                        i10 = iA + i8;
                    }
                    break;
                case 65:
                    if (u(i12, obj, i11)) {
                        i8 = i10 * 53;
                        iA = J.a(g(obj, j8));
                        i10 = iA + i8;
                    }
                    break;
                case 66:
                    if (u(i12, obj, i11)) {
                        i8 = i10 * 53;
                        iA = C(obj, j8);
                        i10 = iA + i8;
                    }
                    break;
                case 67:
                    if (u(i12, obj, i11)) {
                        i8 = i10 * 53;
                        iA = J.a(g(obj, j8));
                        i10 = iA + i8;
                    }
                    break;
                case 68:
                    if (u(i12, obj, i11)) {
                        i8 = i10 * 53;
                        iA = AbstractC2836v0.f24034c.f(obj, j8).hashCode();
                        i10 = iA + i8;
                    }
                    break;
            }
        }
        this.f23754l.getClass();
        return ((D) obj).zzc.hashCode() + (i10 * 53);
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2749k0
    public final Object zze() {
        return ((D) this.f23747e).l(4);
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2749k0
    public final void zzf(Object obj) {
        int[] iArr;
        int i8;
        int i9 = this.f23751i;
        while (true) {
            iArr = this.f23750h;
            i8 = this.f23752j;
            if (i9 >= i8) {
                break;
            }
            long jF = f(iArr[i9]) & 1048575;
            Object objF = AbstractC2836v0.f24034c.f(obj, jF);
            if (objF != null) {
                ((W) objF).f23680G = false;
                AbstractC2836v0.q(obj, jF, objF);
            }
            i9++;
        }
        int length = iArr.length;
        while (i8 < length) {
            this.f23753k.b(obj, iArr[i8]);
            i8++;
        }
        this.f23754l.getClass();
        ((D) obj).zzc.f23974e = false;
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2749k0
    public final void zzg(Object obj, Object obj2) {
        obj2.getClass();
        int i8 = 0;
        while (true) {
            int[] iArr = this.f23743a;
            if (i8 >= iArr.length) {
                AbstractC2757l0.c(this.f23754l, obj, obj2);
                return;
            }
            int iF = f(i8);
            long j8 = 1048575 & iF;
            int i9 = iArr[i8];
            switch (e(iF)) {
                case 0:
                    if (t(i8, obj2)) {
                        AbstractC2836v0.m(obj, j8, AbstractC2836v0.d(obj2, j8));
                        p(i8, obj);
                    }
                    break;
                case 1:
                    if (t(i8, obj2)) {
                        AbstractC2836v0.n(obj, j8, AbstractC2836v0.e(obj2, j8));
                        p(i8, obj);
                    }
                    break;
                case 2:
                    if (t(i8, obj2)) {
                        AbstractC2836v0.p(obj, j8, AbstractC2836v0.f24034c.d(obj2, j8));
                        p(i8, obj);
                    }
                    break;
                case 3:
                    if (t(i8, obj2)) {
                        AbstractC2836v0.p(obj, j8, AbstractC2836v0.f24034c.d(obj2, j8));
                        p(i8, obj);
                    }
                    break;
                case 4:
                    if (t(i8, obj2)) {
                        AbstractC2836v0.o(obj, j8, AbstractC2836v0.f24034c.c(obj2, j8));
                        p(i8, obj);
                    }
                    break;
                case 5:
                    if (t(i8, obj2)) {
                        AbstractC2836v0.p(obj, j8, AbstractC2836v0.f24034c.d(obj2, j8));
                        p(i8, obj);
                    }
                    break;
                case 6:
                    if (t(i8, obj2)) {
                        AbstractC2836v0.o(obj, j8, AbstractC2836v0.f24034c.c(obj2, j8));
                        p(i8, obj);
                    }
                    break;
                case 7:
                    if (t(i8, obj2)) {
                        AbstractC2836v0.k(obj, j8, AbstractC2836v0.u(obj2, j8));
                        p(i8, obj);
                    }
                    break;
                case 8:
                    if (t(i8, obj2)) {
                        AbstractC2836v0.q(obj, j8, AbstractC2836v0.f24034c.f(obj2, j8));
                        p(i8, obj);
                    }
                    break;
                case 9:
                    m(i8, obj, obj2);
                    break;
                case 10:
                    if (t(i8, obj2)) {
                        AbstractC2836v0.q(obj, j8, AbstractC2836v0.f24034c.f(obj2, j8));
                        p(i8, obj);
                    }
                    break;
                case 11:
                    if (t(i8, obj2)) {
                        AbstractC2836v0.o(obj, j8, AbstractC2836v0.f24034c.c(obj2, j8));
                        p(i8, obj);
                    }
                    break;
                case 12:
                    if (t(i8, obj2)) {
                        AbstractC2836v0.o(obj, j8, AbstractC2836v0.f24034c.c(obj2, j8));
                        p(i8, obj);
                    }
                    break;
                case 13:
                    if (t(i8, obj2)) {
                        AbstractC2836v0.o(obj, j8, AbstractC2836v0.f24034c.c(obj2, j8));
                        p(i8, obj);
                    }
                    break;
                case 14:
                    if (t(i8, obj2)) {
                        AbstractC2836v0.p(obj, j8, AbstractC2836v0.f24034c.d(obj2, j8));
                        p(i8, obj);
                    }
                    break;
                case 15:
                    if (t(i8, obj2)) {
                        AbstractC2836v0.o(obj, j8, AbstractC2836v0.f24034c.c(obj2, j8));
                        p(i8, obj);
                    }
                    break;
                case 16:
                    if (t(i8, obj2)) {
                        AbstractC2836v0.p(obj, j8, AbstractC2836v0.f24034c.d(obj2, j8));
                        p(i8, obj);
                    }
                    break;
                case 17:
                    m(i8, obj, obj2);
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
                    this.f23753k.c(obj, j8, obj2);
                    break;
                case 50:
                    Class cls = AbstractC2757l0.f23918a;
                    C2820t0 c2820t0 = AbstractC2836v0.f24034c;
                    AbstractC2836v0.q(obj, j8, Y.c(c2820t0.f(obj, j8), c2820t0.f(obj2, j8)));
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
                    if (u(i9, obj2, i8)) {
                        AbstractC2836v0.q(obj, j8, AbstractC2836v0.f24034c.f(obj2, j8));
                        q(i9, obj, i8);
                    }
                    break;
                case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                    n(i8, obj, obj2);
                    break;
                case 61:
                case 62:
                case 63:
                case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                case 65:
                case 66:
                case 67:
                    if (u(i9, obj2, i8)) {
                        AbstractC2836v0.q(obj, j8, AbstractC2836v0.f24034c.f(obj2, j8));
                        q(i9, obj, i8);
                    }
                    break;
                case 68:
                    n(i8, obj, obj2);
                    break;
            }
            i8 += 3;
        }
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2749k0
    public final boolean zzk(Object obj, Object obj2) {
        boolean zV;
        int[] iArr = this.f23743a;
        int length = iArr.length;
        for (int i8 = 0; i8 < length; i8 += 3) {
            int iF = f(i8);
            long j8 = iF & 1048575;
            switch (e(iF)) {
                case 0:
                    if (!s(i8, obj, obj2) || Double.doubleToLongBits(AbstractC2836v0.d(obj, j8)) != Double.doubleToLongBits(AbstractC2836v0.d(obj2, j8))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 1:
                    if (!s(i8, obj, obj2) || Float.floatToIntBits(AbstractC2836v0.e(obj, j8)) != Float.floatToIntBits(AbstractC2836v0.e(obj2, j8))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 2:
                    if (s(i8, obj, obj2)) {
                        C2820t0 c2820t0 = AbstractC2836v0.f24034c;
                        if (c2820t0.d(obj, j8) == c2820t0.d(obj2, j8)) {
                            continue;
                            break;
                        }
                    }
                    return false;
                case 3:
                    if (s(i8, obj, obj2)) {
                        C2820t0 c2820t1 = AbstractC2836v0.f24034c;
                        if (c2820t1.d(obj, j8) == c2820t1.d(obj2, j8)) {
                            continue;
                            break;
                        }
                    }
                    return false;
                case 4:
                    if (s(i8, obj, obj2)) {
                        C2820t0 c2820t2 = AbstractC2836v0.f24034c;
                        if (c2820t2.c(obj, j8) == c2820t2.c(obj2, j8)) {
                            continue;
                            break;
                        }
                    }
                    return false;
                case 5:
                    if (s(i8, obj, obj2)) {
                        C2820t0 c2820t3 = AbstractC2836v0.f24034c;
                        if (c2820t3.d(obj, j8) == c2820t3.d(obj2, j8)) {
                            continue;
                            break;
                        }
                    }
                    return false;
                case 6:
                    if (s(i8, obj, obj2)) {
                        C2820t0 c2820t4 = AbstractC2836v0.f24034c;
                        if (c2820t4.c(obj, j8) == c2820t4.c(obj2, j8)) {
                            continue;
                            break;
                        }
                    }
                    return false;
                case 7:
                    if (!s(i8, obj, obj2) || AbstractC2836v0.u(obj, j8) != AbstractC2836v0.u(obj2, j8)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 8:
                    if (s(i8, obj, obj2)) {
                        C2820t0 c2820t5 = AbstractC2836v0.f24034c;
                        if (AbstractC2757l0.v(c2820t5.f(obj, j8), c2820t5.f(obj2, j8))) {
                            continue;
                            break;
                        }
                    }
                    return false;
                case 9:
                    if (s(i8, obj, obj2)) {
                        C2820t0 c2820t6 = AbstractC2836v0.f24034c;
                        if (AbstractC2757l0.v(c2820t6.f(obj, j8), c2820t6.f(obj2, j8))) {
                            continue;
                            break;
                        }
                    }
                    return false;
                case 10:
                    if (s(i8, obj, obj2)) {
                        C2820t0 c2820t7 = AbstractC2836v0.f24034c;
                        if (AbstractC2757l0.v(c2820t7.f(obj, j8), c2820t7.f(obj2, j8))) {
                            continue;
                            break;
                        }
                    }
                    return false;
                case 11:
                    if (s(i8, obj, obj2)) {
                        C2820t0 c2820t8 = AbstractC2836v0.f24034c;
                        if (c2820t8.c(obj, j8) == c2820t8.c(obj2, j8)) {
                            continue;
                            break;
                        }
                    }
                    return false;
                case 12:
                    if (s(i8, obj, obj2)) {
                        C2820t0 c2820t9 = AbstractC2836v0.f24034c;
                        if (c2820t9.c(obj, j8) == c2820t9.c(obj2, j8)) {
                            continue;
                            break;
                        }
                    }
                    return false;
                case 13:
                    if (s(i8, obj, obj2)) {
                        C2820t0 c2820t10 = AbstractC2836v0.f24034c;
                        if (c2820t10.c(obj, j8) == c2820t10.c(obj2, j8)) {
                            continue;
                            break;
                        }
                    }
                    return false;
                case 14:
                    if (s(i8, obj, obj2)) {
                        C2820t0 c2820t11 = AbstractC2836v0.f24034c;
                        if (c2820t11.d(obj, j8) == c2820t11.d(obj2, j8)) {
                            continue;
                            break;
                        }
                    }
                    return false;
                case 15:
                    if (s(i8, obj, obj2)) {
                        C2820t0 c2820t12 = AbstractC2836v0.f24034c;
                        if (c2820t12.c(obj, j8) == c2820t12.c(obj2, j8)) {
                            continue;
                            break;
                        }
                    }
                    return false;
                case 16:
                    if (s(i8, obj, obj2)) {
                        C2820t0 c2820t13 = AbstractC2836v0.f24034c;
                        if (c2820t13.d(obj, j8) == c2820t13.d(obj2, j8)) {
                            continue;
                            break;
                        }
                    }
                    return false;
                case 17:
                    if (s(i8, obj, obj2)) {
                        C2820t0 c2820t14 = AbstractC2836v0.f24034c;
                        if (AbstractC2757l0.v(c2820t14.f(obj, j8), c2820t14.f(obj2, j8))) {
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
                    C2820t0 c2820t15 = AbstractC2836v0.f24034c;
                    zV = AbstractC2757l0.v(c2820t15.f(obj, j8), c2820t15.f(obj2, j8));
                    break;
                case 50:
                    C2820t0 c2820t16 = AbstractC2836v0.f24034c;
                    zV = AbstractC2757l0.v(c2820t16.f(obj, j8), c2820t16.f(obj2, j8));
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
                    C2820t0 c2820t17 = AbstractC2836v0.f24034c;
                    if (c2820t17.c(obj, j9) != c2820t17.c(obj2, j9) || !AbstractC2757l0.v(c2820t17.f(obj, j8), c2820t17.f(obj2, j8))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                default:
                    continue;
                    break;
            }
            if (!zV) {
                return false;
            }
        }
        this.f23754l.getClass();
        return ((D) obj).zzc.equals(((D) obj2).zzc);
    }

    /* JADX WARN: Code duplicated, block: B:45:0x0098  */
    /* JADX WARN: Code duplicated, block: B:47:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:50:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:53:0x00bd A[LOOP:1: B:48:0x00ac->B:53:0x00bd, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:60:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:70:0x00bc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:71:0x00df A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:74:0x00e0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:78:0x00e0 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.pal.InterfaceC2749k0
    public final boolean zzl(Object obj) {
        List list;
        InterfaceC2749k0 interfaceC2749k0I;
        int i8;
        int i9 = 1048575;
        int i10 = 0;
        for (int i11 = 0; i11 < this.f23751i; i11++) {
            int i12 = this.f23750h[i11];
            int[] iArr = this.f23743a;
            int i13 = iArr[i12];
            int iF = f(i12);
            int i14 = iArr[i12 + 2];
            int i15 = i14 & 1048575;
            int i16 = 1 << (i14 >>> 20);
            if (i15 != i9) {
                if (i15 != 1048575) {
                    i10 = f23742n.getInt(obj, i15);
                }
                i9 = i15;
            }
            if ((268435456 & iF) != 0) {
                if (i9 == 1048575) {
                    if (!t(i12, obj)) {
                        return false;
                    }
                } else if ((i10 & i16) == 0) {
                    return false;
                }
            }
            int iE = e(iF);
            if (iE == 9 || iE == 17) {
                if (i9 == 1048575) {
                    if (t(i12, obj)) {
                        if (!i(i12).zzl(AbstractC2836v0.f24034c.f(obj, iF & 1048575))) {
                            return false;
                        }
                    } else {
                        continue;
                    }
                } else if ((i16 & i10) != 0) {
                    if (!i(i12).zzl(AbstractC2836v0.f24034c.f(obj, iF & 1048575))) {
                        return false;
                    }
                } else {
                    continue;
                }
            } else if (iE == 27) {
                list = (List) AbstractC2836v0.i(obj, iF & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    interfaceC2749k0I = i(i12);
                    for (i8 = 0; i8 < list.size(); i8++) {
                        if (!interfaceC2749k0I.zzl(list.get(i8))) {
                            return false;
                        }
                    }
                }
            } else if (iE == 60 || iE == 68) {
                if (u(i13, obj, i12)) {
                    if (!i(i12).zzl(AbstractC2836v0.f24034c.f(obj, iF & 1048575))) {
                        return false;
                    }
                } else {
                    continue;
                }
            } else if (iE == 49) {
                list = (List) AbstractC2836v0.i(obj, iF & 1048575);
                if (list.isEmpty()) {
                    interfaceC2749k0I = i(i12);
                    while (i8 < list.size()) {
                        if (!interfaceC2749k0I.zzl(list.get(i8))) {
                            return false;
                        }
                    }
                } else {
                    continue;
                }
            } else if (iE == 50 && !((W) AbstractC2836v0.i(obj, iF & 1048575)).isEmpty()) {
                A0.O.I(k(i12));
                throw null;
            }
        }
        return true;
    }
}
