package com.google.android.gms.internal.ads;

import com.google.api.Service;
import com.google.protobuf.DescriptorProtos$FileOptions;
import com.google.protobuf.DescriptorProtos$MethodOptions;
import java.lang.reflect.Field;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import okhttp3.HttpUrl;
import okhttp3.internal.ws.WebSocketProtocol;
import org.eclipse.paho.client.mqttv3.MqttConnectOptions;
import org.videolan.libvlc.interfaces.IMediaList;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes.dex */
public final class PH implements InterfaceC1098bI {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int[] f15355k = new int[0];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final Unsafe f15356l = AbstractC1718nI.l();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f15357a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object[] f15358b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f15359c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f15360d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final NH f15361e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f15362f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int[] f15363g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f15364h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f15365i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final C2272y1 f15366j;

    public PH(int[] iArr, Object[] objArr, int i8, int i9, NH nh, int[] iArr2, int i10, int i11, C2272y1 c2272y1, C1561kH c1561kH) {
        this.f15357a = iArr;
        this.f15358b = objArr;
        this.f15359c = i8;
        this.f15360d = i9;
        this.f15362f = nh instanceof AbstractC1873qH;
        this.f15363g = iArr2;
        this.f15364h = i10;
        this.f15365i = i11;
        this.f15366j = c2272y1;
        this.f15361e = nh;
    }

    public static Field f(Class cls, String str) {
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

    public static void g(Object obj) {
        if (!r(obj)) {
            throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
        }
    }

    public static boolean r(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof AbstractC1873qH) {
            return ((AbstractC1873qH) obj).v();
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:169:0x0357  */
    /* JADX WARN: Code duplicated, block: B:184:0x03ad  */
    /* JADX WARN: Code duplicated, block: B:187:0x03bb  */
    public static PH u(LH lh, C2272y1 c2272y1, C1561kH c1561kH) {
        int i8;
        int iCharAt;
        int iCharAt2;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int[] iArr;
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
        int[] iArr2;
        int i25;
        int iObjectFieldOffset;
        Class<?> cls;
        int i26;
        int i27;
        int iObjectFieldOffset2;
        int i28;
        Field fieldF;
        int i29;
        char cCharAt9;
        int i30;
        int i31;
        int i32;
        Field fieldF2;
        Field fieldF3;
        int i33;
        char cCharAt10;
        int i34;
        char cCharAt11;
        int i35;
        char cCharAt12;
        int i36;
        char cCharAt13;
        if (!(lh instanceof XH)) {
            A0.O.I(lh);
            throw null;
        }
        XH xh = (XH) lh;
        String strC = xh.c();
        int length = strC.length();
        char c8 = 55296;
        if (strC.charAt(0) >= 55296) {
            int i37 = 1;
            while (true) {
                i8 = i37 + 1;
                if (strC.charAt(i37) < 55296) {
                    break;
                }
                i37 = i8;
            }
        } else {
            i8 = 1;
        }
        int i38 = i8 + 1;
        int iCharAt3 = strC.charAt(i8);
        if (iCharAt3 >= 55296) {
            int i39 = iCharAt3 & 8191;
            int i40 = 13;
            while (true) {
                i36 = i38 + 1;
                cCharAt13 = strC.charAt(i38);
                if (cCharAt13 < 55296) {
                    break;
                }
                i39 |= (cCharAt13 & 8191) << i40;
                i40 += 13;
                i38 = i36;
            }
            iCharAt3 = i39 | (cCharAt13 << i40);
            i38 = i36;
        }
        if (iCharAt3 == 0) {
            iArr = f15355k;
            i13 = 0;
            i10 = 0;
            iCharAt = 0;
            iCharAt2 = 0;
            i9 = 0;
            i12 = 0;
            i11 = 0;
        } else {
            int i41 = i38 + 1;
            int iCharAt4 = strC.charAt(i38);
            if (iCharAt4 >= 55296) {
                int i42 = iCharAt4 & 8191;
                int i43 = 13;
                while (true) {
                    i21 = i41 + 1;
                    cCharAt8 = strC.charAt(i41);
                    if (cCharAt8 < 55296) {
                        break;
                    }
                    i42 |= (cCharAt8 & 8191) << i43;
                    i43 += 13;
                    i41 = i21;
                }
                iCharAt4 = i42 | (cCharAt8 << i43);
                i41 = i21;
            }
            int i44 = i41 + 1;
            int iCharAt5 = strC.charAt(i41);
            if (iCharAt5 >= 55296) {
                int i45 = iCharAt5 & 8191;
                int i46 = 13;
                while (true) {
                    i20 = i44 + 1;
                    cCharAt7 = strC.charAt(i44);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i45 |= (cCharAt7 & 8191) << i46;
                    i46 += 13;
                    i44 = i20;
                }
                iCharAt5 = i45 | (cCharAt7 << i46);
                i44 = i20;
            }
            int i47 = i44 + 1;
            int iCharAt6 = strC.charAt(i44);
            if (iCharAt6 >= 55296) {
                int i48 = iCharAt6 & 8191;
                int i49 = 13;
                while (true) {
                    i19 = i47 + 1;
                    cCharAt6 = strC.charAt(i47);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i48 |= (cCharAt6 & 8191) << i49;
                    i49 += 13;
                    i47 = i19;
                }
                iCharAt6 = i48 | (cCharAt6 << i49);
                i47 = i19;
            }
            int i50 = i47 + 1;
            int iCharAt7 = strC.charAt(i47);
            if (iCharAt7 >= 55296) {
                int i51 = iCharAt7 & 8191;
                int i52 = 13;
                while (true) {
                    i18 = i50 + 1;
                    cCharAt5 = strC.charAt(i50);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i51 |= (cCharAt5 & 8191) << i52;
                    i52 += 13;
                    i50 = i18;
                }
                iCharAt7 = i51 | (cCharAt5 << i52);
                i50 = i18;
            }
            int i53 = i50 + 1;
            iCharAt = strC.charAt(i50);
            if (iCharAt >= 55296) {
                int i54 = iCharAt & 8191;
                int i55 = 13;
                while (true) {
                    i17 = i53 + 1;
                    cCharAt4 = strC.charAt(i53);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i54 |= (cCharAt4 & 8191) << i55;
                    i55 += 13;
                    i53 = i17;
                }
                iCharAt = i54 | (cCharAt4 << i55);
                i53 = i17;
            }
            int i56 = i53 + 1;
            iCharAt2 = strC.charAt(i53);
            if (iCharAt2 >= 55296) {
                int i57 = iCharAt2 & 8191;
                int i58 = 13;
                while (true) {
                    i16 = i56 + 1;
                    cCharAt3 = strC.charAt(i56);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i57 |= (cCharAt3 & 8191) << i58;
                    i58 += 13;
                    i56 = i16;
                }
                iCharAt2 = i57 | (cCharAt3 << i58);
                i56 = i16;
            }
            int i59 = i56 + 1;
            int iCharAt8 = strC.charAt(i56);
            if (iCharAt8 >= 55296) {
                int i60 = iCharAt8 & 8191;
                int i61 = 13;
                while (true) {
                    i15 = i59 + 1;
                    cCharAt2 = strC.charAt(i59);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i60 |= (cCharAt2 & 8191) << i61;
                    i61 += 13;
                    i59 = i15;
                }
                iCharAt8 = i60 | (cCharAt2 << i61);
                i59 = i15;
            }
            int i62 = i59 + 1;
            int iCharAt9 = strC.charAt(i59);
            if (iCharAt9 >= 55296) {
                int i63 = iCharAt9 & 8191;
                int i64 = 13;
                while (true) {
                    i14 = i62 + 1;
                    cCharAt = strC.charAt(i62);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i63 |= (cCharAt & 8191) << i64;
                    i64 += 13;
                    i62 = i14;
                }
                iCharAt9 = i63 | (cCharAt << i64);
                i62 = i14;
            }
            int i65 = iCharAt4 + iCharAt4 + iCharAt5;
            int[] iArr3 = new int[iCharAt9 + iCharAt2 + iCharAt8];
            i9 = iCharAt6;
            i10 = i65;
            i11 = iCharAt9;
            i12 = iCharAt7;
            i13 = iCharAt4;
            i38 = i62;
            iArr = iArr3;
        }
        Object[] objArrD = xh.d();
        Class<?> cls2 = xh.a().getClass();
        int i66 = i11 + iCharAt2;
        int i67 = iCharAt + iCharAt;
        int[] iArr4 = new int[iCharAt * 3];
        Object[] objArr = new Object[i67];
        int i68 = i11;
        int i69 = i66;
        int i70 = 0;
        int i71 = 0;
        while (i38 < length) {
            int i72 = i38 + 1;
            int iCharAt10 = strC.charAt(i38);
            if (iCharAt10 >= c8) {
                int i73 = iCharAt10 & 8191;
                int i74 = i72;
                int i75 = 13;
                while (true) {
                    i35 = i74 + 1;
                    cCharAt12 = strC.charAt(i74);
                    if (cCharAt12 < c8) {
                        break;
                    }
                    i73 |= (cCharAt12 & 8191) << i75;
                    i75 += 13;
                    i74 = i35;
                }
                iCharAt10 = i73 | (cCharAt12 << i75);
                i22 = i35;
            } else {
                i22 = i72;
            }
            int i76 = i22 + 1;
            int iCharAt11 = strC.charAt(i22);
            if (iCharAt11 >= c8) {
                int i77 = iCharAt11 & 8191;
                int i78 = i76;
                int i79 = 13;
                while (true) {
                    i34 = i78 + 1;
                    cCharAt11 = strC.charAt(i78);
                    i23 = length;
                    if (cCharAt11 < 55296) {
                        break;
                    }
                    i77 |= (cCharAt11 & 8191) << i79;
                    i79 += 13;
                    i78 = i34;
                    length = i23;
                }
                iCharAt11 = i77 | (cCharAt11 << i79);
                i24 = i34;
            } else {
                i23 = length;
                i24 = i76;
            }
            if ((iCharAt11 & 1024) != 0) {
                iArr[i71] = i70;
                i71++;
            }
            int i80 = iCharAt11 & 255;
            int i81 = i12;
            int i82 = iCharAt11 & 2048;
            int i83 = i9;
            Unsafe unsafe = f15356l;
            int i84 = iCharAt10;
            if (i80 >= 51) {
                int i85 = i24 + 1;
                int iCharAt12 = strC.charAt(i24);
                if (iCharAt12 >= 55296) {
                    int i86 = iCharAt12 & 8191;
                    int i87 = i85;
                    int i88 = 13;
                    while (true) {
                        i33 = i87 + 1;
                        cCharAt10 = strC.charAt(i87);
                        iArr2 = iArr4;
                        if (cCharAt10 < 55296) {
                            break;
                        }
                        i86 |= (cCharAt10 & 8191) << i88;
                        i88 += 13;
                        i87 = i33;
                        iArr4 = iArr2;
                    }
                    iCharAt12 = i86 | (cCharAt10 << i88);
                    i32 = i33;
                } else {
                    iArr2 = iArr4;
                    i32 = i85;
                }
                int i89 = i80 - 51;
                int i90 = i32;
                if (i89 == 9 || i89 == 17) {
                    objArr[p000a.r.t(i70, 3, 1)] = objArrD[i10];
                    i10++;
                } else if (i89 == 12) {
                    if (xh.b() == 1 || i82 != 0) {
                        objArr[p000a.r.t(i70, 3, 1)] = objArrD[i10];
                        i10++;
                    } else {
                        i82 = 0;
                    }
                }
                int i91 = iCharAt12 + iCharAt12;
                Object obj = objArrD[i91];
                if (obj instanceof Field) {
                    fieldF2 = (Field) obj;
                } else {
                    fieldF2 = f(cls2, (String) obj);
                    objArrD[i91] = fieldF2;
                }
                i25 = iCharAt11;
                int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldF2);
                int i92 = i91 + 1;
                Object obj2 = objArrD[i92];
                if (obj2 instanceof Field) {
                    fieldF3 = (Field) obj2;
                } else {
                    fieldF3 = f(cls2, (String) obj2);
                    objArrD[i92] = fieldF3;
                }
                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldF3);
                strC = strC;
                i38 = i90;
                iObjectFieldOffset = iObjectFieldOffset3;
                i27 = 0;
                xh = xh;
                i28 = i10;
                cls = cls2;
            } else {
                iArr2 = iArr4;
                i25 = iCharAt11;
                int i93 = i10 + 1;
                Field fieldF4 = f(cls2, (String) objArrD[i10]);
                Class<?> cls3 = cls2;
                if (i80 == 9 || i80 == 17) {
                    objArr[p000a.r.t(i70, 3, 1)] = fieldF4.getType();
                } else {
                    if (i80 != 27) {
                        if (i80 == 49) {
                            i31 = i10 + 2;
                            i30 = 1;
                        } else if (i80 == 12 || i80 == 30 || i80 == 44) {
                            xh = xh;
                            if (xh.b() == 1 || i82 != 0) {
                                i31 = i10 + 2;
                                objArr[p000a.r.t(i70, 3, 1)] = objArrD[i93];
                                i93 = i31;
                            } else {
                                i82 = 0;
                            }
                        } else if (i80 == 50) {
                            int i94 = i10 + 2;
                            int i95 = i68 + 1;
                            iArr[i68] = i70;
                            int i96 = i70 / 3;
                            int i97 = i96 + i96;
                            objArr[i97] = objArrD[i93];
                            if (i82 != 0) {
                                i93 = i10 + 3;
                                objArr[i97 + 1] = objArrD[i94];
                                i68 = i95;
                                xh = xh;
                            } else {
                                i93 = i94;
                                i68 = i95;
                                i82 = 0;
                            }
                        }
                        iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldF4);
                        if ((i25 & 4096) != 0 || i80 > 17) {
                            strC = strC;
                            cls = cls3;
                            i26 = i24;
                            i27 = 0;
                            iObjectFieldOffset2 = 1048575;
                        } else {
                            int i98 = i24 + 1;
                            int iCharAt13 = strC.charAt(i24);
                            if (iCharAt13 >= 55296) {
                                int i99 = iCharAt13 & 8191;
                                int i100 = 13;
                                while (true) {
                                    i29 = i98 + 1;
                                    cCharAt9 = strC.charAt(i98);
                                    if (cCharAt9 < 55296) {
                                        break;
                                    }
                                    i99 |= (cCharAt9 & 8191) << i100;
                                    i100 += 13;
                                    i98 = i29;
                                }
                                iCharAt13 = i99 | (cCharAt9 << i100);
                                i26 = i29;
                            } else {
                                i26 = i98;
                            }
                            int i101 = (iCharAt13 / 32) + i13 + i13;
                            Object obj3 = objArrD[i101];
                            if (obj3 instanceof Field) {
                                fieldF = (Field) obj3;
                                cls = cls3;
                            } else {
                                cls = cls3;
                                fieldF = f(cls, (String) obj3);
                                objArrD[i101] = fieldF;
                            }
                            i27 = iCharAt13 % 32;
                            iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldF);
                        }
                        if (i80 >= 18 && i80 <= 49) {
                            iArr[i69] = iObjectFieldOffset;
                            i69++;
                        }
                        i28 = i93;
                        i38 = i26;
                    } else {
                        i30 = 1;
                        i31 = i10 + 2;
                    }
                    objArr[p000a.r.t(i70, 3, i30)] = objArrD[i93];
                    i93 = i31;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldF4);
                    if ((i25 & 4096) != 0) {
                        strC = strC;
                        cls = cls3;
                        i26 = i24;
                        i27 = 0;
                        iObjectFieldOffset2 = 1048575;
                    } else {
                        strC = strC;
                        cls = cls3;
                        i26 = i24;
                        i27 = 0;
                        iObjectFieldOffset2 = 1048575;
                    }
                    if (i80 >= 18) {
                        iArr[i69] = iObjectFieldOffset;
                        i69++;
                    }
                    i28 = i93;
                    i38 = i26;
                }
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldF4);
                if ((i25 & 4096) != 0) {
                    strC = strC;
                    cls = cls3;
                    i26 = i24;
                    i27 = 0;
                    iObjectFieldOffset2 = 1048575;
                } else {
                    strC = strC;
                    cls = cls3;
                    i26 = i24;
                    i27 = 0;
                    iObjectFieldOffset2 = 1048575;
                }
                if (i80 >= 18) {
                    iArr[i69] = iObjectFieldOffset;
                    i69++;
                }
                i28 = i93;
                i38 = i26;
            }
            int i102 = i70 + 1;
            iArr2[i70] = i84;
            int i103 = i70 + 2;
            int i104 = i28;
            iArr2[i102] = ((i25 & IMediaList.Event.ItemAdded) != 0 ? 536870912 : 0) | ((i25 & 256) != 0 ? 268435456 : 0) | (i82 != 0 ? Integer.MIN_VALUE : 0) | (i80 << 20) | iObjectFieldOffset;
            i70 += 3;
            iArr2[i103] = (i27 << 20) | iObjectFieldOffset2;
            cls2 = cls;
            i12 = i81;
            strC = strC;
            i9 = i83;
            length = i23;
            i10 = i104;
            xh = xh;
            iArr4 = iArr2;
            c8 = 55296;
        }
        return new PH(iArr4, objArr, i9, i12, xh.a(), iArr, i11, i66, c2272y1, c1561kH);
    }

    public static int v(Object obj, long j8) {
        return ((Integer) AbstractC1718nI.k(obj, j8)).intValue();
    }

    public static int x(int i8) {
        return (i8 >>> 20) & 255;
    }

    public static long z(Object obj, long j8) {
        return ((Long) AbstractC1718nI.k(obj, j8)).longValue();
    }

    public final InterfaceC2028tH A(int i8) {
        int i9 = i8 / 3;
        return (InterfaceC2028tH) this.f15358b[i9 + i9 + 1];
    }

    public final InterfaceC1098bI B(int i8) {
        int i9 = i8 / 3;
        int i10 = i9 + i9;
        Object[] objArr = this.f15358b;
        InterfaceC1098bI interfaceC1098bI = (InterfaceC1098bI) objArr[i10];
        if (interfaceC1098bI != null) {
            return interfaceC1098bI;
        }
        InterfaceC1098bI interfaceC1098bIA = UH.f16822c.a((Class) objArr[i10 + 1]);
        objArr[i10] = interfaceC1098bIA;
        return interfaceC1098bIA;
    }

    public final void C(Object obj, int i8, Object obj2) {
        int i9 = this.f15357a[i8];
        Object objK = AbstractC1718nI.k(obj, y(i8) & 1048575);
        if (objK == null || A(i8) == null) {
            return;
        }
        A0.O.I(D(i8));
        throw null;
    }

    public final Object D(int i8) {
        int i9 = i8 / 3;
        return this.f15358b[i9 + i9];
    }

    /* JADX WARN: Code duplicated, block: B:168:0x0751 A[LOOP:2: B:167:0x074f->B:168:0x0751, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:170:0x075b  */
    /* JADX WARN: Code duplicated, block: B:177:0x076f A[LOOP:3: B:176:0x076d->B:177:0x076f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:179:0x0779  */
    /* JADX WARN: Code duplicated, block: B:195:0x073c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:283:0x074d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:294:? A[RETURN, SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.InterfaceC1098bI
    public final void a(Object obj, C1251eH c1251eH, C1509jH c1509jH) throws Throwable {
        int[] iArr;
        int i8;
        int i9;
        int i10;
        int i11;
        Object objF;
        int[] iArr2 = this.f15363g;
        int i12 = this.f15365i;
        int i13 = this.f15364h;
        c1509jH.getClass();
        g(obj);
        C2272y1 c2272y1 = this.f15366j;
        Object objF2 = null;
        while (true) {
            try {
                int iT = c1251eH.t();
                int iW = (iT < this.f15359c || iT > this.f15360d) ? -1 : w(iT, 0);
                if (iW >= 0) {
                    int iY = y(iW);
                    try {
                        try {
                            int iX = x(iY);
                            AbstractC1200dH abstractC1200dH = c1251eH.f18497a;
                            switch (iX) {
                                case 0:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.q(1);
                                    AbstractC1718nI.o(obj, iY & 1048575, abstractC1200dH.f());
                                    k(obj, iW);
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 1:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.q(5);
                                    AbstractC1718nI.p(obj, iY & 1048575, abstractC1200dH.g());
                                    k(obj, iW);
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 2:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.q(0);
                                    AbstractC1718nI.r(obj, iY & 1048575, abstractC1200dH.r());
                                    k(obj, iW);
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 3:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.q(0);
                                    AbstractC1718nI.r(obj, iY & 1048575, abstractC1200dH.u());
                                    k(obj, iW);
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 4:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.q(0);
                                    AbstractC1718nI.q(obj, abstractC1200dH.l(), iY & 1048575);
                                    k(obj, iW);
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 5:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.q(1);
                                    AbstractC1718nI.r(obj, iY & 1048575, abstractC1200dH.q());
                                    k(obj, iW);
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 6:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.q(5);
                                    AbstractC1718nI.q(obj, abstractC1200dH.k(), iY & 1048575);
                                    k(obj, iW);
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 7:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.q(0);
                                    AbstractC1718nI.m(obj, iY & 1048575, abstractC1200dH.b());
                                    k(obj, iW);
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 8:
                                    iArr = iArr2;
                                    i9 = i12;
                                    j(iY, c1251eH, obj);
                                    k(obj, iW);
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 9:
                                    iArr = iArr2;
                                    i9 = i12;
                                    NH nh = (NH) d(obj, iW);
                                    InterfaceC1098bI interfaceC1098bIB = B(iW);
                                    c1251eH.q(2);
                                    c1251eH.o(nh, interfaceC1098bIB, c1509jH);
                                    m(obj, iW, nh);
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 10:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.q(2);
                                    AbstractC1718nI.s(obj, iY & 1048575, abstractC1200dH.v());
                                    k(obj, iW);
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 11:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.q(0);
                                    AbstractC1718nI.q(obj, abstractC1200dH.p(), iY & 1048575);
                                    k(obj, iW);
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 12:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.q(0);
                                    int iJ = abstractC1200dH.j();
                                    InterfaceC2028tH interfaceC2028tHA = A(iW);
                                    if (interfaceC2028tHA == null || interfaceC2028tHA.zza(iJ)) {
                                        AbstractC1718nI.q(obj, iJ, iY & 1048575);
                                        k(obj, iW);
                                    } else {
                                        C2272y1 c2272y2 = AbstractC1149cI.f18207a;
                                        if (objF2 == null) {
                                            c2272y1.getClass();
                                            objF = C2272y1.f(obj);
                                        } else {
                                            objF = objF2;
                                        }
                                        c2272y1.getClass();
                                        ((C1408hI) objF).c(iT << 3, Long.valueOf(iJ));
                                        objF2 = objF;
                                    }
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 13:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.q(5);
                                    AbstractC1718nI.q(obj, abstractC1200dH.m(), iY & 1048575);
                                    k(obj, iW);
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 14:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.q(1);
                                    AbstractC1718nI.r(obj, iY & 1048575, abstractC1200dH.s());
                                    k(obj, iW);
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 15:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.q(0);
                                    AbstractC1718nI.q(obj, abstractC1200dH.n(), iY & 1048575);
                                    k(obj, iW);
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 16:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.q(0);
                                    AbstractC1718nI.r(obj, iY & 1048575, abstractC1200dH.t());
                                    k(obj, iW);
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 17:
                                    iArr = iArr2;
                                    i9 = i12;
                                    NH nh2 = (NH) d(obj, iW);
                                    InterfaceC1098bI interfaceC1098bIB2 = B(iW);
                                    c1251eH.q(3);
                                    c1251eH.n(nh2, interfaceC1098bIB2, c1509jH);
                                    m(obj, iW, nh2);
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 18:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.w(C1301fF.c(obj, iY & 1048575));
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 19:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.b(C1301fF.c(obj, iY & 1048575));
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 20:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.e(C1301fF.c(obj, iY & 1048575));
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 21:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.m(C1301fF.c(obj, iY & 1048575));
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 22:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.d(C1301fF.c(obj, iY & 1048575));
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 23:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.a(C1301fF.c(obj, iY & 1048575));
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 24:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.y(C1301fF.c(obj, iY & 1048575));
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 25:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.u(C1301fF.c(obj, iY & 1048575));
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case Service.BILLING_FIELD_NUMBER /* 26 */:
                                    iArr = iArr2;
                                    i9 = i12;
                                    if ((536870912 & iY) != 0) {
                                        c1251eH.k(C1301fF.c(obj, iY & 1048575), true);
                                    } else {
                                        c1251eH.k(C1301fF.c(obj, iY & 1048575), false);
                                    }
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 27:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.f(C1301fF.c(obj, iY & 1048575), B(iW), c1509jH);
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case Service.MONITORING_FIELD_NUMBER /* 28 */:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.v(C1301fF.c(obj, iY & 1048575));
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.l(C1301fF.c(obj, iY & 1048575));
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                                    iArr = iArr2;
                                    i9 = i12;
                                    InterfaceC2236xH interfaceC2236xHC = C1301fF.c(obj, iY & 1048575);
                                    c1251eH.x(interfaceC2236xHC);
                                    objF2 = AbstractC1149cI.w(obj, iT, interfaceC2236xHC, A(iW), objF2, c2272y1);
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.g(C1301fF.c(obj, iY & 1048575));
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 32:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.h(C1301fF.c(obj, iY & 1048575));
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 33:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.i(C1301fF.c(obj, iY & 1048575));
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.j(C1301fF.c(obj, iY & 1048575));
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 35:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.w(C1301fF.c(obj, iY & 1048575));
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.b(C1301fF.c(obj, iY & 1048575));
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 37:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.e(C1301fF.c(obj, iY & 1048575));
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 38:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.m(C1301fF.c(obj, iY & 1048575));
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.d(C1301fF.c(obj, iY & 1048575));
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.a(C1301fF.c(obj, iY & 1048575));
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.y(C1301fF.c(obj, iY & 1048575));
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.u(C1301fF.c(obj, iY & 1048575));
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 43:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.l(C1301fF.c(obj, iY & 1048575));
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                                    iArr = iArr2;
                                    i9 = i12;
                                    try {
                                        InterfaceC2236xH interfaceC2236xHC2 = C1301fF.c(obj, iY & 1048575);
                                        c1251eH.x(interfaceC2236xHC2);
                                        i10 = 0;
                                        try {
                                            objF2 = AbstractC1149cI.w(obj, iT, interfaceC2236xHC2, A(iW), objF2, c2272y1);
                                        } catch (C2340zH unused) {
                                            if (objF2 == null) {
                                                try {
                                                    c2272y1.getClass();
                                                    objF2 = C2272y1.f(obj);
                                                } catch (Throwable th) {
                                                    th = th;
                                                    i8 = i9;
                                                    while (i13 < i8) {
                                                        C(obj, iArr[i13], objF2);
                                                        i13++;
                                                    }
                                                    if (objF2 != null) {
                                                        c2272y1.getClass();
                                                        ((AbstractC1873qH) obj).zzt = (C1408hI) objF2;
                                                    }
                                                    throw th;
                                                }
                                            }
                                            c2272y1.getClass();
                                            if (!C2272y1.l(i10, c1251eH, objF2)) {
                                                i11 = i9;
                                                while (i13 < i11) {
                                                    C(obj, iArr[i13], objF2);
                                                    i13++;
                                                }
                                                if (objF2 != null) {
                                                    c2272y1.getClass();
                                                    ((AbstractC1873qH) obj).zzt = (C1408hI) objF2;
                                                }
                                            }
                                        }
                                    } catch (C2340zH unused2) {
                                        i10 = 0;
                                        if (objF2 == null) {
                                            c2272y1.getClass();
                                            objF2 = C2272y1.f(obj);
                                        }
                                        c2272y1.getClass();
                                        if (!C2272y1.l(i10, c1251eH, objF2)) {
                                            i11 = i9;
                                            while (i13 < i11) {
                                                C(obj, iArr[i13], objF2);
                                                i13++;
                                            }
                                            if (objF2 != null) {
                                                c2272y1.getClass();
                                                ((AbstractC1873qH) obj).zzt = (C1408hI) objF2;
                                            }
                                        }
                                        iArr2 = iArr;
                                        i12 = i9;
                                    }
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.g(C1301fF.c(obj, iY & 1048575));
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 46:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.h(C1301fF.c(obj, iY & 1048575));
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 47:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.i(C1301fF.c(obj, iY & 1048575));
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 48:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.j(C1301fF.c(obj, iY & 1048575));
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 49:
                                    try {
                                        iArr = iArr2;
                                        i9 = i12;
                                        c1251eH.c(C1301fF.c(obj, iY & 1048575), B(iW), c1509jH);
                                    } catch (C2340zH unused3) {
                                        i10 = 0;
                                        if (objF2 == null) {
                                            c2272y1.getClass();
                                            objF2 = C2272y1.f(obj);
                                        }
                                        c2272y1.getClass();
                                        if (!C2272y1.l(i10, c1251eH, objF2)) {
                                            i11 = i9;
                                            while (i13 < i11) {
                                                C(obj, iArr[i13], objF2);
                                                i13++;
                                            }
                                            if (objF2 != null) {
                                                c2272y1.getClass();
                                                ((AbstractC1873qH) obj).zzt = (C1408hI) objF2;
                                            }
                                        }
                                    }
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 50:
                                    iArr = iArr2;
                                    i9 = i12;
                                    try {
                                        Object objD = D(iW);
                                        long jY = y(iW) & 1048575;
                                        Object objK = AbstractC1718nI.k(obj, jY);
                                        if (objK == null) {
                                            objK = JH.a().b();
                                            AbstractC1718nI.s(obj, jY, objK);
                                        } else if (C1301fF.h(objK)) {
                                            Object objB = JH.a().b();
                                            C1301fF.i(objB, objK);
                                            AbstractC1718nI.s(obj, jY, objB);
                                            objK = objB;
                                        }
                                        A0.O.I(objD);
                                        throw null;
                                    } catch (C2340zH unused4) {
                                        i10 = 0;
                                        if (objF2 == null) {
                                            c2272y1.getClass();
                                            objF2 = C2272y1.f(obj);
                                        }
                                        c2272y1.getClass();
                                        if (!C2272y1.l(i10, c1251eH, objF2)) {
                                            i11 = i9;
                                            while (i13 < i11) {
                                                C(obj, iArr[i13], objF2);
                                                i13++;
                                            }
                                            if (objF2 != null) {
                                                c2272y1.getClass();
                                                ((AbstractC1873qH) obj).zzt = (C1408hI) objF2;
                                            }
                                        }
                                        iArr2 = iArr;
                                        i12 = i9;
                                    }
                                    break;
                                case 51:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.q(1);
                                    AbstractC1718nI.s(obj, iY & 1048575, Double.valueOf(abstractC1200dH.f()));
                                    l(obj, iT, iW);
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 52:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.q(5);
                                    AbstractC1718nI.s(obj, iY & 1048575, Float.valueOf(abstractC1200dH.g()));
                                    l(obj, iT, iW);
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 53:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.q(0);
                                    AbstractC1718nI.s(obj, iY & 1048575, Long.valueOf(abstractC1200dH.r()));
                                    l(obj, iT, iW);
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 54:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.q(0);
                                    AbstractC1718nI.s(obj, iY & 1048575, Long.valueOf(abstractC1200dH.u()));
                                    l(obj, iT, iW);
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 55:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.q(0);
                                    AbstractC1718nI.s(obj, iY & 1048575, Integer.valueOf(abstractC1200dH.l()));
                                    l(obj, iT, iW);
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 56:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.q(1);
                                    AbstractC1718nI.s(obj, iY & 1048575, Long.valueOf(abstractC1200dH.q()));
                                    l(obj, iT, iW);
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 57:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.q(5);
                                    AbstractC1718nI.s(obj, iY & 1048575, Integer.valueOf(abstractC1200dH.k()));
                                    l(obj, iT, iW);
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 58:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.q(0);
                                    AbstractC1718nI.s(obj, iY & 1048575, Boolean.valueOf(abstractC1200dH.b()));
                                    l(obj, iT, iW);
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 59:
                                    iArr = iArr2;
                                    i9 = i12;
                                    j(iY, c1251eH, obj);
                                    l(obj, iT, iW);
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                                    iArr = iArr2;
                                    i9 = i12;
                                    NH nh3 = (NH) e(obj, iT, iW);
                                    InterfaceC1098bI interfaceC1098bIB3 = B(iW);
                                    c1251eH.q(2);
                                    c1251eH.o(nh3, interfaceC1098bIB3, c1509jH);
                                    n(obj, iT, iW, nh3);
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 61:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.q(2);
                                    AbstractC1718nI.s(obj, iY & 1048575, abstractC1200dH.v());
                                    l(obj, iT, iW);
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 62:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.q(0);
                                    AbstractC1718nI.s(obj, iY & 1048575, Integer.valueOf(abstractC1200dH.p()));
                                    l(obj, iT, iW);
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 63:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.q(0);
                                    int iJ2 = abstractC1200dH.j();
                                    InterfaceC2028tH interfaceC2028tHA2 = A(iW);
                                    if (interfaceC2028tHA2 != null && !interfaceC2028tHA2.zza(iJ2)) {
                                        C2272y1 c2272y3 = AbstractC1149cI.f18207a;
                                        if (objF2 == null) {
                                            c2272y1.getClass();
                                            objF = C2272y1.f(obj);
                                        } else {
                                            objF = objF2;
                                        }
                                        c2272y1.getClass();
                                        ((C1408hI) objF).c(iT << 3, Long.valueOf(iJ2));
                                        objF2 = objF;
                                        iArr2 = iArr;
                                        i12 = i9;
                                    }
                                    AbstractC1718nI.s(obj, iY & 1048575, Integer.valueOf(iJ2));
                                    l(obj, iT, iW);
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.q(5);
                                    AbstractC1718nI.s(obj, iY & 1048575, Integer.valueOf(abstractC1200dH.m()));
                                    l(obj, iT, iW);
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 65:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.q(1);
                                    AbstractC1718nI.s(obj, iY & 1048575, Long.valueOf(abstractC1200dH.s()));
                                    l(obj, iT, iW);
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 66:
                                    iArr = iArr2;
                                    i9 = i12;
                                    c1251eH.q(0);
                                    AbstractC1718nI.s(obj, iY & 1048575, Integer.valueOf(abstractC1200dH.n()));
                                    l(obj, iT, iW);
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 67:
                                    int i14 = iY & 1048575;
                                    try {
                                        c1251eH.q(0);
                                        try {
                                            iArr = iArr2;
                                            i9 = i12;
                                            try {
                                                AbstractC1718nI.s(obj, i14, Long.valueOf(abstractC1200dH.t()));
                                                l(obj, iT, iW);
                                            } catch (C2340zH unused5) {
                                                i10 = 0;
                                                if (objF2 == null) {
                                                    c2272y1.getClass();
                                                    objF2 = C2272y1.f(obj);
                                                }
                                                c2272y1.getClass();
                                                if (!C2272y1.l(i10, c1251eH, objF2)) {
                                                    i11 = i9;
                                                    while (i13 < i11) {
                                                        C(obj, iArr[i13], objF2);
                                                        i13++;
                                                    }
                                                    if (objF2 != null) {
                                                        c2272y1.getClass();
                                                        ((AbstractC1873qH) obj).zzt = (C1408hI) objF2;
                                                    }
                                                }
                                            }
                                        } catch (C2340zH unused6) {
                                            iArr = iArr2;
                                            i9 = i12;
                                        }
                                    } catch (C2340zH unused7) {
                                        iArr = iArr2;
                                        i9 = i12;
                                    }
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                case 68:
                                    NH nh4 = (NH) e(obj, iT, iW);
                                    InterfaceC1098bI interfaceC1098bIB4 = B(iW);
                                    c1251eH.q(3);
                                    c1251eH.n(nh4, interfaceC1098bIB4, c1509jH);
                                    n(obj, iT, iW, nh4);
                                    iArr = iArr2;
                                    i9 = i12;
                                    iArr2 = iArr;
                                    i12 = i9;
                                    break;
                                default:
                                    if (objF2 == null) {
                                        try {
                                            c2272y1.getClass();
                                            objF2 = C2272y1.f(obj);
                                        } catch (C2340zH unused8) {
                                            iArr = iArr2;
                                            i9 = i12;
                                            i10 = 0;
                                            if (objF2 == null) {
                                                c2272y1.getClass();
                                                objF2 = C2272y1.f(obj);
                                            }
                                            c2272y1.getClass();
                                            if (!C2272y1.l(i10, c1251eH, objF2)) {
                                                i11 = i9;
                                                while (i13 < i11) {
                                                    C(obj, iArr[i13], objF2);
                                                    i13++;
                                                }
                                            }
                                            iArr2 = iArr;
                                            i12 = i9;
                                        }
                                        break;
                                    }
                                    c2272y1.getClass();
                                    if (!C2272y1.l(0, c1251eH, objF2)) {
                                        while (i13 < i12) {
                                            C(obj, iArr2[i13], objF2);
                                            i13++;
                                        }
                                    }
                                    break;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            iArr = iArr2;
                            i9 = i12;
                            i8 = i9;
                            while (i13 < i8) {
                                C(obj, iArr[i13], objF2);
                                i13++;
                            }
                            if (objF2 != null) {
                                c2272y1.getClass();
                                ((AbstractC1873qH) obj).zzt = (C1408hI) objF2;
                            }
                            throw th;
                        }
                    } catch (C2340zH unused9) {
                        iArr = iArr2;
                        i9 = i12;
                    }
                } else if (iT == Integer.MAX_VALUE) {
                    while (i13 < i12) {
                        C(obj, iArr2[i13], objF2);
                        i13++;
                    }
                } else {
                    if (objF2 == null) {
                        c2272y1.getClass();
                        objF2 = C2272y1.f(obj);
                    }
                    c2272y1.getClass();
                    if (!C2272y1.l(0, c1251eH, objF2)) {
                        while (i13 < i12) {
                            C(obj, iArr2[i13], objF2);
                            i13++;
                        }
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                iArr = iArr2;
                i8 = i12;
            }
        }
        if (objF2 != null) {
            c2272y1.getClass();
            ((AbstractC1873qH) obj).zzt = (C1408hI) objF2;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1098bI
    public final void b(Object obj, C1459iH c1459iH) {
        int i8;
        int i9;
        int i10;
        int i11 = 1048575;
        boolean z7 = false;
        int i12 = 1048575;
        int i13 = 0;
        int i14 = 0;
        while (true) {
            int[] iArr = this.f15357a;
            if (i14 >= iArr.length) {
                ((AbstractC1873qH) obj).zzt.d(c1459iH);
                return;
            }
            int iY = y(i14);
            int iX = x(iY);
            int i15 = iArr[i14];
            Unsafe unsafe = f15356l;
            if (iX <= 17) {
                int i16 = iArr[i14 + 2];
                int i17 = i16 & i11;
                if (i17 != i12) {
                    i13 = i17 == i11 ? 0 : unsafe.getInt(obj, i17);
                    i12 = i17;
                }
                i10 = 1 << (i16 >>> 20);
                i8 = i12;
                i9 = i13;
            } else {
                i8 = i12;
                i9 = i13;
                i10 = 0;
            }
            long j8 = iY & i11;
            switch (iX) {
                case 0:
                    if (q(obj, i14, i8, i9, i10)) {
                        c1459iH.g(i15, AbstractC1718nI.e(obj, j8));
                    }
                    break;
                case 1:
                    if (q(obj, i14, i8, i9, i10)) {
                        c1459iH.k(i15, AbstractC1718nI.f(obj, j8));
                    }
                    break;
                case 2:
                    if (q(obj, i14, i8, i9, i10)) {
                        c1459iH.n(i15, unsafe.getLong(obj, j8));
                    }
                    break;
                case 3:
                    if (q(obj, i14, i8, i9, i10)) {
                        c1459iH.d(i15, unsafe.getLong(obj, j8));
                    }
                    break;
                case 4:
                    if (q(obj, i14, i8, i9, i10)) {
                        c1459iH.m(i15, unsafe.getInt(obj, j8));
                    }
                    break;
                case 5:
                    if (q(obj, i14, i8, i9, i10)) {
                        c1459iH.j(i15, unsafe.getLong(obj, j8));
                    }
                    break;
                case 6:
                    if (q(obj, i14, i8, i9, i10)) {
                        c1459iH.i(i15, unsafe.getInt(obj, j8));
                    }
                    break;
                case 7:
                    if (q(obj, i14, i8, i9, i10)) {
                        c1459iH.e(i15, AbstractC1718nI.w(obj, j8));
                    }
                    break;
                case 8:
                    if (q(obj, i14, i8, i9, i10)) {
                        Object object = unsafe.getObject(obj, j8);
                        if (!(object instanceof String)) {
                            c1459iH.f(i15, (XG) object);
                        } else {
                            c1459iH.f19290a.Z(i15, (String) object);
                        }
                    }
                    break;
                case 9:
                    if (q(obj, i14, i8, i9, i10)) {
                        c1459iH.o(i15, B(i14), unsafe.getObject(obj, j8));
                    }
                    break;
                case 10:
                    if (q(obj, i14, i8, i9, i10)) {
                        c1459iH.f(i15, (XG) unsafe.getObject(obj, j8));
                    }
                    break;
                case 11:
                    if (q(obj, i14, i8, i9, i10)) {
                        c1459iH.c(i15, unsafe.getInt(obj, j8));
                    }
                    break;
                case 12:
                    if (q(obj, i14, i8, i9, i10)) {
                        c1459iH.h(i15, unsafe.getInt(obj, j8));
                    }
                    break;
                case 13:
                    if (q(obj, i14, i8, i9, i10)) {
                        c1459iH.p(i15, unsafe.getInt(obj, j8));
                    }
                    break;
                case 14:
                    if (q(obj, i14, i8, i9, i10)) {
                        c1459iH.q(i15, unsafe.getLong(obj, j8));
                    }
                    break;
                case 15:
                    if (q(obj, i14, i8, i9, i10)) {
                        c1459iH.a(i15, unsafe.getInt(obj, j8));
                    }
                    break;
                case 16:
                    if (q(obj, i14, i8, i9, i10)) {
                        c1459iH.b(i15, unsafe.getLong(obj, j8));
                    }
                    break;
                case 17:
                    if (q(obj, i14, i8, i9, i10)) {
                        c1459iH.l(i15, B(i14), unsafe.getObject(obj, j8));
                    }
                    break;
                case 18:
                    AbstractC1149cI.A(iArr[i14], (List) unsafe.getObject(obj, j8), c1459iH, z7);
                    break;
                case 19:
                    AbstractC1149cI.E(iArr[i14], (List) unsafe.getObject(obj, j8), c1459iH, z7);
                    break;
                case 20:
                    AbstractC1149cI.a(iArr[i14], (List) unsafe.getObject(obj, j8), c1459iH, z7);
                    break;
                case 21:
                    AbstractC1149cI.i(iArr[i14], (List) unsafe.getObject(obj, j8), c1459iH, z7);
                    break;
                case 22:
                    AbstractC1149cI.G(iArr[i14], (List) unsafe.getObject(obj, j8), c1459iH, z7);
                    break;
                case 23:
                    AbstractC1149cI.D(iArr[i14], (List) unsafe.getObject(obj, j8), c1459iH, z7);
                    break;
                case 24:
                    AbstractC1149cI.C(iArr[i14], (List) unsafe.getObject(obj, j8), c1459iH, z7);
                    break;
                case 25:
                    AbstractC1149cI.y(iArr[i14], (List) unsafe.getObject(obj, j8), c1459iH, z7);
                    break;
                case Service.BILLING_FIELD_NUMBER /* 26 */:
                    AbstractC1149cI.g(iArr[i14], (List) unsafe.getObject(obj, j8), c1459iH);
                    break;
                case 27:
                    AbstractC1149cI.b(iArr[i14], (List) unsafe.getObject(obj, j8), c1459iH, B(i14));
                    break;
                case Service.MONITORING_FIELD_NUMBER /* 28 */:
                    AbstractC1149cI.z(iArr[i14], (List) unsafe.getObject(obj, j8), c1459iH);
                    break;
                case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                    AbstractC1149cI.h(iArr[i14], (List) unsafe.getObject(obj, j8), c1459iH, z7);
                    break;
                case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                    AbstractC1149cI.B(iArr[i14], (List) unsafe.getObject(obj, j8), c1459iH, z7);
                    break;
                case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                    AbstractC1149cI.c(iArr[i14], (List) unsafe.getObject(obj, j8), c1459iH, z7);
                    break;
                case 32:
                    AbstractC1149cI.d(iArr[i14], (List) unsafe.getObject(obj, j8), c1459iH, z7);
                    break;
                case 33:
                    AbstractC1149cI.e(iArr[i14], (List) unsafe.getObject(obj, j8), c1459iH, z7);
                    break;
                case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                    AbstractC1149cI.f(iArr[i14], (List) unsafe.getObject(obj, j8), c1459iH, z7);
                    break;
                case 35:
                    AbstractC1149cI.A(iArr[i14], (List) unsafe.getObject(obj, j8), c1459iH, true);
                    break;
                case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                    AbstractC1149cI.E(iArr[i14], (List) unsafe.getObject(obj, j8), c1459iH, true);
                    break;
                case 37:
                    AbstractC1149cI.a(iArr[i14], (List) unsafe.getObject(obj, j8), c1459iH, true);
                    break;
                case 38:
                    AbstractC1149cI.i(iArr[i14], (List) unsafe.getObject(obj, j8), c1459iH, true);
                    break;
                case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                    AbstractC1149cI.G(iArr[i14], (List) unsafe.getObject(obj, j8), c1459iH, true);
                    break;
                case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                    AbstractC1149cI.D(iArr[i14], (List) unsafe.getObject(obj, j8), c1459iH, true);
                    break;
                case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
                    AbstractC1149cI.C(iArr[i14], (List) unsafe.getObject(obj, j8), c1459iH, true);
                    break;
                case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                    AbstractC1149cI.y(iArr[i14], (List) unsafe.getObject(obj, j8), c1459iH, true);
                    break;
                case 43:
                    AbstractC1149cI.h(iArr[i14], (List) unsafe.getObject(obj, j8), c1459iH, true);
                    break;
                case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                    AbstractC1149cI.B(iArr[i14], (List) unsafe.getObject(obj, j8), c1459iH, true);
                    break;
                case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                    AbstractC1149cI.c(iArr[i14], (List) unsafe.getObject(obj, j8), c1459iH, true);
                    break;
                case 46:
                    AbstractC1149cI.d(iArr[i14], (List) unsafe.getObject(obj, j8), c1459iH, true);
                    break;
                case 47:
                    AbstractC1149cI.e(iArr[i14], (List) unsafe.getObject(obj, j8), c1459iH, true);
                    break;
                case 48:
                    AbstractC1149cI.f(iArr[i14], (List) unsafe.getObject(obj, j8), c1459iH, true);
                    break;
                case 49:
                    AbstractC1149cI.F(iArr[i14], (List) unsafe.getObject(obj, j8), c1459iH, B(i14));
                    break;
                case 50:
                    if (unsafe.getObject(obj, j8) != null) {
                        A0.O.I(D(i14));
                        throw null;
                    }
                    break;
                    break;
                case 51:
                    if (s(obj, i15, i14)) {
                        c1459iH.g(i15, ((Double) AbstractC1718nI.k(obj, j8)).doubleValue());
                    }
                    break;
                case 52:
                    if (s(obj, i15, i14)) {
                        c1459iH.k(i15, ((Float) AbstractC1718nI.k(obj, j8)).floatValue());
                    }
                    break;
                case 53:
                    if (s(obj, i15, i14)) {
                        c1459iH.n(i15, z(obj, j8));
                    }
                    break;
                case 54:
                    if (s(obj, i15, i14)) {
                        c1459iH.d(i15, z(obj, j8));
                    }
                    break;
                case 55:
                    if (s(obj, i15, i14)) {
                        c1459iH.m(i15, v(obj, j8));
                    }
                    break;
                case 56:
                    if (s(obj, i15, i14)) {
                        c1459iH.j(i15, z(obj, j8));
                    }
                    break;
                case 57:
                    if (s(obj, i15, i14)) {
                        c1459iH.i(i15, v(obj, j8));
                    }
                    break;
                case 58:
                    if (s(obj, i15, i14)) {
                        c1459iH.e(i15, ((Boolean) AbstractC1718nI.k(obj, j8)).booleanValue());
                    }
                    break;
                case 59:
                    if (s(obj, i15, i14)) {
                        Object object2 = unsafe.getObject(obj, j8);
                        if (!(object2 instanceof String)) {
                            c1459iH.f(i15, (XG) object2);
                        } else {
                            c1459iH.f19290a.Z(i15, (String) object2);
                        }
                    }
                    break;
                case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                    if (s(obj, i15, i14)) {
                        c1459iH.o(i15, B(i14), unsafe.getObject(obj, j8));
                    }
                    break;
                case 61:
                    if (s(obj, i15, i14)) {
                        c1459iH.f(i15, (XG) unsafe.getObject(obj, j8));
                    }
                    break;
                case 62:
                    if (s(obj, i15, i14)) {
                        c1459iH.c(i15, v(obj, j8));
                    }
                    break;
                case 63:
                    if (s(obj, i15, i14)) {
                        c1459iH.h(i15, v(obj, j8));
                    }
                    break;
                case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                    if (s(obj, i15, i14)) {
                        c1459iH.p(i15, v(obj, j8));
                    }
                    break;
                case 65:
                    if (s(obj, i15, i14)) {
                        c1459iH.q(i15, z(obj, j8));
                    }
                    break;
                case 66:
                    if (s(obj, i15, i14)) {
                        c1459iH.a(i15, v(obj, j8));
                    }
                    break;
                case 67:
                    if (s(obj, i15, i14)) {
                        c1459iH.b(i15, z(obj, j8));
                    }
                    break;
                case 68:
                    if (s(obj, i15, i14)) {
                        c1459iH.l(i15, B(i14), unsafe.getObject(obj, j8));
                    }
                    break;
            }
            i14 += 3;
            i12 = i8;
            i13 = i9;
            i11 = 1048575;
            z7 = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1098bI
    public final void c(Object obj, byte[] bArr, int i8, int i9, SG sg) {
        t(obj, bArr, i8, i9, 0, sg);
    }

    public final Object d(Object obj, int i8) {
        InterfaceC1098bI interfaceC1098bIB = B(i8);
        int iY = y(i8) & 1048575;
        if (!p(obj, i8)) {
            return interfaceC1098bIB.zze();
        }
        Object object = f15356l.getObject(obj, iY);
        if (r(object)) {
            return object;
        }
        AbstractC1873qH abstractC1873qHZze = interfaceC1098bIB.zze();
        if (object != null) {
            interfaceC1098bIB.zzg(abstractC1873qHZze, object);
        }
        return abstractC1873qHZze;
    }

    public final Object e(Object obj, int i8, int i9) {
        InterfaceC1098bI interfaceC1098bIB = B(i9);
        if (!s(obj, i8, i9)) {
            return interfaceC1098bIB.zze();
        }
        Object object = f15356l.getObject(obj, y(i9) & 1048575);
        if (r(object)) {
            return object;
        }
        AbstractC1873qH abstractC1873qHZze = interfaceC1098bIB.zze();
        if (object != null) {
            interfaceC1098bIB.zzg(abstractC1873qHZze, object);
        }
        return abstractC1873qHZze;
    }

    public final void h(Object obj, Object obj2, int i8) {
        if (p(obj2, i8)) {
            long jY = y(i8) & 1048575;
            Unsafe unsafe = f15356l;
            Object object = unsafe.getObject(obj2, jY);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.f15357a[i8] + " is present but null: " + obj2.toString());
            }
            InterfaceC1098bI interfaceC1098bIB = B(i8);
            if (!p(obj, i8)) {
                if (r(object)) {
                    AbstractC1873qH abstractC1873qHZze = interfaceC1098bIB.zze();
                    interfaceC1098bIB.zzg(abstractC1873qHZze, object);
                    unsafe.putObject(obj, jY, abstractC1873qHZze);
                } else {
                    unsafe.putObject(obj, jY, object);
                }
                k(obj, i8);
                return;
            }
            Object object2 = unsafe.getObject(obj, jY);
            if (!r(object2)) {
                AbstractC1873qH abstractC1873qHZze2 = interfaceC1098bIB.zze();
                interfaceC1098bIB.zzg(abstractC1873qHZze2, object2);
                unsafe.putObject(obj, jY, abstractC1873qHZze2);
                object2 = abstractC1873qHZze2;
            }
            interfaceC1098bIB.zzg(object2, object);
        }
    }

    public final void i(Object obj, Object obj2, int i8) {
        int[] iArr = this.f15357a;
        int i9 = iArr[i8];
        if (s(obj2, i9, i8)) {
            long jY = y(i8) & 1048575;
            Unsafe unsafe = f15356l;
            Object object = unsafe.getObject(obj2, jY);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + iArr[i8] + " is present but null: " + obj2.toString());
            }
            InterfaceC1098bI interfaceC1098bIB = B(i8);
            if (!s(obj, i9, i8)) {
                if (r(object)) {
                    AbstractC1873qH abstractC1873qHZze = interfaceC1098bIB.zze();
                    interfaceC1098bIB.zzg(abstractC1873qHZze, object);
                    unsafe.putObject(obj, jY, abstractC1873qHZze);
                } else {
                    unsafe.putObject(obj, jY, object);
                }
                l(obj, i9, i8);
                return;
            }
            Object object2 = unsafe.getObject(obj, jY);
            if (!r(object2)) {
                AbstractC1873qH abstractC1873qHZze2 = interfaceC1098bIB.zze();
                interfaceC1098bIB.zzg(abstractC1873qHZze2, object2);
                unsafe.putObject(obj, jY, abstractC1873qHZze2);
                object2 = abstractC1873qHZze2;
            }
            interfaceC1098bIB.zzg(object2, object);
        }
    }

    public final void j(int i8, C1251eH c1251eH, Object obj) {
        long j8 = i8 & 1048575;
        if ((536870912 & i8) != 0) {
            c1251eH.q(2);
            AbstractC1718nI.s(obj, j8, c1251eH.f18497a.x());
        } else if (this.f15362f) {
            c1251eH.q(2);
            AbstractC1718nI.s(obj, j8, c1251eH.f18497a.w());
        } else {
            c1251eH.q(2);
            AbstractC1718nI.s(obj, j8, c1251eH.f18497a.v());
        }
    }

    public final void k(Object obj, int i8) {
        int i9 = this.f15357a[i8 + 2];
        long j8 = 1048575 & i9;
        if (j8 == 1048575) {
            return;
        }
        AbstractC1718nI.q(obj, (1 << (i9 >>> 20)) | AbstractC1718nI.g(obj, j8), j8);
    }

    public final void l(Object obj, int i8, int i9) {
        AbstractC1718nI.q(obj, i8, this.f15357a[i9 + 2] & 1048575);
    }

    public final void m(Object obj, int i8, Object obj2) {
        f15356l.putObject(obj, y(i8) & 1048575, obj2);
        k(obj, i8);
    }

    public final void n(Object obj, int i8, int i9, Object obj2) {
        f15356l.putObject(obj, y(i9) & 1048575, obj2);
        l(obj, i8, i9);
    }

    public final boolean o(Object obj, Object obj2, int i8) {
        return p(obj, i8) == p(obj2, i8);
    }

    public final boolean p(Object obj, int i8) {
        int i9 = this.f15357a[i8 + 2];
        long j8 = i9 & 1048575;
        if (j8 != 1048575) {
            return (AbstractC1718nI.g(obj, j8) & (1 << (i9 >>> 20))) != 0;
        }
        int iY = y(i8);
        long j9 = iY & 1048575;
        switch (x(iY)) {
            case 0:
                return Double.doubleToRawLongBits(AbstractC1718nI.f20155c.M(obj, j9)) != 0;
            case 1:
                return Float.floatToRawIntBits(AbstractC1718nI.f20155c.Q0(obj, j9)) != 0;
            case 2:
                return AbstractC1718nI.i(obj, j9) != 0;
            case 3:
                return AbstractC1718nI.i(obj, j9) != 0;
            case 4:
                return AbstractC1718nI.g(obj, j9) != 0;
            case 5:
                return AbstractC1718nI.i(obj, j9) != 0;
            case 6:
                return AbstractC1718nI.g(obj, j9) != 0;
            case 7:
                return AbstractC1718nI.f20155c.W0(obj, j9);
            case 8:
                Object objK = AbstractC1718nI.k(obj, j9);
                if (objK instanceof String) {
                    return !((String) objK).isEmpty();
                }
                if (objK instanceof XG) {
                    return !XG.f17401H.equals(objK);
                }
                throw new IllegalArgumentException();
            case 9:
                return AbstractC1718nI.k(obj, j9) != null;
            case 10:
                return !XG.f17401H.equals(AbstractC1718nI.k(obj, j9));
            case 11:
                return AbstractC1718nI.g(obj, j9) != 0;
            case 12:
                return AbstractC1718nI.g(obj, j9) != 0;
            case 13:
                return AbstractC1718nI.g(obj, j9) != 0;
            case 14:
                return AbstractC1718nI.i(obj, j9) != 0;
            case 15:
                return AbstractC1718nI.g(obj, j9) != 0;
            case 16:
                return AbstractC1718nI.i(obj, j9) != 0;
            case 17:
                return AbstractC1718nI.k(obj, j9) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    public final boolean q(Object obj, int i8, int i9, int i10, int i11) {
        if (i9 == 1048575) {
            return p(obj, i8);
        }
        return (i10 & i11) != 0;
    }

    public final boolean s(Object obj, int i8, int i9) {
        return AbstractC1718nI.g(obj, (long) (this.f15357a[i9 + 2] & 1048575)) == i8;
    }

    /* JADX WARN: Code duplicated, block: B:475:0x0bb4 A[PHI: r8 r12 r13 r14 r21 r35
      0x0bb4: PHI (r8v103 int) = 
      (r8v80 int)
      (r8v81 int)
      (r8v82 int)
      (r8v83 int)
      (r8v84 int)
      (r8v85 int)
      (r8v86 int)
      (r8v87 int)
      (r8v89 int)
      (r8v94 int)
      (r8v104 int)
     binds: [B:473:0x0b9d, B:470:0x0b7d, B:467:0x0b61, B:464:0x0b46, B:461:0x0b2a, B:458:0x0b0d, B:451:0x0ae7, B:437:0x0aa5, B:432:0x0a61, B:412:0x09d9, B:403:0x097c] A[DONT_GENERATE, DONT_INLINE]
      0x0bb4: PHI (r12v56 sun.misc.Unsafe) = 
      (r12v36 sun.misc.Unsafe)
      (r12v37 sun.misc.Unsafe)
      (r12v38 sun.misc.Unsafe)
      (r12v39 sun.misc.Unsafe)
      (r12v40 sun.misc.Unsafe)
      (r12v41 sun.misc.Unsafe)
      (r12v42 sun.misc.Unsafe)
      (r12v43 sun.misc.Unsafe)
      (r12v45 sun.misc.Unsafe)
      (r12v50 sun.misc.Unsafe)
      (r12v57 sun.misc.Unsafe)
     binds: [B:473:0x0b9d, B:470:0x0b7d, B:467:0x0b61, B:464:0x0b46, B:461:0x0b2a, B:458:0x0b0d, B:451:0x0ae7, B:437:0x0aa5, B:432:0x0a61, B:412:0x09d9, B:403:0x097c] A[DONT_GENERATE, DONT_INLINE]
      0x0bb4: PHI (r13v87 com.google.android.gms.internal.ads.SG) = 
      (r13v59 com.google.android.gms.internal.ads.SG)
      (r13v60 com.google.android.gms.internal.ads.SG)
      (r13v61 com.google.android.gms.internal.ads.SG)
      (r13v62 com.google.android.gms.internal.ads.SG)
      (r13v63 com.google.android.gms.internal.ads.SG)
      (r13v64 com.google.android.gms.internal.ads.SG)
      (r13v65 com.google.android.gms.internal.ads.SG)
      (r13v66 com.google.android.gms.internal.ads.SG)
      (r13v70 com.google.android.gms.internal.ads.SG)
      (r13v78 com.google.android.gms.internal.ads.SG)
      (r12v14 com.google.android.gms.internal.ads.SG)
     binds: [B:473:0x0b9d, B:470:0x0b7d, B:467:0x0b61, B:464:0x0b46, B:461:0x0b2a, B:458:0x0b0d, B:451:0x0ae7, B:437:0x0aa5, B:432:0x0a61, B:412:0x09d9, B:403:0x097c] A[DONT_GENERATE, DONT_INLINE]
      0x0bb4: PHI (r14v79 int) = 
      (r14v54 int)
      (r14v55 int)
      (r14v56 int)
      (r14v57 int)
      (r14v58 int)
      (r14v59 int)
      (r14v60 int)
      (r14v61 int)
      (r14v65 int)
      (r14v71 int)
      (r6v81 int)
     binds: [B:473:0x0b9d, B:470:0x0b7d, B:467:0x0b61, B:464:0x0b46, B:461:0x0b2a, B:458:0x0b0d, B:451:0x0ae7, B:437:0x0aa5, B:432:0x0a61, B:412:0x09d9, B:403:0x097c] A[DONT_GENERATE, DONT_INLINE]
      0x0bb4: PHI (r21v9 int) = 
      (r21v4 int)
      (r21v4 int)
      (r21v4 int)
      (r21v4 int)
      (r21v4 int)
      (r21v4 int)
      (r21v4 int)
      (r21v4 int)
      (r21v6 int)
      (r21v4 int)
      (r21v4 int)
     binds: [B:473:0x0b9d, B:470:0x0b7d, B:467:0x0b61, B:464:0x0b46, B:461:0x0b2a, B:458:0x0b0d, B:451:0x0ae7, B:437:0x0aa5, B:432:0x0a61, B:412:0x09d9, B:403:0x097c] A[DONT_GENERATE, DONT_INLINE]
      0x0bb4: PHI (r35v21 com.google.android.gms.internal.ads.hI) = 
      (r35v5 com.google.android.gms.internal.ads.hI)
      (r35v6 com.google.android.gms.internal.ads.hI)
      (r35v7 com.google.android.gms.internal.ads.hI)
      (r35v8 com.google.android.gms.internal.ads.hI)
      (r35v9 com.google.android.gms.internal.ads.hI)
      (r35v10 com.google.android.gms.internal.ads.hI)
      (r35v11 com.google.android.gms.internal.ads.hI)
      (r35v12 com.google.android.gms.internal.ads.hI)
      (r35v14 com.google.android.gms.internal.ads.hI)
      (r35v16 com.google.android.gms.internal.ads.hI)
      (r5v73 com.google.android.gms.internal.ads.hI)
     binds: [B:473:0x0b9d, B:470:0x0b7d, B:467:0x0b61, B:464:0x0b46, B:461:0x0b2a, B:458:0x0b0d, B:451:0x0ae7, B:437:0x0aa5, B:432:0x0a61, B:412:0x09d9, B:403:0x097c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:548:0x08da A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:551:0x0bb7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:588:0x08ed A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:591:0x0bc7 A[SYNTHETIC] */
    public final int t(Object obj, byte[] bArr, int i8, int i9, int i10, SG sg) {
        Unsafe unsafe;
        int i11;
        int iQ1;
        C1408hI c1408hI;
        int i12;
        SG sg2;
        int i13;
        int i14;
        int iG1;
        int i15;
        int i16;
        int i17;
        int i18;
        int iM1;
        int i19;
        int i20;
        Unsafe unsafe2;
        int i21;
        int i22;
        InterfaceC2236xH interfaceC2236xH;
        int i23;
        int i24;
        C1408hI c1408hI2;
        Unsafe unsafe3;
        int iM2;
        int iV1;
        int i25;
        C1408hI c1408hI3;
        SG sg3;
        int iM3;
        Object obj2;
        Unsafe unsafe4;
        int i26;
        int iM4;
        int iS1;
        int iV2;
        C1408hI c1408hI4;
        SG sg4;
        int i27;
        C1408hI c1408hI5;
        PH ph = this;
        Object obj3 = obj;
        i9 = i9;
        i10 = i10;
        SG sg5 = sg;
        g(obj);
        int iY1 = i8;
        int i28 = -1;
        int iW = 0;
        int i29 = 0;
        int i30 = 0;
        int i31 = 1048575;
        while (true) {
            Unsafe unsafe5 = f15356l;
            if (iY1 < i9) {
                int i32 = iY1 + 1;
                int i33 = bArr[iY1];
                if (i33 < 0) {
                    iQ1 = Cw.Q1(i33, bArr, i32, sg5);
                    i29 = sg5.f16417a;
                } else {
                    i29 = i33;
                    iQ1 = i32;
                }
                int i34 = i29 >>> 3;
                int i35 = ph.f15360d;
                int i36 = ph.f15359c;
                iW = i34 > i28 ? (i34 < i36 || i34 > i35) ? -1 : ph.w(i34, iW / 3) : (i34 < i36 || i34 > i35) ? -1 : ph.w(i34, 0);
                C1408hI c1408hI6 = C1408hI.f19078f;
                if (iW != -1) {
                    int i37 = i29 & 7;
                    int[] iArr = ph.f15357a;
                    int i38 = iArr[iW + 1];
                    int iX = x(i38);
                    int i39 = iQ1;
                    C1408hI c1408hI7 = c1408hI6;
                    int i40 = i29;
                    long j8 = i38 & 1048575;
                    if (iX <= 17) {
                        int i41 = iArr[iW + 2];
                        int i42 = 1 << (i41 >>> 20);
                        int i43 = 1048575;
                        int i44 = i41 & 1048575;
                        if (i44 != i31) {
                            if (i31 != 1048575) {
                                unsafe5.putInt(obj3, i31, i30);
                                i43 = 1048575;
                            }
                            i30 = i44 == i43 ? 0 : unsafe5.getInt(obj3, i44);
                            i31 = i44;
                        } else {
                            i31 = i31;
                        }
                        switch (iX) {
                            case 0:
                                sg5 = sg5;
                                i15 = i39;
                                i16 = i40;
                                c1408hI7 = c1408hI7;
                                i17 = i34;
                                if (i37 == 1) {
                                    iG1 = i15 + 8;
                                    i30 |= i42;
                                    AbstractC1718nI.o(obj3, j8, Double.longBitsToDouble(Cw.c2(bArr, i15)));
                                    i10 = i10;
                                    i29 = i16;
                                    iW = iW;
                                    sg5 = sg5;
                                    i28 = i17;
                                    i31 = i31;
                                    iY1 = iG1;
                                }
                                i11 = i10;
                                i29 = i16;
                                i13 = i15;
                                iW = iW;
                                i12 = i30;
                                sg2 = sg5;
                                c1408hI = c1408hI7;
                                i14 = i17;
                                i31 = i31;
                                unsafe = unsafe5;
                                break;
                            case 1:
                                sg5 = sg5;
                                i15 = i39;
                                i16 = i40;
                                c1408hI7 = c1408hI7;
                                i17 = i34;
                                if (i37 == 5) {
                                    iG1 = i15 + 4;
                                    i30 |= i42;
                                    AbstractC1718nI.p(obj3, j8, Float.intBitsToFloat(Cw.y0(bArr, i15)));
                                    i10 = i10;
                                    i29 = i16;
                                    iW = iW;
                                    sg5 = sg5;
                                    i28 = i17;
                                    i31 = i31;
                                    iY1 = iG1;
                                }
                                i11 = i10;
                                i29 = i16;
                                i13 = i15;
                                iW = iW;
                                i12 = i30;
                                sg2 = sg5;
                                c1408hI = c1408hI7;
                                i14 = i17;
                                i31 = i31;
                                unsafe = unsafe5;
                                break;
                            case 2:
                            case 3:
                                sg5 = sg5;
                                i15 = i39;
                                i16 = i40;
                                i18 = i34;
                                if (i37 == 0) {
                                    i30 |= i42;
                                    int iV3 = Cw.V1(bArr, i15, sg5);
                                    unsafe5.putLong(obj, j8, sg5.f16418b);
                                    i9 = i9;
                                    iY1 = iV3;
                                    i29 = i16;
                                    sg5 = sg5;
                                    i28 = i18;
                                    i31 = i31;
                                } else {
                                    i17 = i18;
                                    i11 = i10;
                                    i29 = i16;
                                    i13 = i15;
                                    iW = iW;
                                    i12 = i30;
                                    sg2 = sg5;
                                    c1408hI = c1408hI7;
                                    i14 = i17;
                                    i31 = i31;
                                    unsafe = unsafe5;
                                }
                                break;
                            case 4:
                            case 11:
                                sg5 = sg5;
                                i15 = i39;
                                i16 = i40;
                                i18 = i34;
                                if (i37 == 0) {
                                    i30 |= i42;
                                    iM1 = Cw.M1(bArr, i15, sg5);
                                    unsafe5.putInt(obj3, j8, sg5.f16417a);
                                    i10 = i10;
                                    i28 = i18;
                                    i29 = i16;
                                    i9 = i9;
                                    sg5 = sg5;
                                    iY1 = iM1;
                                } else {
                                    i17 = i18;
                                    i11 = i10;
                                    i29 = i16;
                                    i13 = i15;
                                    iW = iW;
                                    i12 = i30;
                                    sg2 = sg5;
                                    c1408hI = c1408hI7;
                                    i14 = i17;
                                    i31 = i31;
                                    unsafe = unsafe5;
                                }
                                break;
                            case 5:
                            case 14:
                                sg5 = sg5;
                                i15 = i39;
                                i16 = i40;
                                i18 = i34;
                                if (i37 == 1) {
                                    i30 |= i42;
                                    i28 = i18;
                                    unsafe5.putLong(obj, j8, Cw.c2(bArr, i15));
                                    i9 = i9;
                                    i29 = i16;
                                    sg5 = sg5;
                                    iY1 = i15 + 8;
                                    i31 = i31;
                                } else {
                                    i17 = i18;
                                    i11 = i10;
                                    i29 = i16;
                                    i13 = i15;
                                    iW = iW;
                                    i12 = i30;
                                    sg2 = sg5;
                                    c1408hI = c1408hI7;
                                    i14 = i17;
                                    i31 = i31;
                                    unsafe = unsafe5;
                                }
                                break;
                            case 6:
                            case 13:
                                sg5 = sg5;
                                i15 = i39;
                                i16 = i40;
                                i18 = i34;
                                if (i37 == 5) {
                                    iM1 = i15 + 4;
                                    i30 |= i42;
                                    unsafe5.putInt(obj3, j8, Cw.y0(bArr, i15));
                                    i10 = i10;
                                    i28 = i18;
                                    i29 = i16;
                                    i9 = i9;
                                    sg5 = sg5;
                                    iY1 = iM1;
                                } else {
                                    i17 = i18;
                                    i11 = i10;
                                    i29 = i16;
                                    i13 = i15;
                                    iW = iW;
                                    i12 = i30;
                                    sg2 = sg5;
                                    c1408hI = c1408hI7;
                                    i14 = i17;
                                    i31 = i31;
                                    unsafe = unsafe5;
                                }
                                break;
                            case 7:
                                sg5 = sg5;
                                i15 = i39;
                                i16 = i40;
                                i18 = i34;
                                if (i37 == 0) {
                                    i30 |= i42;
                                    int iV4 = Cw.V1(bArr, i15, sg5);
                                    AbstractC1718nI.m(obj3, j8, sg5.f16418b != 0);
                                    i10 = i10;
                                    i28 = i18;
                                    i29 = i16;
                                    i9 = i9;
                                    iW = iW;
                                    sg5 = sg5;
                                    i31 = i31;
                                    iY1 = iV4;
                                } else {
                                    i17 = i18;
                                    i11 = i10;
                                    i29 = i16;
                                    i13 = i15;
                                    iW = iW;
                                    i12 = i30;
                                    sg2 = sg5;
                                    c1408hI = c1408hI7;
                                    i14 = i17;
                                    i31 = i31;
                                    unsafe = unsafe5;
                                }
                                break;
                            case 8:
                                sg5 = sg5;
                                i15 = i39;
                                i16 = i40;
                                i18 = i34;
                                if (i37 == 2) {
                                    if ((i38 & 536870912) != 0) {
                                        iM1 = Cw.M1(bArr, i15, sg5);
                                        int i45 = sg5.f16417a;
                                        if (i45 < 0) {
                                            throw new AH("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                        }
                                        int i46 = i30 | i42;
                                        if (i45 == 0) {
                                            sg5.f16419c = HttpUrl.FRAGMENT_ENCODE_SET;
                                        } else {
                                            sg5.f16419c = AbstractC1822pI.d(iM1, bArr, i45);
                                            iM1 += i45;
                                        }
                                        i30 = i46;
                                    } else {
                                        int i47 = i42 | i30;
                                        int iM5 = Cw.M1(bArr, i15, sg5);
                                        int i48 = sg5.f16417a;
                                        if (i48 < 0) {
                                            throw new AH("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                        }
                                        if (i48 == 0) {
                                            sg5.f16419c = HttpUrl.FRAGMENT_ENCODE_SET;
                                        } else {
                                            sg5.f16419c = new String(bArr, iM5, i48, AbstractC2288yH.f22010a);
                                            iM5 += i48;
                                        }
                                        iM1 = iM5;
                                        i30 = i47;
                                    }
                                    unsafe5.putObject(obj3, j8, sg5.f16419c);
                                    i10 = i10;
                                    i28 = i18;
                                    i29 = i16;
                                    i9 = i9;
                                    sg5 = sg5;
                                    iY1 = iM1;
                                } else {
                                    i17 = i18;
                                    i11 = i10;
                                    i29 = i16;
                                    i13 = i15;
                                    iW = iW;
                                    i12 = i30;
                                    sg2 = sg5;
                                    c1408hI = c1408hI7;
                                    i14 = i17;
                                    i31 = i31;
                                    unsafe = unsafe5;
                                }
                                break;
                            case 9:
                                sg5 = sg5;
                                i15 = i39;
                                i19 = i34;
                                if (i37 == 2) {
                                    i30 |= i42;
                                    Object objD = ph.d(obj3, iW);
                                    int iA2 = Cw.a2(objD, ph.B(iW), bArr, i15, i9, sg);
                                    ph.m(obj3, iW, objD);
                                    i10 = i10;
                                    i9 = i9;
                                    i28 = i19;
                                    sg5 = sg5;
                                    i31 = i31;
                                    iY1 = iA2;
                                    i29 = i40;
                                    iW = iW;
                                } else {
                                    i17 = i19;
                                    i16 = i40;
                                    i11 = i10;
                                    i29 = i16;
                                    i13 = i15;
                                    iW = iW;
                                    i12 = i30;
                                    sg2 = sg5;
                                    c1408hI = c1408hI7;
                                    i14 = i17;
                                    i31 = i31;
                                    unsafe = unsafe5;
                                }
                                break;
                            case 10:
                                sg5 = sg5;
                                i15 = i39;
                                i19 = i34;
                                if (i37 == 2) {
                                    i30 |= i42;
                                    iM1 = Cw.v(bArr, i15, sg5);
                                    unsafe5.putObject(obj3, j8, sg5.f16419c);
                                    i28 = i19;
                                    i10 = i10;
                                    i9 = i9;
                                    sg5 = sg5;
                                    i29 = i40;
                                    iY1 = iM1;
                                } else {
                                    i17 = i19;
                                    i16 = i40;
                                    i11 = i10;
                                    i29 = i16;
                                    i13 = i15;
                                    iW = iW;
                                    i12 = i30;
                                    sg2 = sg5;
                                    c1408hI = c1408hI7;
                                    i14 = i17;
                                    i31 = i31;
                                    unsafe = unsafe5;
                                }
                                break;
                            case 12:
                                i9 = i9;
                                sg5 = sg5;
                                i15 = i39;
                                i20 = i40;
                                i18 = i34;
                                if (i37 == 0) {
                                    iM1 = Cw.M1(bArr, i15, sg5);
                                    int i49 = sg5.f16417a;
                                    InterfaceC2028tH interfaceC2028tHA = ph.A(iW);
                                    if ((i38 & Integer.MIN_VALUE) == 0 || interfaceC2028tHA == null || interfaceC2028tHA.zza(i49)) {
                                        i30 |= i42;
                                        unsafe5.putInt(obj3, j8, i49);
                                        i28 = i18;
                                        i29 = i20;
                                        iW = iW;
                                        sg5 = sg5;
                                        i10 = i10;
                                        i9 = i9;
                                    } else {
                                        AbstractC1873qH abstractC1873qH = (AbstractC1873qH) obj3;
                                        C1408hI c1408hIB = abstractC1873qH.zzt;
                                        if (c1408hIB == c1408hI7) {
                                            c1408hIB = C1408hI.b();
                                            abstractC1873qH.zzt = c1408hIB;
                                        }
                                        c1408hIB.c(i20, Long.valueOf(i49));
                                        i28 = i18;
                                        i29 = i20;
                                        i10 = i10;
                                        i9 = i9;
                                        sg5 = sg5;
                                    }
                                    iY1 = iM1;
                                } else {
                                    i16 = i20;
                                    i17 = i18;
                                    i11 = i10;
                                    i29 = i16;
                                    i13 = i15;
                                    iW = iW;
                                    i12 = i30;
                                    sg2 = sg5;
                                    c1408hI = c1408hI7;
                                    i14 = i17;
                                    i31 = i31;
                                    unsafe = unsafe5;
                                }
                                break;
                            case 15:
                                sg5 = sg5;
                                i15 = i39;
                                i20 = i40;
                                i18 = i34;
                                if (i37 == 0) {
                                    i30 |= i42;
                                    iM1 = Cw.M1(bArr, i15, sg5);
                                    unsafe5.putInt(obj3, j8, AbstractC1200dH.c(sg5.f16417a));
                                    i28 = i18;
                                    i10 = i10;
                                    i9 = i9;
                                    iW = iW;
                                    sg5 = sg5;
                                    i29 = i20;
                                    iY1 = iM1;
                                } else {
                                    i16 = i20;
                                    i17 = i18;
                                    i11 = i10;
                                    i29 = i16;
                                    i13 = i15;
                                    iW = iW;
                                    i12 = i30;
                                    sg2 = sg5;
                                    c1408hI = c1408hI7;
                                    i14 = i17;
                                    i31 = i31;
                                    unsafe = unsafe5;
                                }
                                break;
                            case 16:
                                i15 = i39;
                                if (i37 == 0) {
                                    i30 |= i42;
                                    iY1 = Cw.V1(bArr, i15, sg5);
                                    i28 = i34;
                                    unsafe5.putLong(obj, j8, AbstractC1200dH.d(sg5.f16418b));
                                    i9 = i9;
                                    i10 = i10;
                                    iW = iW;
                                    sg5 = sg5;
                                    i31 = i31;
                                    i29 = i40;
                                } else {
                                    i16 = i40;
                                    i17 = i34;
                                    i11 = i10;
                                    i29 = i16;
                                    i13 = i15;
                                    iW = iW;
                                    i12 = i30;
                                    sg2 = sg5;
                                    c1408hI = c1408hI7;
                                    i14 = i17;
                                    i31 = i31;
                                    unsafe = unsafe5;
                                }
                                break;
                            default:
                                if (i37 == 3) {
                                    Object objD2 = ph.d(obj3, iW);
                                    int i50 = iW;
                                    iY1 = Cw.Y1(objD2, ph.B(iW), bArr, i39, i9, (i34 << 3) | 4, sg);
                                    ph.m(obj3, i50, objD2);
                                    i9 = i9;
                                    i30 |= i42;
                                    i28 = i34;
                                    iW = i50;
                                    i31 = i31;
                                    i29 = i40;
                                    i10 = i10;
                                } else {
                                    i15 = i39;
                                    i16 = i40;
                                    i17 = i34;
                                    i11 = i10;
                                    i29 = i16;
                                    i13 = i15;
                                    iW = iW;
                                    i12 = i30;
                                    sg2 = sg5;
                                    c1408hI = c1408hI7;
                                    i14 = i17;
                                    i31 = i31;
                                    unsafe = unsafe5;
                                }
                                break;
                        }
                    } else {
                        int i51 = i31;
                        SG sg6 = sg5;
                        int i52 = i30;
                        if (iX != 27) {
                            int i53 = iW;
                            sg2 = sg6;
                            i12 = i52;
                            int i54 = i9;
                            if (iX <= 49) {
                                long j9 = i38;
                                QG qg = (QG) ((InterfaceC2236xH) unsafe5.getObject(obj3, j8));
                                if (qg.zzc()) {
                                    j9 = j9;
                                    interfaceC2236xH = qg;
                                } else {
                                    int size = qg.size();
                                    InterfaceC2236xH interfaceC2236xHA = qg.a(size == 0 ? 10 : size + size);
                                    unsafe5.putObject(obj3, j8, interfaceC2236xHA);
                                    interfaceC2236xH = interfaceC2236xHA;
                                }
                                switch (iX) {
                                    case 18:
                                    case 35:
                                        i23 = i40;
                                        i24 = i39;
                                        InterfaceC2236xH interfaceC2236xH2 = interfaceC2236xH;
                                        c1408hI2 = c1408hI7;
                                        i53 = i53;
                                        unsafe3 = unsafe5;
                                        if (i37 == 2) {
                                            AbstractC2090uc.t(interfaceC2236xH2);
                                            iM2 = Cw.M1(bArr, i24, sg2);
                                            int i55 = sg2.f16417a + iM2;
                                            if (iM2 < i55) {
                                                Double.longBitsToDouble(Cw.c2(bArr, iM2));
                                                throw null;
                                            }
                                            if (iM2 != i55) {
                                                throw new AH("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                            iV1 = iM2;
                                            if (iV1 != i24) {
                                                sg2 = sg2;
                                                i54 = i54;
                                                ph = this;
                                                i10 = i10;
                                                iY1 = iV1;
                                                iW = i53;
                                                sg5 = sg2;
                                                i9 = i54;
                                                i30 = i12;
                                                i28 = i34;
                                                i31 = i51;
                                                i29 = i23;
                                                obj3 = obj;
                                            } else {
                                                sg2 = sg2;
                                                i54 = i54;
                                                ph = this;
                                                i11 = i10;
                                                i13 = iV1;
                                                c1408hI = c1408hI2;
                                                iW = i53;
                                                sg2 = sg2;
                                                i31 = i51;
                                                i29 = i23;
                                                unsafe = unsafe3;
                                                i14 = i34;
                                                obj3 = obj;
                                            }
                                        } else {
                                            if (i37 == 1) {
                                                AbstractC2090uc.t(interfaceC2236xH2);
                                                Double.longBitsToDouble(Cw.c2(bArr, i24));
                                                throw null;
                                            }
                                            iV1 = i24;
                                            if (iV1 != i24) {
                                                sg2 = sg2;
                                                i54 = i54;
                                                ph = this;
                                                i10 = i10;
                                                iY1 = iV1;
                                                iW = i53;
                                                sg5 = sg2;
                                                i9 = i54;
                                                i30 = i12;
                                                i28 = i34;
                                                i31 = i51;
                                                i29 = i23;
                                                obj3 = obj;
                                            } else {
                                                sg2 = sg2;
                                                i54 = i54;
                                                ph = this;
                                                i11 = i10;
                                                i13 = iV1;
                                                c1408hI = c1408hI2;
                                                iW = i53;
                                                sg2 = sg2;
                                                i31 = i51;
                                                i29 = i23;
                                                unsafe = unsafe3;
                                                i14 = i34;
                                                obj3 = obj;
                                            }
                                        }
                                        break;
                                    case 19:
                                    case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                                        i23 = i40;
                                        i24 = i39;
                                        InterfaceC2236xH interfaceC2236xH3 = interfaceC2236xH;
                                        c1408hI2 = c1408hI7;
                                        i53 = i53;
                                        unsafe3 = unsafe5;
                                        if (i37 == 2) {
                                            AbstractC2090uc.t(interfaceC2236xH3);
                                            iM2 = Cw.M1(bArr, i24, sg2);
                                            int i56 = sg2.f16417a + iM2;
                                            if (iM2 < i56) {
                                                Float.intBitsToFloat(Cw.y0(bArr, iM2));
                                                throw null;
                                            }
                                            if (iM2 != i56) {
                                                throw new AH("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                            iV1 = iM2;
                                            if (iV1 != i24) {
                                                sg2 = sg2;
                                                i54 = i54;
                                                ph = this;
                                                i10 = i10;
                                                iY1 = iV1;
                                                iW = i53;
                                                sg5 = sg2;
                                                i9 = i54;
                                                i30 = i12;
                                                i28 = i34;
                                                i31 = i51;
                                                i29 = i23;
                                                obj3 = obj;
                                            } else {
                                                sg2 = sg2;
                                                i54 = i54;
                                                ph = this;
                                                i11 = i10;
                                                i13 = iV1;
                                                c1408hI = c1408hI2;
                                                iW = i53;
                                                sg2 = sg2;
                                                i31 = i51;
                                                i29 = i23;
                                                unsafe = unsafe3;
                                                i14 = i34;
                                                obj3 = obj;
                                            }
                                        } else {
                                            if (i37 == 5) {
                                                AbstractC2090uc.t(interfaceC2236xH3);
                                                Float.intBitsToFloat(Cw.y0(bArr, i24));
                                                throw null;
                                            }
                                            iV1 = i24;
                                            if (iV1 != i24) {
                                                sg2 = sg2;
                                                i54 = i54;
                                                ph = this;
                                                i10 = i10;
                                                iY1 = iV1;
                                                iW = i53;
                                                sg5 = sg2;
                                                i9 = i54;
                                                i30 = i12;
                                                i28 = i34;
                                                i31 = i51;
                                                i29 = i23;
                                                obj3 = obj;
                                            } else {
                                                sg2 = sg2;
                                                i54 = i54;
                                                ph = this;
                                                i11 = i10;
                                                i13 = iV1;
                                                c1408hI = c1408hI2;
                                                iW = i53;
                                                sg2 = sg2;
                                                i31 = i51;
                                                i29 = i23;
                                                unsafe = unsafe3;
                                                i14 = i34;
                                                obj3 = obj;
                                            }
                                        }
                                        break;
                                    case 20:
                                    case 21:
                                    case 37:
                                    case 38:
                                        i23 = i40;
                                        i24 = i39;
                                        InterfaceC2236xH interfaceC2236xH4 = interfaceC2236xH;
                                        c1408hI2 = c1408hI7;
                                        i53 = i53;
                                        unsafe3 = unsafe5;
                                        if (i37 != 2) {
                                            if (i37 == 0) {
                                                FH fh = (FH) interfaceC2236xH4;
                                                iV1 = Cw.V1(bArr, i24, sg2);
                                                fh.i(sg2.f16418b);
                                                while (iV1 < i54) {
                                                    int iM6 = Cw.M1(bArr, iV1, sg2);
                                                    if (i23 == sg2.f16417a) {
                                                        iV1 = Cw.V1(bArr, iM6, sg2);
                                                        fh.i(sg2.f16418b);
                                                    }
                                                }
                                            }
                                            iV1 = i24;
                                            if (iV1 != i24) {
                                                sg2 = sg2;
                                                i54 = i54;
                                                ph = this;
                                                i10 = i10;
                                                iY1 = iV1;
                                                iW = i53;
                                                sg5 = sg2;
                                                i9 = i54;
                                                i30 = i12;
                                                i28 = i34;
                                                i31 = i51;
                                                i29 = i23;
                                                obj3 = obj;
                                            } else {
                                                sg2 = sg2;
                                                i54 = i54;
                                                ph = this;
                                                i11 = i10;
                                                i13 = iV1;
                                                c1408hI = c1408hI2;
                                                iW = i53;
                                                sg2 = sg2;
                                                i31 = i51;
                                                i29 = i23;
                                                unsafe = unsafe3;
                                                i14 = i34;
                                                obj3 = obj;
                                            }
                                        } else {
                                            FH fh2 = (FH) interfaceC2236xH4;
                                            int iM7 = Cw.M1(bArr, i24, sg2);
                                            int i57 = sg2.f16417a + iM7;
                                            while (iM7 < i57) {
                                                iM7 = Cw.V1(bArr, iM7, sg2);
                                                fh2.i(sg2.f16418b);
                                            }
                                            if (iM7 != i57) {
                                                throw new AH("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                            iV1 = iM7;
                                        }
                                        if (iV1 != i24) {
                                            sg2 = sg2;
                                            i54 = i54;
                                            ph = this;
                                            i10 = i10;
                                            iY1 = iV1;
                                            iW = i53;
                                            sg5 = sg2;
                                            i9 = i54;
                                            i30 = i12;
                                            i28 = i34;
                                            i31 = i51;
                                            i29 = i23;
                                            obj3 = obj;
                                        } else {
                                            sg2 = sg2;
                                            i54 = i54;
                                            ph = this;
                                            i11 = i10;
                                            i13 = iV1;
                                            c1408hI = c1408hI2;
                                            iW = i53;
                                            sg2 = sg2;
                                            i31 = i51;
                                            i29 = i23;
                                            unsafe = unsafe3;
                                            i14 = i34;
                                            obj3 = obj;
                                        }
                                        break;
                                    case 22:
                                    case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                                    case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                    case 43:
                                        i23 = i40;
                                        i24 = i39;
                                        i25 = i53;
                                        InterfaceC2236xH interfaceC2236xH5 = interfaceC2236xH;
                                        c1408hI3 = c1408hI7;
                                        unsafe3 = unsafe5;
                                        sg3 = sg2;
                                        if (i37 != 2) {
                                            if (i37 == 0) {
                                                sg2 = sg3;
                                                c1408hI2 = c1408hI3;
                                                i53 = i25;
                                                iM2 = Cw.S1(i23, bArr, i24, i9, interfaceC2236xH5, sg);
                                                iV1 = iM2;
                                                if (iV1 != i24) {
                                                    sg2 = sg2;
                                                    i54 = i54;
                                                    ph = this;
                                                    i10 = i10;
                                                    iY1 = iV1;
                                                    iW = i53;
                                                    sg5 = sg2;
                                                    i9 = i54;
                                                    i30 = i12;
                                                    i28 = i34;
                                                    i31 = i51;
                                                    i29 = i23;
                                                    obj3 = obj;
                                                } else {
                                                    sg2 = sg2;
                                                    i54 = i54;
                                                    ph = this;
                                                    i11 = i10;
                                                    i13 = iV1;
                                                    c1408hI = c1408hI2;
                                                    iW = i53;
                                                    sg2 = sg2;
                                                    i31 = i51;
                                                    i29 = i23;
                                                    unsafe = unsafe3;
                                                    i14 = i34;
                                                    obj3 = obj;
                                                }
                                            }
                                            sg2 = sg3;
                                            c1408hI2 = c1408hI3;
                                            i53 = i25;
                                            iV1 = i24;
                                            if (iV1 != i24) {
                                                sg2 = sg2;
                                                i54 = i54;
                                                ph = this;
                                                i10 = i10;
                                                iY1 = iV1;
                                                iW = i53;
                                                sg5 = sg2;
                                                i9 = i54;
                                                i30 = i12;
                                                i28 = i34;
                                                i31 = i51;
                                                i29 = i23;
                                                obj3 = obj;
                                            } else {
                                                sg2 = sg2;
                                                i54 = i54;
                                                ph = this;
                                                i11 = i10;
                                                i13 = iV1;
                                                c1408hI = c1408hI2;
                                                iW = i53;
                                                sg2 = sg2;
                                                i31 = i51;
                                                i29 = i23;
                                                unsafe = unsafe3;
                                                i14 = i34;
                                                obj3 = obj;
                                            }
                                            break;
                                        } else {
                                            iV1 = Cw.C1(bArr, i24, interfaceC2236xH5, sg3);
                                            sg2 = sg3;
                                            c1408hI2 = c1408hI3;
                                            i53 = i25;
                                            if (iV1 != i24) {
                                                sg2 = sg2;
                                                i54 = i54;
                                                ph = this;
                                                i10 = i10;
                                                iY1 = iV1;
                                                iW = i53;
                                                sg5 = sg2;
                                                i9 = i54;
                                                i30 = i12;
                                                i28 = i34;
                                                i31 = i51;
                                                i29 = i23;
                                                obj3 = obj;
                                            } else {
                                                sg2 = sg2;
                                                i54 = i54;
                                                ph = this;
                                                i11 = i10;
                                                i13 = iV1;
                                                c1408hI = c1408hI2;
                                                iW = i53;
                                                sg2 = sg2;
                                                i31 = i51;
                                                i29 = i23;
                                                unsafe = unsafe3;
                                                i14 = i34;
                                                obj3 = obj;
                                            }
                                        }
                                        break;
                                    case 23:
                                    case 32:
                                    case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                                    case 46:
                                        i23 = i40;
                                        i24 = i39;
                                        i25 = i53;
                                        InterfaceC2236xH interfaceC2236xH6 = interfaceC2236xH;
                                        c1408hI3 = c1408hI7;
                                        unsafe3 = unsafe5;
                                        sg3 = sg2;
                                        if (i37 != 2) {
                                            if (i37 == 1) {
                                                iV1 = i24 + 8;
                                                FH fh3 = (FH) interfaceC2236xH6;
                                                fh3.i(Cw.c2(bArr, i24));
                                                while (iV1 < i54) {
                                                    int iM8 = Cw.M1(bArr, iV1, sg3);
                                                    if (i23 != sg3.f16417a) {
                                                        sg2 = sg3;
                                                        c1408hI2 = c1408hI3;
                                                        i53 = i25;
                                                        if (iV1 != i24) {
                                                            sg2 = sg2;
                                                            i54 = i54;
                                                            ph = this;
                                                            i10 = i10;
                                                            iY1 = iV1;
                                                            iW = i53;
                                                            sg5 = sg2;
                                                            i9 = i54;
                                                            i30 = i12;
                                                            i28 = i34;
                                                            i31 = i51;
                                                            i29 = i23;
                                                            obj3 = obj;
                                                        } else {
                                                            sg2 = sg2;
                                                            i54 = i54;
                                                            ph = this;
                                                            i11 = i10;
                                                            i13 = iV1;
                                                            c1408hI = c1408hI2;
                                                            iW = i53;
                                                            sg2 = sg2;
                                                            i31 = i51;
                                                            i29 = i23;
                                                            unsafe = unsafe3;
                                                            i14 = i34;
                                                            obj3 = obj;
                                                        }
                                                    } else {
                                                        fh3.i(Cw.c2(bArr, iM8));
                                                        iV1 = iM8 + 8;
                                                    }
                                                    break;
                                                }
                                                sg2 = sg3;
                                                c1408hI2 = c1408hI3;
                                                i53 = i25;
                                                if (iV1 != i24) {
                                                    sg2 = sg2;
                                                    i54 = i54;
                                                    ph = this;
                                                    i10 = i10;
                                                    iY1 = iV1;
                                                    iW = i53;
                                                    sg5 = sg2;
                                                    i9 = i54;
                                                    i30 = i12;
                                                    i28 = i34;
                                                    i31 = i51;
                                                    i29 = i23;
                                                    obj3 = obj;
                                                } else {
                                                    sg2 = sg2;
                                                    i54 = i54;
                                                    ph = this;
                                                    i11 = i10;
                                                    i13 = iV1;
                                                    c1408hI = c1408hI2;
                                                    iW = i53;
                                                    sg2 = sg2;
                                                    i31 = i51;
                                                    i29 = i23;
                                                    unsafe = unsafe3;
                                                    i14 = i34;
                                                    obj3 = obj;
                                                }
                                            }
                                            sg2 = sg3;
                                            c1408hI2 = c1408hI3;
                                            i53 = i25;
                                            iV1 = i24;
                                            if (iV1 != i24) {
                                                sg2 = sg2;
                                                i54 = i54;
                                                ph = this;
                                                i10 = i10;
                                                iY1 = iV1;
                                                iW = i53;
                                                sg5 = sg2;
                                                i9 = i54;
                                                i30 = i12;
                                                i28 = i34;
                                                i31 = i51;
                                                i29 = i23;
                                                obj3 = obj;
                                            } else {
                                                sg2 = sg2;
                                                i54 = i54;
                                                ph = this;
                                                i11 = i10;
                                                i13 = iV1;
                                                c1408hI = c1408hI2;
                                                iW = i53;
                                                sg2 = sg2;
                                                i31 = i51;
                                                i29 = i23;
                                                unsafe = unsafe3;
                                                i14 = i34;
                                                obj3 = obj;
                                            }
                                            break;
                                        } else {
                                            FH fh4 = (FH) interfaceC2236xH6;
                                            iM3 = Cw.M1(bArr, i24, sg3);
                                            int i58 = sg3.f16417a + iM3;
                                            while (iM3 < i58) {
                                                fh4.i(Cw.c2(bArr, iM3));
                                                iM3 += 8;
                                            }
                                            if (iM3 != i58) {
                                                throw new AH("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                            sg2 = sg3;
                                            iV1 = iM3;
                                            c1408hI2 = c1408hI3;
                                            i53 = i25;
                                            if (iV1 != i24) {
                                                sg2 = sg2;
                                                i54 = i54;
                                                ph = this;
                                                i10 = i10;
                                                iY1 = iV1;
                                                iW = i53;
                                                sg5 = sg2;
                                                i9 = i54;
                                                i30 = i12;
                                                i28 = i34;
                                                i31 = i51;
                                                i29 = i23;
                                                obj3 = obj;
                                            } else {
                                                sg2 = sg2;
                                                i54 = i54;
                                                ph = this;
                                                i11 = i10;
                                                i13 = iV1;
                                                c1408hI = c1408hI2;
                                                iW = i53;
                                                sg2 = sg2;
                                                i31 = i51;
                                                i29 = i23;
                                                unsafe = unsafe3;
                                                i14 = i34;
                                                obj3 = obj;
                                            }
                                        }
                                        break;
                                    case 24:
                                    case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                                    case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
                                    case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                                        i23 = i40;
                                        i24 = i39;
                                        i25 = i53;
                                        InterfaceC2236xH interfaceC2236xH7 = interfaceC2236xH;
                                        c1408hI3 = c1408hI7;
                                        unsafe3 = unsafe5;
                                        sg3 = sg2;
                                        if (i37 != 2) {
                                            if (i37 == 5) {
                                                iV1 = i24 + 4;
                                                C1924rH c1924rH = (C1924rH) interfaceC2236xH7;
                                                c1924rH.i(Cw.y0(bArr, i24));
                                                while (iV1 < i54) {
                                                    int iM9 = Cw.M1(bArr, iV1, sg3);
                                                    if (i23 != sg3.f16417a) {
                                                        sg2 = sg3;
                                                        c1408hI2 = c1408hI3;
                                                        i53 = i25;
                                                        if (iV1 != i24) {
                                                            sg2 = sg2;
                                                            i54 = i54;
                                                            ph = this;
                                                            i10 = i10;
                                                            iY1 = iV1;
                                                            iW = i53;
                                                            sg5 = sg2;
                                                            i9 = i54;
                                                            i30 = i12;
                                                            i28 = i34;
                                                            i31 = i51;
                                                            i29 = i23;
                                                            obj3 = obj;
                                                        } else {
                                                            sg2 = sg2;
                                                            i54 = i54;
                                                            ph = this;
                                                            i11 = i10;
                                                            i13 = iV1;
                                                            c1408hI = c1408hI2;
                                                            iW = i53;
                                                            sg2 = sg2;
                                                            i31 = i51;
                                                            i29 = i23;
                                                            unsafe = unsafe3;
                                                            i14 = i34;
                                                            obj3 = obj;
                                                        }
                                                    } else {
                                                        c1924rH.i(Cw.y0(bArr, iM9));
                                                        iV1 = iM9 + 4;
                                                    }
                                                    break;
                                                }
                                                sg2 = sg3;
                                                c1408hI2 = c1408hI3;
                                                i53 = i25;
                                                if (iV1 != i24) {
                                                    sg2 = sg2;
                                                    i54 = i54;
                                                    ph = this;
                                                    i10 = i10;
                                                    iY1 = iV1;
                                                    iW = i53;
                                                    sg5 = sg2;
                                                    i9 = i54;
                                                    i30 = i12;
                                                    i28 = i34;
                                                    i31 = i51;
                                                    i29 = i23;
                                                    obj3 = obj;
                                                } else {
                                                    sg2 = sg2;
                                                    i54 = i54;
                                                    ph = this;
                                                    i11 = i10;
                                                    i13 = iV1;
                                                    c1408hI = c1408hI2;
                                                    iW = i53;
                                                    sg2 = sg2;
                                                    i31 = i51;
                                                    i29 = i23;
                                                    unsafe = unsafe3;
                                                    i14 = i34;
                                                    obj3 = obj;
                                                }
                                            }
                                            sg2 = sg3;
                                            c1408hI2 = c1408hI3;
                                            i53 = i25;
                                            iV1 = i24;
                                            if (iV1 != i24) {
                                                sg2 = sg2;
                                                i54 = i54;
                                                ph = this;
                                                i10 = i10;
                                                iY1 = iV1;
                                                iW = i53;
                                                sg5 = sg2;
                                                i9 = i54;
                                                i30 = i12;
                                                i28 = i34;
                                                i31 = i51;
                                                i29 = i23;
                                                obj3 = obj;
                                            } else {
                                                sg2 = sg2;
                                                i54 = i54;
                                                ph = this;
                                                i11 = i10;
                                                i13 = iV1;
                                                c1408hI = c1408hI2;
                                                iW = i53;
                                                sg2 = sg2;
                                                i31 = i51;
                                                i29 = i23;
                                                unsafe = unsafe3;
                                                i14 = i34;
                                                obj3 = obj;
                                            }
                                            break;
                                        } else {
                                            C1924rH c1924rH2 = (C1924rH) interfaceC2236xH7;
                                            iM3 = Cw.M1(bArr, i24, sg3);
                                            int i59 = sg3.f16417a + iM3;
                                            while (iM3 < i59) {
                                                c1924rH2.i(Cw.y0(bArr, iM3));
                                                iM3 += 4;
                                            }
                                            if (iM3 != i59) {
                                                throw new AH("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                            sg2 = sg3;
                                            iV1 = iM3;
                                            c1408hI2 = c1408hI3;
                                            i53 = i25;
                                            if (iV1 != i24) {
                                                sg2 = sg2;
                                                i54 = i54;
                                                ph = this;
                                                i10 = i10;
                                                iY1 = iV1;
                                                iW = i53;
                                                sg5 = sg2;
                                                i9 = i54;
                                                i30 = i12;
                                                i28 = i34;
                                                i31 = i51;
                                                i29 = i23;
                                                obj3 = obj;
                                            } else {
                                                sg2 = sg2;
                                                i54 = i54;
                                                ph = this;
                                                i11 = i10;
                                                i13 = iV1;
                                                c1408hI = c1408hI2;
                                                iW = i53;
                                                sg2 = sg2;
                                                i31 = i51;
                                                i29 = i23;
                                                unsafe = unsafe3;
                                                i14 = i34;
                                                obj3 = obj;
                                            }
                                        }
                                        break;
                                    case 25:
                                    case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                                        i23 = i40;
                                        i24 = i39;
                                        i25 = i53;
                                        InterfaceC2236xH interfaceC2236xH8 = interfaceC2236xH;
                                        c1408hI3 = c1408hI7;
                                        unsafe3 = unsafe5;
                                        sg3 = sg2;
                                        if (i37 != 2) {
                                            if (i37 == 0) {
                                                AbstractC2090uc.t(interfaceC2236xH8);
                                                Cw.V1(bArr, i24, sg3);
                                                throw null;
                                            }
                                            sg2 = sg3;
                                            c1408hI2 = c1408hI3;
                                            i53 = i25;
                                            iV1 = i24;
                                            if (iV1 != i24) {
                                                sg2 = sg2;
                                                i54 = i54;
                                                ph = this;
                                                i10 = i10;
                                                iY1 = iV1;
                                                iW = i53;
                                                sg5 = sg2;
                                                i9 = i54;
                                                i30 = i12;
                                                i28 = i34;
                                                i31 = i51;
                                                i29 = i23;
                                                obj3 = obj;
                                            } else {
                                                sg2 = sg2;
                                                i54 = i54;
                                                ph = this;
                                                i11 = i10;
                                                i13 = iV1;
                                                c1408hI = c1408hI2;
                                                iW = i53;
                                                sg2 = sg2;
                                                i31 = i51;
                                                i29 = i23;
                                                unsafe = unsafe3;
                                                i14 = i34;
                                                obj3 = obj;
                                            }
                                        } else {
                                            AbstractC2090uc.t(interfaceC2236xH8);
                                            iM3 = Cw.M1(bArr, i24, sg3);
                                            int i60 = sg3.f16417a + iM3;
                                            if (iM3 < i60) {
                                                Cw.V1(bArr, iM3, sg3);
                                                throw null;
                                            }
                                            if (iM3 != i60) {
                                                throw new AH("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                            sg2 = sg3;
                                            iV1 = iM3;
                                            c1408hI2 = c1408hI3;
                                            i53 = i25;
                                            if (iV1 != i24) {
                                                sg2 = sg2;
                                                i54 = i54;
                                                ph = this;
                                                i10 = i10;
                                                iY1 = iV1;
                                                iW = i53;
                                                sg5 = sg2;
                                                i9 = i54;
                                                i30 = i12;
                                                i28 = i34;
                                                i31 = i51;
                                                i29 = i23;
                                                obj3 = obj;
                                            } else {
                                                sg2 = sg2;
                                                i54 = i54;
                                                ph = this;
                                                i11 = i10;
                                                i13 = iV1;
                                                c1408hI = c1408hI2;
                                                iW = i53;
                                                sg2 = sg2;
                                                i31 = i51;
                                                i29 = i23;
                                                unsafe = unsafe3;
                                                i14 = i34;
                                                obj3 = obj;
                                            }
                                        }
                                        break;
                                    case Service.BILLING_FIELD_NUMBER /* 26 */:
                                        i23 = i40;
                                        i24 = i39;
                                        i25 = i53;
                                        InterfaceC2236xH interfaceC2236xH9 = interfaceC2236xH;
                                        c1408hI3 = c1408hI7;
                                        unsafe3 = unsafe5;
                                        if (i37 != 2) {
                                            c1408hI2 = c1408hI3;
                                            i53 = i25;
                                            sg2 = sg2;
                                            iV1 = i24;
                                        } else if ((j9 & 536870912) == 0) {
                                            int iM10 = Cw.M1(bArr, i24, sg2);
                                            int i61 = sg2.f16417a;
                                            if (i61 < 0) {
                                                throw new AH("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                            }
                                            if (i61 == 0) {
                                                obj2 = HttpUrl.FRAGMENT_ENCODE_SET;
                                                interfaceC2236xH9.add(obj2);
                                            } else {
                                                obj2 = HttpUrl.FRAGMENT_ENCODE_SET;
                                                interfaceC2236xH9.add(new String(bArr, iM10, i61, AbstractC2288yH.f22010a));
                                                iM10 += i61;
                                            }
                                            while (iM10 < i54) {
                                                int iM11 = Cw.M1(bArr, iM10, sg2);
                                                if (i23 == sg2.f16417a) {
                                                    iM10 = Cw.M1(bArr, iM11, sg2);
                                                    int i62 = sg2.f16417a;
                                                    if (i62 < 0) {
                                                        throw new AH("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                    }
                                                    if (i62 == 0) {
                                                        interfaceC2236xH9.add(obj2);
                                                    } else {
                                                        interfaceC2236xH9.add(new String(bArr, iM10, i62, AbstractC2288yH.f22010a));
                                                        iM10 += i62;
                                                    }
                                                } else {
                                                    iV1 = iM10;
                                                    c1408hI2 = c1408hI3;
                                                    i53 = i25;
                                                    sg2 = sg2;
                                                }
                                            }
                                            iV1 = iM10;
                                            c1408hI2 = c1408hI3;
                                            i53 = i25;
                                            sg2 = sg2;
                                        } else {
                                            int iM12 = Cw.M1(bArr, i24, sg2);
                                            int i63 = sg2.f16417a;
                                            if (i63 < 0) {
                                                throw new AH("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                            }
                                            if (i63 == 0) {
                                                interfaceC2236xH9.add(HttpUrl.FRAGMENT_ENCODE_SET);
                                            } else {
                                                int i64 = iM12 + i63;
                                                if (!AbstractC1822pI.e(iM12, bArr, i64)) {
                                                    throw new AH("Protocol message had invalid UTF-8.");
                                                }
                                                interfaceC2236xH9.add(new String(bArr, iM12, i63, AbstractC2288yH.f22010a));
                                                iM12 = i64;
                                            }
                                            while (iM12 < i54) {
                                                int iM13 = Cw.M1(bArr, iM12, sg2);
                                                if (i23 == sg2.f16417a) {
                                                    iM12 = Cw.M1(bArr, iM13, sg2);
                                                    int i65 = sg2.f16417a;
                                                    if (i65 < 0) {
                                                        throw new AH("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                    }
                                                    if (i65 == 0) {
                                                        interfaceC2236xH9.add(HttpUrl.FRAGMENT_ENCODE_SET);
                                                    } else {
                                                        int i66 = iM12 + i65;
                                                        if (!AbstractC1822pI.e(iM12, bArr, i66)) {
                                                            throw new AH("Protocol message had invalid UTF-8.");
                                                        }
                                                        interfaceC2236xH9.add(new String(bArr, iM12, i65, AbstractC2288yH.f22010a));
                                                        iM12 = i66;
                                                    }
                                                } else {
                                                    sg2 = sg2;
                                                    iV1 = iM12;
                                                    c1408hI2 = c1408hI3;
                                                    i53 = i25;
                                                }
                                            }
                                            sg2 = sg2;
                                            iV1 = iM12;
                                            c1408hI2 = c1408hI3;
                                            i53 = i25;
                                        }
                                        if (iV1 != i24) {
                                            sg2 = sg2;
                                            i54 = i54;
                                            ph = this;
                                            i10 = i10;
                                            iY1 = iV1;
                                            iW = i53;
                                            sg5 = sg2;
                                            i9 = i54;
                                            i30 = i12;
                                            i28 = i34;
                                            i31 = i51;
                                            i29 = i23;
                                            obj3 = obj;
                                        } else {
                                            sg2 = sg2;
                                            i54 = i54;
                                            ph = this;
                                            i11 = i10;
                                            i13 = iV1;
                                            c1408hI = c1408hI2;
                                            iW = i53;
                                            sg2 = sg2;
                                            i31 = i51;
                                            i29 = i23;
                                            unsafe = unsafe3;
                                            i14 = i34;
                                            obj3 = obj;
                                        }
                                        break;
                                    case 27:
                                        unsafe4 = unsafe5;
                                        i23 = i40;
                                        if (i37 == 2) {
                                            i24 = i39;
                                            int iV5 = Cw.v1(ph.B(i53), i23, bArr, i39, i9, interfaceC2236xH, sg);
                                            c1408hI2 = c1408hI7;
                                            i53 = i53;
                                            iV1 = iV5;
                                            unsafe3 = unsafe4;
                                        } else {
                                            i24 = i39;
                                            c1408hI2 = c1408hI7;
                                            unsafe3 = unsafe4;
                                            iV1 = i24;
                                        }
                                        if (iV1 != i24) {
                                            sg2 = sg2;
                                            i54 = i54;
                                            ph = this;
                                            i10 = i10;
                                            iY1 = iV1;
                                            iW = i53;
                                            sg5 = sg2;
                                            i9 = i54;
                                            i30 = i12;
                                            i28 = i34;
                                            i31 = i51;
                                            i29 = i23;
                                            obj3 = obj;
                                        } else {
                                            sg2 = sg2;
                                            i54 = i54;
                                            ph = this;
                                            i11 = i10;
                                            i13 = iV1;
                                            c1408hI = c1408hI2;
                                            iW = i53;
                                            sg2 = sg2;
                                            i31 = i51;
                                            i29 = i23;
                                            unsafe = unsafe3;
                                            i14 = i34;
                                            obj3 = obj;
                                        }
                                        break;
                                    case Service.MONITORING_FIELD_NUMBER /* 28 */:
                                        unsafe4 = unsafe5;
                                        i23 = i40;
                                        i26 = i39;
                                        if (i37 == 2) {
                                            iM4 = Cw.M1(bArr, i26, sg2);
                                            int i67 = sg2.f16417a;
                                            if (i67 < 0) {
                                                throw new AH("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                            }
                                            if (i67 > bArr.length - iM4) {
                                                throw new AH("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                            if (i67 == 0) {
                                                interfaceC2236xH.add(XG.f17401H);
                                            } else {
                                                interfaceC2236xH.add(XG.y(iM4, bArr, i67));
                                                iM4 += i67;
                                            }
                                            while (iM4 < i54) {
                                                int iM14 = Cw.M1(bArr, iM4, sg2);
                                                if (i23 != sg2.f16417a) {
                                                    iV1 = iM4;
                                                    i24 = i26;
                                                    c1408hI2 = c1408hI7;
                                                    unsafe3 = unsafe4;
                                                    if (iV1 != i24) {
                                                        sg2 = sg2;
                                                        i54 = i54;
                                                        ph = this;
                                                        i10 = i10;
                                                        iY1 = iV1;
                                                        iW = i53;
                                                        sg5 = sg2;
                                                        i9 = i54;
                                                        i30 = i12;
                                                        i28 = i34;
                                                        i31 = i51;
                                                        i29 = i23;
                                                        obj3 = obj;
                                                    } else {
                                                        sg2 = sg2;
                                                        i54 = i54;
                                                        ph = this;
                                                        i11 = i10;
                                                        i13 = iV1;
                                                        c1408hI = c1408hI2;
                                                        iW = i53;
                                                        sg2 = sg2;
                                                        i31 = i51;
                                                        i29 = i23;
                                                        unsafe = unsafe3;
                                                        i14 = i34;
                                                        obj3 = obj;
                                                    }
                                                    break;
                                                } else {
                                                    iM4 = Cw.M1(bArr, iM14, sg2);
                                                    int i68 = sg2.f16417a;
                                                    if (i68 < 0) {
                                                        throw new AH("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                    }
                                                    if (i68 > bArr.length - iM4) {
                                                        throw new AH("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                                    }
                                                    if (i68 == 0) {
                                                        interfaceC2236xH.add(XG.f17401H);
                                                    } else {
                                                        interfaceC2236xH.add(XG.y(iM4, bArr, i68));
                                                        iM4 += i68;
                                                    }
                                                }
                                            }
                                            iV1 = iM4;
                                            i24 = i26;
                                            c1408hI2 = c1408hI7;
                                            unsafe3 = unsafe4;
                                            if (iV1 != i24) {
                                                sg2 = sg2;
                                                i54 = i54;
                                                ph = this;
                                                i10 = i10;
                                                iY1 = iV1;
                                                iW = i53;
                                                sg5 = sg2;
                                                i9 = i54;
                                                i30 = i12;
                                                i28 = i34;
                                                i31 = i51;
                                                i29 = i23;
                                                obj3 = obj;
                                            } else {
                                                sg2 = sg2;
                                                i54 = i54;
                                                ph = this;
                                                i11 = i10;
                                                i13 = iV1;
                                                c1408hI = c1408hI2;
                                                iW = i53;
                                                sg2 = sg2;
                                                i31 = i51;
                                                i29 = i23;
                                                unsafe = unsafe3;
                                                i14 = i34;
                                                obj3 = obj;
                                            }
                                        }
                                        i24 = i26;
                                        c1408hI2 = c1408hI7;
                                        unsafe3 = unsafe4;
                                        iV1 = i24;
                                        if (iV1 != i24) {
                                            sg2 = sg2;
                                            i54 = i54;
                                            ph = this;
                                            i10 = i10;
                                            iY1 = iV1;
                                            iW = i53;
                                            sg5 = sg2;
                                            i9 = i54;
                                            i30 = i12;
                                            i28 = i34;
                                            i31 = i51;
                                            i29 = i23;
                                            obj3 = obj;
                                        } else {
                                            sg2 = sg2;
                                            i54 = i54;
                                            ph = this;
                                            i11 = i10;
                                            i13 = iV1;
                                            c1408hI = c1408hI2;
                                            iW = i53;
                                            sg2 = sg2;
                                            i31 = i51;
                                            i29 = i23;
                                            unsafe = unsafe3;
                                            i14 = i34;
                                            obj3 = obj;
                                        }
                                        break;
                                    case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                                    case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                                        unsafe4 = unsafe5;
                                        i23 = i40;
                                        i26 = i39;
                                        if (i37 != 2) {
                                            if (i37 == 0) {
                                                iS1 = Cw.S1(i23, bArr, i26, i9, interfaceC2236xH, sg);
                                            }
                                            i24 = i26;
                                            c1408hI2 = c1408hI7;
                                            unsafe3 = unsafe4;
                                            iV1 = i24;
                                            if (iV1 != i24) {
                                                sg2 = sg2;
                                                i54 = i54;
                                                ph = this;
                                                i10 = i10;
                                                iY1 = iV1;
                                                iW = i53;
                                                sg5 = sg2;
                                                i9 = i54;
                                                i30 = i12;
                                                i28 = i34;
                                                i31 = i51;
                                                i29 = i23;
                                                obj3 = obj;
                                            } else {
                                                sg2 = sg2;
                                                i54 = i54;
                                                ph = this;
                                                i11 = i10;
                                                i13 = iV1;
                                                c1408hI = c1408hI2;
                                                iW = i53;
                                                sg2 = sg2;
                                                i31 = i51;
                                                i29 = i23;
                                                unsafe = unsafe3;
                                                i14 = i34;
                                                obj3 = obj;
                                            }
                                        } else {
                                            iS1 = Cw.C1(bArr, i26, interfaceC2236xH, sg2);
                                        }
                                        int i69 = iS1;
                                        AbstractC1149cI.w(obj, i34, interfaceC2236xH, ph.A(i53), null, ph.f15366j);
                                        iV1 = i69;
                                        i24 = i26;
                                        c1408hI2 = c1408hI7;
                                        unsafe3 = unsafe4;
                                        if (iV1 != i24) {
                                            sg2 = sg2;
                                            i54 = i54;
                                            ph = this;
                                            i10 = i10;
                                            iY1 = iV1;
                                            iW = i53;
                                            sg5 = sg2;
                                            i9 = i54;
                                            i30 = i12;
                                            i28 = i34;
                                            i31 = i51;
                                            i29 = i23;
                                            obj3 = obj;
                                        } else {
                                            sg2 = sg2;
                                            i54 = i54;
                                            ph = this;
                                            i11 = i10;
                                            i13 = iV1;
                                            c1408hI = c1408hI2;
                                            iW = i53;
                                            sg2 = sg2;
                                            i31 = i51;
                                            i29 = i23;
                                            unsafe = unsafe3;
                                            i14 = i34;
                                            obj3 = obj;
                                        }
                                        break;
                                    case 33:
                                    case 47:
                                        unsafe4 = unsafe5;
                                        i23 = i40;
                                        i26 = i39;
                                        if (i37 != 2) {
                                            if (i37 == 0) {
                                                C1924rH c1924rH3 = (C1924rH) interfaceC2236xH;
                                                iM4 = Cw.M1(bArr, i26, sg2);
                                                c1924rH3.i(AbstractC1200dH.c(sg2.f16417a));
                                                while (iM4 < i54) {
                                                    int iM15 = Cw.M1(bArr, iM4, sg2);
                                                    if (i23 == sg2.f16417a) {
                                                        iM4 = Cw.M1(bArr, iM15, sg2);
                                                        c1924rH3.i(AbstractC1200dH.c(sg2.f16417a));
                                                    }
                                                }
                                            }
                                            i24 = i26;
                                            c1408hI2 = c1408hI7;
                                            unsafe3 = unsafe4;
                                            iV1 = i24;
                                            if (iV1 != i24) {
                                                sg2 = sg2;
                                                i54 = i54;
                                                ph = this;
                                                i10 = i10;
                                                iY1 = iV1;
                                                iW = i53;
                                                sg5 = sg2;
                                                i9 = i54;
                                                i30 = i12;
                                                i28 = i34;
                                                i31 = i51;
                                                i29 = i23;
                                                obj3 = obj;
                                            } else {
                                                sg2 = sg2;
                                                i54 = i54;
                                                ph = this;
                                                i11 = i10;
                                                i13 = iV1;
                                                c1408hI = c1408hI2;
                                                iW = i53;
                                                sg2 = sg2;
                                                i31 = i51;
                                                i29 = i23;
                                                unsafe = unsafe3;
                                                i14 = i34;
                                                obj3 = obj;
                                            }
                                        } else {
                                            C1924rH c1924rH4 = (C1924rH) interfaceC2236xH;
                                            iM4 = Cw.M1(bArr, i26, sg2);
                                            int i70 = sg2.f16417a + iM4;
                                            while (iM4 < i70) {
                                                iM4 = Cw.M1(bArr, iM4, sg2);
                                                c1924rH4.i(AbstractC1200dH.c(sg2.f16417a));
                                            }
                                            if (iM4 != i70) {
                                                throw new AH("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                        }
                                        iV1 = iM4;
                                        i24 = i26;
                                        c1408hI2 = c1408hI7;
                                        unsafe3 = unsafe4;
                                        if (iV1 != i24) {
                                            sg2 = sg2;
                                            i54 = i54;
                                            ph = this;
                                            i10 = i10;
                                            iY1 = iV1;
                                            iW = i53;
                                            sg5 = sg2;
                                            i9 = i54;
                                            i30 = i12;
                                            i28 = i34;
                                            i31 = i51;
                                            i29 = i23;
                                            obj3 = obj;
                                        } else {
                                            sg2 = sg2;
                                            i54 = i54;
                                            ph = this;
                                            i11 = i10;
                                            i13 = iV1;
                                            c1408hI = c1408hI2;
                                            iW = i53;
                                            sg2 = sg2;
                                            i31 = i51;
                                            i29 = i23;
                                            unsafe = unsafe3;
                                            i14 = i34;
                                            obj3 = obj;
                                        }
                                        break;
                                    case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                                    case 48:
                                        unsafe4 = unsafe5;
                                        i23 = i40;
                                        i26 = i39;
                                        if (i37 != 2) {
                                            if (i37 == 0) {
                                                FH fh5 = (FH) interfaceC2236xH;
                                                iM4 = Cw.V1(bArr, i26, sg2);
                                                fh5.i(AbstractC1200dH.d(sg2.f16418b));
                                                while (iM4 < i54) {
                                                    int iM16 = Cw.M1(bArr, iM4, sg2);
                                                    if (i23 == sg2.f16417a) {
                                                        iM4 = Cw.V1(bArr, iM16, sg2);
                                                        fh5.i(AbstractC1200dH.d(sg2.f16418b));
                                                    }
                                                }
                                            }
                                            i24 = i26;
                                            c1408hI2 = c1408hI7;
                                            unsafe3 = unsafe4;
                                            iV1 = i24;
                                            if (iV1 != i24) {
                                                sg2 = sg2;
                                                i54 = i54;
                                                ph = this;
                                                i10 = i10;
                                                iY1 = iV1;
                                                iW = i53;
                                                sg5 = sg2;
                                                i9 = i54;
                                                i30 = i12;
                                                i28 = i34;
                                                i31 = i51;
                                                i29 = i23;
                                                obj3 = obj;
                                            } else {
                                                sg2 = sg2;
                                                i54 = i54;
                                                ph = this;
                                                i11 = i10;
                                                i13 = iV1;
                                                c1408hI = c1408hI2;
                                                iW = i53;
                                                sg2 = sg2;
                                                i31 = i51;
                                                i29 = i23;
                                                unsafe = unsafe3;
                                                i14 = i34;
                                                obj3 = obj;
                                            }
                                        } else {
                                            FH fh6 = (FH) interfaceC2236xH;
                                            iM4 = Cw.M1(bArr, i26, sg2);
                                            int i71 = sg2.f16417a + iM4;
                                            while (iM4 < i71) {
                                                iM4 = Cw.V1(bArr, iM4, sg2);
                                                fh6.i(AbstractC1200dH.d(sg2.f16418b));
                                            }
                                            if (iM4 != i71) {
                                                throw new AH("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                        }
                                        iV1 = iM4;
                                        i24 = i26;
                                        c1408hI2 = c1408hI7;
                                        unsafe3 = unsafe4;
                                        if (iV1 != i24) {
                                            sg2 = sg2;
                                            i54 = i54;
                                            ph = this;
                                            i10 = i10;
                                            iY1 = iV1;
                                            iW = i53;
                                            sg5 = sg2;
                                            i9 = i54;
                                            i30 = i12;
                                            i28 = i34;
                                            i31 = i51;
                                            i29 = i23;
                                            obj3 = obj;
                                        } else {
                                            sg2 = sg2;
                                            i54 = i54;
                                            ph = this;
                                            i11 = i10;
                                            i13 = iV1;
                                            c1408hI = c1408hI2;
                                            iW = i53;
                                            sg2 = sg2;
                                            i31 = i51;
                                            i29 = i23;
                                            unsafe = unsafe3;
                                            i14 = i34;
                                            obj3 = obj;
                                        }
                                        break;
                                    default:
                                        if (i37 == 3) {
                                            int i72 = (i40 & (-8)) | 4;
                                            InterfaceC1098bI interfaceC1098bIB = ph.B(i53);
                                            i23 = i40;
                                            unsafe4 = unsafe5;
                                            i26 = i39;
                                            iM4 = Cw.U0(interfaceC1098bIB, bArr, i39, i9, i72, sg);
                                            interfaceC2236xH.add(sg2.f16419c);
                                            while (iM4 < i54) {
                                                int iM17 = Cw.M1(bArr, iM4, sg2);
                                                if (i23 != sg2.f16417a) {
                                                    iV1 = iM4;
                                                    i24 = i26;
                                                    c1408hI2 = c1408hI7;
                                                    unsafe3 = unsafe4;
                                                    if (iV1 != i24) {
                                                        sg2 = sg2;
                                                        i54 = i54;
                                                        ph = this;
                                                        i10 = i10;
                                                        iY1 = iV1;
                                                        iW = i53;
                                                        sg5 = sg2;
                                                        i9 = i54;
                                                        i30 = i12;
                                                        i28 = i34;
                                                        i31 = i51;
                                                        i29 = i23;
                                                        obj3 = obj;
                                                    } else {
                                                        sg2 = sg2;
                                                        i54 = i54;
                                                        ph = this;
                                                        i11 = i10;
                                                        i13 = iV1;
                                                        c1408hI = c1408hI2;
                                                        iW = i53;
                                                        sg2 = sg2;
                                                        i31 = i51;
                                                        i29 = i23;
                                                        unsafe = unsafe3;
                                                        i14 = i34;
                                                        obj3 = obj;
                                                    }
                                                } else {
                                                    iM4 = Cw.U0(interfaceC1098bIB, bArr, iM17, i9, i72, sg);
                                                    interfaceC2236xH.add(sg2.f16419c);
                                                }
                                                break;
                                            }
                                            iV1 = iM4;
                                            i24 = i26;
                                            c1408hI2 = c1408hI7;
                                            unsafe3 = unsafe4;
                                            if (iV1 != i24) {
                                                sg2 = sg2;
                                                i54 = i54;
                                                ph = this;
                                                i10 = i10;
                                                iY1 = iV1;
                                                iW = i53;
                                                sg5 = sg2;
                                                i9 = i54;
                                                i30 = i12;
                                                i28 = i34;
                                                i31 = i51;
                                                i29 = i23;
                                                obj3 = obj;
                                            } else {
                                                sg2 = sg2;
                                                i54 = i54;
                                                ph = this;
                                                i11 = i10;
                                                i13 = iV1;
                                                c1408hI = c1408hI2;
                                                iW = i53;
                                                sg2 = sg2;
                                                i31 = i51;
                                                i29 = i23;
                                                unsafe = unsafe3;
                                                i14 = i34;
                                                obj3 = obj;
                                            }
                                        } else {
                                            i23 = i40;
                                            i24 = i39;
                                            i53 = i53;
                                            c1408hI2 = c1408hI7;
                                            unsafe3 = unsafe5;
                                            iV1 = i24;
                                            if (iV1 != i24) {
                                                sg2 = sg2;
                                                i54 = i54;
                                                ph = this;
                                                i10 = i10;
                                                iY1 = iV1;
                                                iW = i53;
                                                sg5 = sg2;
                                                i9 = i54;
                                                i30 = i12;
                                                i28 = i34;
                                                i31 = i51;
                                                i29 = i23;
                                                obj3 = obj;
                                            } else {
                                                sg2 = sg2;
                                                i54 = i54;
                                                ph = this;
                                                i11 = i10;
                                                i13 = iV1;
                                                c1408hI = c1408hI2;
                                                iW = i53;
                                                sg2 = sg2;
                                                i31 = i51;
                                                i29 = i23;
                                                unsafe = unsafe3;
                                                i14 = i34;
                                                obj3 = obj;
                                            }
                                        }
                                        break;
                                }
                            } else {
                                i22 = i53;
                                c1408hI = c1408hI7;
                                unsafe2 = unsafe5;
                                if (iX != 50) {
                                    int i73 = i39;
                                    ph = this;
                                    obj3 = obj;
                                    int i74 = i40;
                                    long j10 = iArr[i22 + 2] & 1048575;
                                    switch (iX) {
                                        case 51:
                                            c1408hI = c1408hI;
                                            i22 = i22;
                                            sg2 = sg2;
                                            i14 = i34;
                                            unsafe = unsafe2;
                                            if (i37 == 1) {
                                                iV2 = i73 + 8;
                                                unsafe.putObject(obj3, j8, Double.valueOf(Double.longBitsToDouble(Cw.c2(bArr, i73))));
                                                unsafe.putInt(obj3, j10, i14);
                                            } else {
                                                iV2 = i73;
                                            }
                                            if (iV2 != i73) {
                                                i73 = i73;
                                                i9 = i9;
                                                i10 = i10;
                                                i28 = i14;
                                                sg5 = sg2;
                                                iW = i22;
                                                i30 = i12;
                                                i29 = i74;
                                                i31 = i51;
                                                iY1 = iV2;
                                            } else {
                                                i73 = i73;
                                                i11 = i10;
                                                i13 = iV2;
                                                iW = i22;
                                                i29 = i74;
                                                i31 = i51;
                                            }
                                            break;
                                        case 52:
                                            c1408hI = c1408hI;
                                            i22 = i22;
                                            sg2 = sg2;
                                            i14 = i34;
                                            unsafe = unsafe2;
                                            if (i37 == 5) {
                                                iV2 = i73 + 4;
                                                unsafe.putObject(obj3, j8, Float.valueOf(Float.intBitsToFloat(Cw.y0(bArr, i73))));
                                                unsafe.putInt(obj3, j10, i14);
                                            } else {
                                                iV2 = i73;
                                            }
                                            if (iV2 != i73) {
                                                i73 = i73;
                                                i9 = i9;
                                                i10 = i10;
                                                i28 = i14;
                                                sg5 = sg2;
                                                iW = i22;
                                                i30 = i12;
                                                i29 = i74;
                                                i31 = i51;
                                                iY1 = iV2;
                                            } else {
                                                i73 = i73;
                                                i11 = i10;
                                                i13 = iV2;
                                                iW = i22;
                                                i29 = i74;
                                                i31 = i51;
                                            }
                                            break;
                                        case 53:
                                        case 54:
                                            c1408hI = c1408hI;
                                            i22 = i22;
                                            sg2 = sg2;
                                            i14 = i34;
                                            unsafe = unsafe2;
                                            if (i37 == 0) {
                                                iV2 = Cw.V1(bArr, i73, sg2);
                                                unsafe.putObject(obj3, j8, Long.valueOf(sg2.f16418b));
                                                unsafe.putInt(obj3, j10, i14);
                                            } else {
                                                iV2 = i73;
                                            }
                                            if (iV2 != i73) {
                                                i73 = i73;
                                                i9 = i9;
                                                i10 = i10;
                                                i28 = i14;
                                                sg5 = sg2;
                                                iW = i22;
                                                i30 = i12;
                                                i29 = i74;
                                                i31 = i51;
                                                iY1 = iV2;
                                            } else {
                                                i73 = i73;
                                                i11 = i10;
                                                i13 = iV2;
                                                iW = i22;
                                                i29 = i74;
                                                i31 = i51;
                                            }
                                            break;
                                        case 55:
                                        case 62:
                                            c1408hI = c1408hI;
                                            i22 = i22;
                                            sg2 = sg2;
                                            i14 = i34;
                                            unsafe = unsafe2;
                                            if (i37 == 0) {
                                                iV2 = Cw.M1(bArr, i73, sg2);
                                                unsafe.putObject(obj3, j8, Integer.valueOf(sg2.f16417a));
                                                unsafe.putInt(obj3, j10, i14);
                                            } else {
                                                iV2 = i73;
                                            }
                                            if (iV2 != i73) {
                                                i73 = i73;
                                                i9 = i9;
                                                i10 = i10;
                                                i28 = i14;
                                                sg5 = sg2;
                                                iW = i22;
                                                i30 = i12;
                                                i29 = i74;
                                                i31 = i51;
                                                iY1 = iV2;
                                            } else {
                                                i73 = i73;
                                                i11 = i10;
                                                i13 = iV2;
                                                iW = i22;
                                                i29 = i74;
                                                i31 = i51;
                                            }
                                            break;
                                        case 56:
                                        case 65:
                                            c1408hI = c1408hI;
                                            i22 = i22;
                                            sg2 = sg2;
                                            i14 = i34;
                                            unsafe = unsafe2;
                                            if (i37 == 1) {
                                                iV2 = i73 + 8;
                                                unsafe.putObject(obj3, j8, Long.valueOf(Cw.c2(bArr, i73)));
                                                unsafe.putInt(obj3, j10, i14);
                                            } else {
                                                iV2 = i73;
                                            }
                                            if (iV2 != i73) {
                                                i73 = i73;
                                                i9 = i9;
                                                i10 = i10;
                                                i28 = i14;
                                                sg5 = sg2;
                                                iW = i22;
                                                i30 = i12;
                                                i29 = i74;
                                                i31 = i51;
                                                iY1 = iV2;
                                            } else {
                                                i73 = i73;
                                                i11 = i10;
                                                i13 = iV2;
                                                iW = i22;
                                                i29 = i74;
                                                i31 = i51;
                                            }
                                            break;
                                        case 57:
                                        case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                                            c1408hI = c1408hI;
                                            i22 = i22;
                                            sg2 = sg2;
                                            i14 = i34;
                                            unsafe = unsafe2;
                                            if (i37 == 5) {
                                                iV2 = i73 + 4;
                                                unsafe.putObject(obj3, j8, Integer.valueOf(Cw.y0(bArr, i73)));
                                                unsafe.putInt(obj3, j10, i14);
                                            } else {
                                                iV2 = i73;
                                            }
                                            if (iV2 != i73) {
                                                i73 = i73;
                                                i9 = i9;
                                                i10 = i10;
                                                i28 = i14;
                                                sg5 = sg2;
                                                iW = i22;
                                                i30 = i12;
                                                i29 = i74;
                                                i31 = i51;
                                                iY1 = iV2;
                                            } else {
                                                i73 = i73;
                                                i11 = i10;
                                                i13 = iV2;
                                                iW = i22;
                                                i29 = i74;
                                                i31 = i51;
                                            }
                                            break;
                                        case 58:
                                            c1408hI = c1408hI;
                                            i22 = i22;
                                            sg2 = sg2;
                                            i14 = i34;
                                            unsafe = unsafe2;
                                            if (i37 == 0) {
                                                iV2 = Cw.V1(bArr, i73, sg2);
                                                unsafe.putObject(obj3, j8, Boolean.valueOf(sg2.f16418b != 0));
                                                unsafe.putInt(obj3, j10, i14);
                                            } else {
                                                iV2 = i73;
                                            }
                                            if (iV2 != i73) {
                                                i73 = i73;
                                                i9 = i9;
                                                i10 = i10;
                                                i28 = i14;
                                                sg5 = sg2;
                                                iW = i22;
                                                i30 = i12;
                                                i29 = i74;
                                                i31 = i51;
                                                iY1 = iV2;
                                            } else {
                                                i73 = i73;
                                                i11 = i10;
                                                i13 = iV2;
                                                iW = i22;
                                                i29 = i74;
                                                i31 = i51;
                                            }
                                            break;
                                        case 59:
                                            c1408hI = c1408hI;
                                            i22 = i22;
                                            sg2 = sg2;
                                            i14 = i34;
                                            unsafe = unsafe2;
                                            if (i37 == 2) {
                                                iV2 = Cw.M1(bArr, i73, sg2);
                                                int i75 = sg2.f16417a;
                                                if (i75 == 0) {
                                                    unsafe.putObject(obj3, j8, HttpUrl.FRAGMENT_ENCODE_SET);
                                                } else {
                                                    int i76 = iV2 + i75;
                                                    if ((i38 & 536870912) != 0 && !AbstractC1822pI.e(iV2, bArr, i76)) {
                                                        throw new AH("Protocol message had invalid UTF-8.");
                                                    }
                                                    unsafe.putObject(obj3, j8, new String(bArr, iV2, i75, AbstractC2288yH.f22010a));
                                                    iV2 = i76;
                                                }
                                                unsafe.putInt(obj3, j10, i14);
                                            } else {
                                                iV2 = i73;
                                            }
                                            if (iV2 != i73) {
                                                i73 = i73;
                                                i9 = i9;
                                                i10 = i10;
                                                i28 = i14;
                                                sg5 = sg2;
                                                iW = i22;
                                                i30 = i12;
                                                i29 = i74;
                                                i31 = i51;
                                                iY1 = iV2;
                                            } else {
                                                i73 = i73;
                                                i11 = i10;
                                                i13 = iV2;
                                                iW = i22;
                                                i29 = i74;
                                                i31 = i51;
                                            }
                                            break;
                                        case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                                            c1408hI4 = c1408hI;
                                            sg4 = sg2;
                                            i27 = i74;
                                            i14 = i34;
                                            unsafe = unsafe2;
                                            if (i37 == 2) {
                                                Object objE = ph.e(obj3, i14, i22);
                                                c1408hI = c1408hI4;
                                                sg2 = sg4;
                                                i74 = i27;
                                                i22 = i22;
                                                int iA3 = Cw.a2(objE, ph.B(i22), bArr, i73, i9, sg);
                                                ph.n(obj3, i14, i22, objE);
                                                iV2 = iA3;
                                            } else {
                                                c1408hI = c1408hI4;
                                                i74 = i27;
                                                sg2 = sg4;
                                                i22 = i22;
                                                iV2 = i73;
                                            }
                                            if (iV2 != i73) {
                                                i73 = i73;
                                                i9 = i9;
                                                i10 = i10;
                                                i28 = i14;
                                                sg5 = sg2;
                                                iW = i22;
                                                i30 = i12;
                                                i29 = i74;
                                                i31 = i51;
                                                iY1 = iV2;
                                            } else {
                                                i73 = i73;
                                                i11 = i10;
                                                i13 = iV2;
                                                iW = i22;
                                                i29 = i74;
                                                i31 = i51;
                                            }
                                            break;
                                        case 61:
                                            c1408hI4 = c1408hI;
                                            sg4 = sg2;
                                            i27 = i74;
                                            i14 = i34;
                                            unsafe = unsafe2;
                                            if (i37 == 2) {
                                                iV2 = Cw.v(bArr, i73, sg4);
                                                unsafe.putObject(obj3, j8, sg4.f16419c);
                                                unsafe.putInt(obj3, j10, i14);
                                                c1408hI = c1408hI4;
                                                i74 = i27;
                                                sg2 = sg4;
                                                i22 = i22;
                                                if (iV2 != i73) {
                                                    i73 = i73;
                                                    i9 = i9;
                                                    i10 = i10;
                                                    i28 = i14;
                                                    sg5 = sg2;
                                                    iW = i22;
                                                    i30 = i12;
                                                    i29 = i74;
                                                    i31 = i51;
                                                    iY1 = iV2;
                                                } else {
                                                    i73 = i73;
                                                    i11 = i10;
                                                    i13 = iV2;
                                                    iW = i22;
                                                    i29 = i74;
                                                    i31 = i51;
                                                }
                                            }
                                            c1408hI = c1408hI4;
                                            i74 = i27;
                                            sg2 = sg4;
                                            i22 = i22;
                                            iV2 = i73;
                                            if (iV2 != i73) {
                                                i73 = i73;
                                                i9 = i9;
                                                i10 = i10;
                                                i28 = i14;
                                                sg5 = sg2;
                                                iW = i22;
                                                i30 = i12;
                                                i29 = i74;
                                                i31 = i51;
                                                iY1 = iV2;
                                            } else {
                                                i73 = i73;
                                                i11 = i10;
                                                i13 = iV2;
                                                iW = i22;
                                                i29 = i74;
                                                i31 = i51;
                                            }
                                            break;
                                        case 63:
                                            i14 = i34;
                                            c1408hI5 = c1408hI;
                                            sg4 = sg2;
                                            unsafe = unsafe2;
                                            if (i37 == 0) {
                                                iV2 = Cw.M1(bArr, i73, sg4);
                                                int i77 = sg4.f16417a;
                                                InterfaceC2028tH interfaceC2028tHA2 = ph.A(i22);
                                                if (interfaceC2028tHA2 == null || interfaceC2028tHA2.zza(i77)) {
                                                    i27 = i74;
                                                    c1408hI4 = c1408hI5;
                                                    unsafe.putObject(obj3, j8, Integer.valueOf(i77));
                                                    unsafe.putInt(obj3, j10, i14);
                                                } else {
                                                    AbstractC1873qH abstractC1873qH2 = (AbstractC1873qH) obj3;
                                                    C1408hI c1408hIB2 = abstractC1873qH2.zzt;
                                                    c1408hI4 = c1408hI5;
                                                    if (c1408hIB2 == c1408hI4) {
                                                        c1408hIB2 = C1408hI.b();
                                                        abstractC1873qH2.zzt = c1408hIB2;
                                                    }
                                                    i27 = i74;
                                                    c1408hIB2.c(i27, Long.valueOf(i77));
                                                }
                                                c1408hI = c1408hI4;
                                                i74 = i27;
                                                sg2 = sg4;
                                                i22 = i22;
                                                if (iV2 != i73) {
                                                    i73 = i73;
                                                    i9 = i9;
                                                    i10 = i10;
                                                    i28 = i14;
                                                    sg5 = sg2;
                                                    iW = i22;
                                                    i30 = i12;
                                                    i29 = i74;
                                                    i31 = i51;
                                                    iY1 = iV2;
                                                } else {
                                                    i73 = i73;
                                                    i11 = i10;
                                                    i13 = iV2;
                                                    iW = i22;
                                                    i29 = i74;
                                                    i31 = i51;
                                                }
                                            }
                                            sg2 = sg4;
                                            i22 = i22;
                                            c1408hI = c1408hI5;
                                            iV2 = i73;
                                            if (iV2 != i73) {
                                                i73 = i73;
                                                i9 = i9;
                                                i10 = i10;
                                                i28 = i14;
                                                sg5 = sg2;
                                                iW = i22;
                                                i30 = i12;
                                                i29 = i74;
                                                i31 = i51;
                                                iY1 = iV2;
                                            } else {
                                                i73 = i73;
                                                i11 = i10;
                                                i13 = iV2;
                                                iW = i22;
                                                i29 = i74;
                                                i31 = i51;
                                            }
                                            break;
                                        case 66:
                                            i14 = i34;
                                            c1408hI5 = c1408hI;
                                            sg4 = sg2;
                                            unsafe = unsafe2;
                                            if (i37 == 0) {
                                                iV2 = Cw.M1(bArr, i73, sg4);
                                                unsafe.putObject(obj3, j8, Integer.valueOf(AbstractC1200dH.c(sg4.f16417a)));
                                                unsafe.putInt(obj3, j10, i14);
                                                sg2 = sg4;
                                                i22 = i22;
                                                c1408hI = c1408hI5;
                                                if (iV2 != i73) {
                                                    i73 = i73;
                                                    i9 = i9;
                                                    i10 = i10;
                                                    i28 = i14;
                                                    sg5 = sg2;
                                                    iW = i22;
                                                    i30 = i12;
                                                    i29 = i74;
                                                    i31 = i51;
                                                    iY1 = iV2;
                                                } else {
                                                    i73 = i73;
                                                    i11 = i10;
                                                    i13 = iV2;
                                                    iW = i22;
                                                    i29 = i74;
                                                    i31 = i51;
                                                }
                                            }
                                            sg2 = sg4;
                                            i22 = i22;
                                            c1408hI = c1408hI5;
                                            iV2 = i73;
                                            if (iV2 != i73) {
                                                i73 = i73;
                                                i9 = i9;
                                                i10 = i10;
                                                i28 = i14;
                                                sg5 = sg2;
                                                iW = i22;
                                                i30 = i12;
                                                i29 = i74;
                                                i31 = i51;
                                                iY1 = iV2;
                                            } else {
                                                i73 = i73;
                                                i11 = i10;
                                                i13 = iV2;
                                                iW = i22;
                                                i29 = i74;
                                                i31 = i51;
                                            }
                                            break;
                                        case 67:
                                            i14 = i34;
                                            c1408hI5 = c1408hI;
                                            sg4 = sg2;
                                            unsafe = unsafe2;
                                            if (i37 == 0) {
                                                iV2 = Cw.V1(bArr, i73, sg4);
                                                unsafe.putObject(obj3, j8, Long.valueOf(AbstractC1200dH.d(sg4.f16418b)));
                                                unsafe.putInt(obj3, j10, i14);
                                                sg2 = sg4;
                                                i22 = i22;
                                                c1408hI = c1408hI5;
                                                if (iV2 != i73) {
                                                    i73 = i73;
                                                    i9 = i9;
                                                    i10 = i10;
                                                    i28 = i14;
                                                    sg5 = sg2;
                                                    iW = i22;
                                                    i30 = i12;
                                                    i29 = i74;
                                                    i31 = i51;
                                                    iY1 = iV2;
                                                } else {
                                                    i73 = i73;
                                                    i11 = i10;
                                                    i13 = iV2;
                                                    iW = i22;
                                                    i29 = i74;
                                                    i31 = i51;
                                                }
                                            }
                                            sg2 = sg4;
                                            i22 = i22;
                                            c1408hI = c1408hI5;
                                            iV2 = i73;
                                            if (iV2 != i73) {
                                                i73 = i73;
                                                i9 = i9;
                                                i10 = i10;
                                                i28 = i14;
                                                sg5 = sg2;
                                                iW = i22;
                                                i30 = i12;
                                                i29 = i74;
                                                i31 = i51;
                                                iY1 = iV2;
                                            } else {
                                                i73 = i73;
                                                i11 = i10;
                                                i13 = iV2;
                                                iW = i22;
                                                i29 = i74;
                                                i31 = i51;
                                            }
                                            break;
                                        case 68:
                                            if (i37 == 3) {
                                                Object objE2 = ph.e(obj3, i34, i22);
                                                int iY2 = Cw.Y1(objE2, ph.B(i22), bArr, i73, i9, (i74 & (-8)) | 4, sg);
                                                ph.n(obj3, i34, i22, objE2);
                                                unsafe = unsafe2;
                                                sg2 = sg2;
                                                i22 = i22;
                                                iV2 = iY2;
                                                c1408hI = c1408hI;
                                                i14 = i34;
                                            } else {
                                                i14 = i34;
                                                unsafe = unsafe2;
                                                iV2 = i73;
                                            }
                                            if (iV2 != i73) {
                                                i73 = i73;
                                                i9 = i9;
                                                i10 = i10;
                                                i28 = i14;
                                                sg5 = sg2;
                                                iW = i22;
                                                i30 = i12;
                                                i29 = i74;
                                                i31 = i51;
                                                iY1 = iV2;
                                            } else {
                                                i73 = i73;
                                                i11 = i10;
                                                i13 = iV2;
                                                iW = i22;
                                                i29 = i74;
                                                i31 = i51;
                                            }
                                            break;
                                        default:
                                            i14 = i34;
                                            unsafe = unsafe2;
                                            iV2 = i73;
                                            if (iV2 != i73) {
                                                i73 = i73;
                                                i9 = i9;
                                                i10 = i10;
                                                i28 = i14;
                                                sg5 = sg2;
                                                iW = i22;
                                                i30 = i12;
                                                i29 = i74;
                                                i31 = i51;
                                                iY1 = iV2;
                                            } else {
                                                i73 = i73;
                                                i11 = i10;
                                                i13 = iV2;
                                                iW = i22;
                                                i29 = i74;
                                                i31 = i51;
                                            }
                                            break;
                                    }
                                } else {
                                    if (i37 == 2) {
                                        Object objD3 = D(i22);
                                        Object object = unsafe2.getObject(obj, j8);
                                        if (C1301fF.h(object)) {
                                            JH jhB = JH.a().b();
                                            C1301fF.i(jhB, object);
                                            unsafe2.putObject(obj, j8, jhB);
                                        }
                                        A0.O.I(objD3);
                                        throw null;
                                    }
                                    i13 = i39;
                                    i21 = i40;
                                    ph = this;
                                    obj3 = obj;
                                    i11 = i10;
                                    i29 = i21;
                                    c1408hI = c1408hI;
                                    iW = i22;
                                    sg2 = sg2;
                                    i31 = i51;
                                    unsafe = unsafe2;
                                    i14 = i34;
                                }
                            }
                        } else if (i37 == 2) {
                            QG qg2 = (QG) ((InterfaceC2236xH) unsafe5.getObject(obj3, j8));
                            boolean zZzc = qg2.zzc();
                            QG qg3 = qg2;
                            if (!zZzc) {
                                int size2 = qg2.size();
                                InterfaceC2236xH interfaceC2236xHA2 = qg2.a(size2 == 0 ? 10 : size2 + size2);
                                unsafe5.putObject(obj3, j8, interfaceC2236xHA2);
                                qg3 = interfaceC2236xHA2;
                            }
                            iY1 = Cw.v1(ph.B(iW), i40, bArr, i39, i9, qg3, sg);
                            i10 = i10;
                            iW = iW;
                            sg5 = sg6;
                            i29 = i40;
                            i30 = i52;
                            i28 = i34;
                            i31 = i51;
                            i9 = i9;
                        } else {
                            i12 = i52;
                            unsafe2 = unsafe5;
                            i21 = i40;
                            i13 = i39;
                            i22 = iW;
                            sg2 = sg6;
                            c1408hI = c1408hI7;
                            i11 = i10;
                            i29 = i21;
                            c1408hI = c1408hI;
                            iW = i22;
                            sg2 = sg2;
                            i31 = i51;
                            unsafe = unsafe2;
                            i14 = i34;
                        }
                    }
                } else {
                    unsafe = unsafe5;
                    i11 = i10;
                    c1408hI = c1408hI6;
                    i12 = i30;
                    iW = 0;
                    sg2 = sg5;
                    i13 = iQ1;
                    i14 = i34;
                }
                if (i29 != i11 || i11 == 0) {
                    AbstractC1873qH abstractC1873qH3 = (AbstractC1873qH) obj3;
                    C1408hI c1408hIB3 = abstractC1873qH3.zzt;
                    if (c1408hIB3 == c1408hI) {
                        c1408hIB3 = C1408hI.b();
                        abstractC1873qH3.zzt = c1408hIB3;
                    }
                    iG1 = Cw.G1(i29, bArr, i13, i9, c1408hIB3, sg);
                    i10 = i11;
                    sg5 = sg2;
                    i30 = i12;
                    i28 = i14;
                    iY1 = iG1;
                } else {
                    iY1 = i13;
                    i30 = i12;
                }
            } else {
                unsafe = unsafe5;
                i11 = i10;
            }
        }
        if (i31 != 1048575) {
            unsafe.putInt(obj3, i31, i30);
        }
        for (int i78 = ph.f15364h; i78 < ph.f15365i; i78++) {
            ph.C(obj3, ph.f15363g[i78], null);
        }
        if (i11 == 0) {
            if (iY1 != i9) {
                throw new AH("Failed to parse the message.");
            }
        } else if (iY1 > i9 || i29 != i11) {
            throw new AH("Failed to parse the message.");
        }
        return iY1;
    }

    public final int w(int i8, int i9) {
        int[] iArr = this.f15357a;
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

    public final int y(int i8) {
        return this.f15357a[i8 + 1];
    }

    /* JADX WARN: Code duplicated, block: B:138:0x0395  */
    /* JADX WARN: Code duplicated, block: B:182:0x04b4  */
    @Override // com.google.android.gms.internal.ads.InterfaceC1098bI
    public final int zza(Object obj) {
        int i8;
        int i9;
        int i10;
        int iM;
        int iN;
        int iM2;
        int iN2;
        int iM3;
        int iR;
        int iM4;
        int size;
        int iV;
        int iM5;
        int iM6;
        int iM7;
        int iF0;
        int i11 = 1048575;
        int i12 = 1048575;
        int i13 = 0;
        int i14 = 0;
        int iM8 = 0;
        while (true) {
            int[] iArr = this.f15357a;
            if (i14 >= iArr.length) {
                return ((AbstractC1873qH) obj).zzt.a() + iM8;
            }
            int iY = y(i14);
            int iX = x(iY);
            int i15 = iArr[i14];
            int i16 = iArr[i14 + 2];
            int i17 = i16 & i11;
            Unsafe unsafe = f15356l;
            if (iX <= 17) {
                if (i17 != i12) {
                    i13 = i17 == i11 ? 0 : unsafe.getInt(obj, i17);
                    i12 = i17;
                }
                i8 = i12;
                i9 = i13;
                i10 = 1 << (i16 >>> 20);
            } else {
                i8 = i12;
                i9 = i13;
                i10 = 0;
            }
            int i18 = iY & i11;
            if (iX >= EnumC1665mH.f19924H.zza()) {
                EnumC1665mH.f19925I.getClass();
            }
            long j8 = i18;
            switch (iX) {
                case 0:
                    if (q(obj, i14, i8, i9, i10)) {
                        iM8 = AbstractC2090uc.m(i15 << 3, 8, iM8);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 1:
                    if (q(obj, i14, i8, i9, i10)) {
                        iM8 = AbstractC2090uc.m(i15 << 3, 4, iM8);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 2:
                    if (q(obj, i14, i8, i9, i10)) {
                        long j9 = unsafe.getLong(obj, j8);
                        iM = AbstractC1407hH.M(i15 << 3);
                        iN = AbstractC1407hH.N(j9);
                        iM8 += iN + iM;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 3:
                    if (q(obj, i14, i8, i9, i10)) {
                        long j10 = unsafe.getLong(obj, j8);
                        iM = AbstractC1407hH.M(i15 << 3);
                        iN = AbstractC1407hH.N(j10);
                        iM8 += iN + iM;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 4:
                    if (q(obj, i14, i8, i9, i10)) {
                        long j11 = unsafe.getInt(obj, j8);
                        iM = AbstractC1407hH.M(i15 << 3);
                        iN = AbstractC1407hH.N(j11);
                        iM8 += iN + iM;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 5:
                    if (q(obj, i14, i8, i9, i10)) {
                        iM8 = AbstractC2090uc.m(i15 << 3, 8, iM8);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 6:
                    if (q(obj, i14, i8, i9, i10)) {
                        iM8 = AbstractC2090uc.m(i15 << 3, 4, iM8);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 7:
                    if (q(obj, i14, i8, i9, i10)) {
                        iM8 = AbstractC2090uc.m(i15 << 3, 1, iM8);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 8:
                    if (q(obj, i14, i8, i9, i10)) {
                        int i19 = i15 << 3;
                        Object object = unsafe.getObject(obj, j8);
                        if (object instanceof XG) {
                            iM2 = AbstractC1407hH.M(i19);
                            iN2 = ((XG) object).n();
                            iM3 = AbstractC1407hH.M(iN2);
                            iM8 += iM3 + iN2 + iM2;
                        } else {
                            iM = AbstractC1407hH.M(i19);
                            iN = AbstractC1407hH.L((String) object);
                            iM8 += iN + iM;
                        }
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 9:
                    if (q(obj, i14, i8, i9, i10)) {
                        iR = AbstractC1149cI.r(i15, B(i14), unsafe.getObject(obj, j8));
                        iM8 += iR;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 10:
                    if (q(obj, i14, i8, i9, i10)) {
                        XG xg = (XG) unsafe.getObject(obj, j8);
                        iM2 = AbstractC1407hH.M(i15 << 3);
                        iN2 = xg.n();
                        iM3 = AbstractC1407hH.M(iN2);
                        iM8 += iM3 + iN2 + iM2;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 11:
                    if (q(obj, i14, i8, i9, i10)) {
                        iM8 = AbstractC2090uc.m(unsafe.getInt(obj, j8), AbstractC1407hH.M(i15 << 3), iM8);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 12:
                    if (q(obj, i14, i8, i9, i10)) {
                        long j12 = unsafe.getInt(obj, j8);
                        iM = AbstractC1407hH.M(i15 << 3);
                        iN = AbstractC1407hH.N(j12);
                        iM8 += iN + iM;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 13:
                    if (q(obj, i14, i8, i9, i10)) {
                        iM8 = AbstractC2090uc.m(i15 << 3, 4, iM8);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 14:
                    if (q(obj, i14, i8, i9, i10)) {
                        iM8 = AbstractC2090uc.m(i15 << 3, 8, iM8);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 15:
                    if (q(obj, i14, i8, i9, i10)) {
                        int i20 = unsafe.getInt(obj, j8);
                        iM8 = AbstractC2090uc.m((i20 >> 31) ^ (i20 + i20), AbstractC1407hH.M(i15 << 3), iM8);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 16:
                    if (q(obj, i14, i8, i9, i10)) {
                        long j13 = unsafe.getLong(obj, j8);
                        iM = AbstractC1407hH.M(i15 << 3);
                        iN = AbstractC1407hH.N((j13 >> 63) ^ (j13 + j13));
                        iM8 += iN + iM;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 17:
                    if (q(obj, i14, i8, i9, i10)) {
                        iR = AbstractC1407hH.f0(i15, (NH) unsafe.getObject(obj, j8), B(i14));
                        iM8 += iR;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 18:
                    iR = AbstractC1149cI.n(i15, (List) unsafe.getObject(obj, j8));
                    iM8 += iR;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 19:
                    iR = AbstractC1149cI.l(i15, (List) unsafe.getObject(obj, j8));
                    iM8 += iR;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 20:
                    List list = (List) unsafe.getObject(obj, j8);
                    C2272y1 c2272y1 = AbstractC1149cI.f18207a;
                    if (list.size() == 0) {
                        iM4 = 0;
                    } else {
                        iM4 = (AbstractC1407hH.M(i15 << 3) * list.size()) + AbstractC1149cI.q(list);
                    }
                    iM8 += iM4;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 21:
                    List list2 = (List) unsafe.getObject(obj, j8);
                    C2272y1 c2272y2 = AbstractC1149cI.f18207a;
                    size = list2.size();
                    if (size == 0) {
                        iM6 = 0;
                    } else {
                        iV = AbstractC1149cI.v(list2);
                        iM5 = AbstractC1407hH.M(i15 << 3);
                        iM6 = (iM5 * size) + iV;
                    }
                    iM8 += iM6;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 22:
                    List list3 = (List) unsafe.getObject(obj, j8);
                    C2272y1 c2272y3 = AbstractC1149cI.f18207a;
                    size = list3.size();
                    if (size == 0) {
                        iM6 = 0;
                    } else {
                        iV = AbstractC1149cI.p(list3);
                        iM5 = AbstractC1407hH.M(i15 << 3);
                        iM6 = (iM5 * size) + iV;
                    }
                    iM8 += iM6;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 23:
                    iR = AbstractC1149cI.n(i15, (List) unsafe.getObject(obj, j8));
                    iM8 += iR;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 24:
                    iR = AbstractC1149cI.l(i15, (List) unsafe.getObject(obj, j8));
                    iM8 += iR;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 25:
                    List list4 = (List) unsafe.getObject(obj, j8);
                    C2272y1 c2272y4 = AbstractC1149cI.f18207a;
                    int size2 = list4.size();
                    if (size2 == 0) {
                        iM4 = 0;
                    } else {
                        iM4 = (AbstractC1407hH.M(i15 << 3) + 1) * size2;
                    }
                    iM8 += iM4;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case Service.BILLING_FIELD_NUMBER /* 26 */:
                    List list5 = (List) unsafe.getObject(obj, j8);
                    C2272y1 c2272y5 = AbstractC1149cI.f18207a;
                    int size3 = list5.size();
                    if (size3 == 0) {
                        iM6 = 0;
                    } else {
                        iM6 = AbstractC1407hH.M(i15 << 3) * size3;
                        for (int i21 = 0; i21 < size3; i21++) {
                            Object obj2 = list5.get(i21);
                            if (obj2 instanceof XG) {
                                int iN3 = ((XG) obj2).n();
                                iM6 = AbstractC2090uc.m(iN3, iN3, iM6);
                            } else {
                                iM6 = AbstractC1407hH.L((String) obj2) + iM6;
                            }
                        }
                    }
                    iM8 += iM6;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 27:
                    List list6 = (List) unsafe.getObject(obj, j8);
                    InterfaceC1098bI interfaceC1098bIB = B(i14);
                    C2272y1 c2272y6 = AbstractC1149cI.f18207a;
                    int size4 = list6.size();
                    if (size4 == 0) {
                        iM7 = 0;
                    } else {
                        iM7 = AbstractC1407hH.M(i15 << 3) * size4;
                        for (int i22 = 0; i22 < size4; i22++) {
                            iM7 += AbstractC1407hH.K((NH) list6.get(i22), interfaceC1098bIB);
                        }
                    }
                    iM8 += iM7;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case Service.MONITORING_FIELD_NUMBER /* 28 */:
                    List list7 = (List) unsafe.getObject(obj, j8);
                    C2272y1 c2272y7 = AbstractC1149cI.f18207a;
                    int size5 = list7.size();
                    if (size5 == 0) {
                        iM6 = 0;
                    } else {
                        iM6 = AbstractC1407hH.M(i15 << 3) * size5;
                        for (int i23 = 0; i23 < list7.size(); i23++) {
                            int iN4 = ((XG) list7.get(i23)).n();
                            iM6 = AbstractC2090uc.m(iN4, iN4, iM6);
                        }
                    }
                    iM8 += iM6;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                    List list8 = (List) unsafe.getObject(obj, j8);
                    C2272y1 c2272y8 = AbstractC1149cI.f18207a;
                    size = list8.size();
                    if (size == 0) {
                        iM6 = 0;
                    } else {
                        iV = AbstractC1149cI.u(list8);
                        iM5 = AbstractC1407hH.M(i15 << 3);
                        iM6 = (iM5 * size) + iV;
                    }
                    iM8 += iM6;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                    List list9 = (List) unsafe.getObject(obj, j8);
                    C2272y1 c2272y9 = AbstractC1149cI.f18207a;
                    size = list9.size();
                    if (size == 0) {
                        iM6 = 0;
                    } else {
                        iV = AbstractC1149cI.k(list9);
                        iM5 = AbstractC1407hH.M(i15 << 3);
                        iM6 = (iM5 * size) + iV;
                    }
                    iM8 += iM6;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                    iR = AbstractC1149cI.l(i15, (List) unsafe.getObject(obj, j8));
                    iM8 += iR;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 32:
                    iR = AbstractC1149cI.n(i15, (List) unsafe.getObject(obj, j8));
                    iM8 += iR;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 33:
                    List list10 = (List) unsafe.getObject(obj, j8);
                    C2272y1 c2272y10 = AbstractC1149cI.f18207a;
                    size = list10.size();
                    if (size == 0) {
                        iM6 = 0;
                    } else {
                        iV = AbstractC1149cI.s(list10);
                        iM5 = AbstractC1407hH.M(i15 << 3);
                        iM6 = (iM5 * size) + iV;
                    }
                    iM8 += iM6;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                    List list11 = (List) unsafe.getObject(obj, j8);
                    C2272y1 c2272y11 = AbstractC1149cI.f18207a;
                    size = list11.size();
                    if (size == 0) {
                        iM6 = 0;
                    } else {
                        iV = AbstractC1149cI.t(list11);
                        iM5 = AbstractC1407hH.M(i15 << 3);
                        iM6 = (iM5 * size) + iV;
                    }
                    iM8 += iM6;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 35:
                    iM2 = AbstractC1149cI.o((List) unsafe.getObject(obj, j8));
                    if (iM2 > 0) {
                        iN2 = AbstractC1407hH.M(i15 << 3);
                        iM3 = AbstractC1407hH.M(iM2);
                        iM8 += iM3 + iN2 + iM2;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                    iM2 = AbstractC1149cI.m((List) unsafe.getObject(obj, j8));
                    if (iM2 > 0) {
                        iN2 = AbstractC1407hH.M(i15 << 3);
                        iM3 = AbstractC1407hH.M(iM2);
                        iM8 += iM3 + iN2 + iM2;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 37:
                    iM2 = AbstractC1149cI.q((List) unsafe.getObject(obj, j8));
                    if (iM2 > 0) {
                        iN2 = AbstractC1407hH.M(i15 << 3);
                        iM3 = AbstractC1407hH.M(iM2);
                        iM8 += iM3 + iN2 + iM2;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 38:
                    iM2 = AbstractC1149cI.v((List) unsafe.getObject(obj, j8));
                    if (iM2 > 0) {
                        iN2 = AbstractC1407hH.M(i15 << 3);
                        iM3 = AbstractC1407hH.M(iM2);
                        iM8 += iM3 + iN2 + iM2;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                    iM2 = AbstractC1149cI.p((List) unsafe.getObject(obj, j8));
                    if (iM2 > 0) {
                        iN2 = AbstractC1407hH.M(i15 << 3);
                        iM3 = AbstractC1407hH.M(iM2);
                        iM8 += iM3 + iN2 + iM2;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                    iM2 = AbstractC1149cI.o((List) unsafe.getObject(obj, j8));
                    if (iM2 > 0) {
                        iN2 = AbstractC1407hH.M(i15 << 3);
                        iM3 = AbstractC1407hH.M(iM2);
                        iM8 += iM3 + iN2 + iM2;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
                    iM2 = AbstractC1149cI.m((List) unsafe.getObject(obj, j8));
                    if (iM2 > 0) {
                        iN2 = AbstractC1407hH.M(i15 << 3);
                        iM3 = AbstractC1407hH.M(iM2);
                        iM8 += iM3 + iN2 + iM2;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                    List list12 = (List) unsafe.getObject(obj, j8);
                    C2272y1 c2272y12 = AbstractC1149cI.f18207a;
                    iM2 = list12.size();
                    if (iM2 > 0) {
                        iN2 = AbstractC1407hH.M(i15 << 3);
                        iM3 = AbstractC1407hH.M(iM2);
                        iM8 += iM3 + iN2 + iM2;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 43:
                    iM2 = AbstractC1149cI.u((List) unsafe.getObject(obj, j8));
                    if (iM2 > 0) {
                        iN2 = AbstractC1407hH.M(i15 << 3);
                        iM3 = AbstractC1407hH.M(iM2);
                        iM8 += iM3 + iN2 + iM2;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                    iM2 = AbstractC1149cI.k((List) unsafe.getObject(obj, j8));
                    if (iM2 > 0) {
                        iN2 = AbstractC1407hH.M(i15 << 3);
                        iM3 = AbstractC1407hH.M(iM2);
                        iM8 += iM3 + iN2 + iM2;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                    iM2 = AbstractC1149cI.m((List) unsafe.getObject(obj, j8));
                    if (iM2 > 0) {
                        iN2 = AbstractC1407hH.M(i15 << 3);
                        iM3 = AbstractC1407hH.M(iM2);
                        iM8 += iM3 + iN2 + iM2;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 46:
                    iM2 = AbstractC1149cI.o((List) unsafe.getObject(obj, j8));
                    if (iM2 > 0) {
                        iN2 = AbstractC1407hH.M(i15 << 3);
                        iM3 = AbstractC1407hH.M(iM2);
                        iM8 += iM3 + iN2 + iM2;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 47:
                    iM2 = AbstractC1149cI.s((List) unsafe.getObject(obj, j8));
                    if (iM2 > 0) {
                        iN2 = AbstractC1407hH.M(i15 << 3);
                        iM3 = AbstractC1407hH.M(iM2);
                        iM8 += iM3 + iN2 + iM2;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 48:
                    iM2 = AbstractC1149cI.t((List) unsafe.getObject(obj, j8));
                    if (iM2 > 0) {
                        iN2 = AbstractC1407hH.M(i15 << 3);
                        iM3 = AbstractC1407hH.M(iM2);
                        iM8 += iM3 + iN2 + iM2;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 49:
                    List list13 = (List) unsafe.getObject(obj, j8);
                    InterfaceC1098bI interfaceC1098bIB2 = B(i14);
                    C2272y1 c2272y13 = AbstractC1149cI.f18207a;
                    int size6 = list13.size();
                    if (size6 == 0) {
                        iF0 = 0;
                    } else {
                        iF0 = 0;
                        for (int i24 = 0; i24 < size6; i24++) {
                            iF0 += AbstractC1407hH.f0(i15, (NH) list13.get(i24), interfaceC1098bIB2);
                        }
                    }
                    iM8 += iF0;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 50:
                    JH jh = (JH) unsafe.getObject(obj, j8);
                    A0.O.I(D(i14));
                    if (jh.isEmpty()) {
                        continue;
                    } else {
                        Iterator it = jh.entrySet().iterator();
                        if (it.hasNext()) {
                            Map.Entry entry = (Map.Entry) it.next();
                            entry.getKey();
                            entry.getValue();
                            throw null;
                        }
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                case 51:
                    if (s(obj, i15, i14)) {
                        iM8 = AbstractC2090uc.m(i15 << 3, 8, iM8);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 52:
                    if (s(obj, i15, i14)) {
                        iM8 = AbstractC2090uc.m(i15 << 3, 4, iM8);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 53:
                    if (s(obj, i15, i14)) {
                        long jZ = z(obj, j8);
                        iM = AbstractC1407hH.M(i15 << 3);
                        iN = AbstractC1407hH.N(jZ);
                        iM8 += iN + iM;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 54:
                    if (s(obj, i15, i14)) {
                        long jZ2 = z(obj, j8);
                        iM = AbstractC1407hH.M(i15 << 3);
                        iN = AbstractC1407hH.N(jZ2);
                        iM8 += iN + iM;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 55:
                    if (s(obj, i15, i14)) {
                        long jV = v(obj, j8);
                        iM = AbstractC1407hH.M(i15 << 3);
                        iN = AbstractC1407hH.N(jV);
                        iM8 += iN + iM;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 56:
                    if (s(obj, i15, i14)) {
                        iM8 = AbstractC2090uc.m(i15 << 3, 8, iM8);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 57:
                    if (s(obj, i15, i14)) {
                        iM8 = AbstractC2090uc.m(i15 << 3, 4, iM8);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 58:
                    if (s(obj, i15, i14)) {
                        iM8 = AbstractC2090uc.m(i15 << 3, 1, iM8);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 59:
                    if (s(obj, i15, i14)) {
                        int i25 = i15 << 3;
                        Object object2 = unsafe.getObject(obj, j8);
                        if (object2 instanceof XG) {
                            iM2 = AbstractC1407hH.M(i25);
                            iN2 = ((XG) object2).n();
                            iM3 = AbstractC1407hH.M(iN2);
                            iM8 += iM3 + iN2 + iM2;
                        } else {
                            iM = AbstractC1407hH.M(i25);
                            iN = AbstractC1407hH.L((String) object2);
                            iM8 += iN + iM;
                        }
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                    if (s(obj, i15, i14)) {
                        iR = AbstractC1149cI.r(i15, B(i14), unsafe.getObject(obj, j8));
                        iM8 += iR;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 61:
                    if (s(obj, i15, i14)) {
                        XG xg2 = (XG) unsafe.getObject(obj, j8);
                        iM2 = AbstractC1407hH.M(i15 << 3);
                        iN2 = xg2.n();
                        iM3 = AbstractC1407hH.M(iN2);
                        iM8 += iM3 + iN2 + iM2;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 62:
                    if (s(obj, i15, i14)) {
                        iM8 = AbstractC2090uc.m(v(obj, j8), AbstractC1407hH.M(i15 << 3), iM8);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 63:
                    if (s(obj, i15, i14)) {
                        long jV2 = v(obj, j8);
                        iM = AbstractC1407hH.M(i15 << 3);
                        iN = AbstractC1407hH.N(jV2);
                        iM8 += iN + iM;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                    if (s(obj, i15, i14)) {
                        iM8 = AbstractC2090uc.m(i15 << 3, 4, iM8);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 65:
                    if (s(obj, i15, i14)) {
                        iM8 = AbstractC2090uc.m(i15 << 3, 8, iM8);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 66:
                    if (s(obj, i15, i14)) {
                        int iV2 = v(obj, j8);
                        iM8 = AbstractC2090uc.m((iV2 >> 31) ^ (iV2 + iV2), AbstractC1407hH.M(i15 << 3), iM8);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 67:
                    if (s(obj, i15, i14)) {
                        long jZ3 = z(obj, j8);
                        iM = AbstractC1407hH.M(i15 << 3);
                        iN = AbstractC1407hH.N((jZ3 >> 63) ^ (jZ3 + jZ3));
                        iM8 += iN + iM;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 68:
                    if (s(obj, i15, i14)) {
                        iR = AbstractC1407hH.f0(i15, (NH) unsafe.getObject(obj, j8), B(i14));
                        iM8 += iR;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                default:
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00db A[PHI: r1
      0x00db: PHI (r1v34 int) = (r1v10 int), (r1v35 int) binds: [B:85:0x01eb, B:43:0x00d9] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.gms.internal.ads.InterfaceC1098bI
    public final int zzb(Object obj) {
        int i8;
        long jDoubleToLongBits;
        int i9;
        int iFloatToIntBits;
        int i10;
        int i11;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            int[] iArr = this.f15357a;
            if (i12 >= iArr.length) {
                return ((AbstractC1873qH) obj).zzt.hashCode() + (i13 * 53);
            }
            int iY = y(i12);
            int i14 = 1048575 & iY;
            int iX = x(iY);
            int i15 = iArr[i12];
            long j8 = i14;
            int i16 = 1237;
            int iHashCode = 37;
            switch (iX) {
                case 0:
                    i8 = i13 * 53;
                    jDoubleToLongBits = Double.doubleToLongBits(AbstractC1718nI.f20155c.M(obj, j8));
                    Charset charset = AbstractC2288yH.f22010a;
                    i13 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 1:
                    i9 = i13 * 53;
                    iFloatToIntBits = Float.floatToIntBits(AbstractC1718nI.f20155c.Q0(obj, j8));
                    i13 = iFloatToIntBits + i9;
                    break;
                case 2:
                    i8 = i13 * 53;
                    jDoubleToLongBits = AbstractC1718nI.i(obj, j8);
                    Charset charset2 = AbstractC2288yH.f22010a;
                    i13 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 3:
                    i8 = i13 * 53;
                    jDoubleToLongBits = AbstractC1718nI.i(obj, j8);
                    Charset charset3 = AbstractC2288yH.f22010a;
                    i13 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 4:
                    i9 = i13 * 53;
                    iFloatToIntBits = AbstractC1718nI.g(obj, j8);
                    i13 = iFloatToIntBits + i9;
                    break;
                case 5:
                    i8 = i13 * 53;
                    jDoubleToLongBits = AbstractC1718nI.i(obj, j8);
                    Charset charset4 = AbstractC2288yH.f22010a;
                    i13 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 6:
                    i9 = i13 * 53;
                    iFloatToIntBits = AbstractC1718nI.g(obj, j8);
                    i13 = iFloatToIntBits + i9;
                    break;
                case 7:
                    i10 = i13 * 53;
                    boolean zW0 = AbstractC1718nI.f20155c.W0(obj, j8);
                    Charset charset5 = AbstractC2288yH.f22010a;
                    if (zW0) {
                        i16 = 1231;
                    }
                    i13 = i16 + i10;
                    break;
                case 8:
                    i9 = i13 * 53;
                    iFloatToIntBits = ((String) AbstractC1718nI.k(obj, j8)).hashCode();
                    i13 = iFloatToIntBits + i9;
                    break;
                case 9:
                    i11 = i13 * 53;
                    Object objK = AbstractC1718nI.k(obj, j8);
                    if (objK != null) {
                        iHashCode = objK.hashCode();
                    }
                    i13 = i11 + iHashCode;
                    break;
                case 10:
                    i9 = i13 * 53;
                    iFloatToIntBits = AbstractC1718nI.k(obj, j8).hashCode();
                    i13 = iFloatToIntBits + i9;
                    break;
                case 11:
                    i9 = i13 * 53;
                    iFloatToIntBits = AbstractC1718nI.g(obj, j8);
                    i13 = iFloatToIntBits + i9;
                    break;
                case 12:
                    i9 = i13 * 53;
                    iFloatToIntBits = AbstractC1718nI.g(obj, j8);
                    i13 = iFloatToIntBits + i9;
                    break;
                case 13:
                    i9 = i13 * 53;
                    iFloatToIntBits = AbstractC1718nI.g(obj, j8);
                    i13 = iFloatToIntBits + i9;
                    break;
                case 14:
                    i8 = i13 * 53;
                    jDoubleToLongBits = AbstractC1718nI.i(obj, j8);
                    Charset charset6 = AbstractC2288yH.f22010a;
                    i13 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 15:
                    i9 = i13 * 53;
                    iFloatToIntBits = AbstractC1718nI.g(obj, j8);
                    i13 = iFloatToIntBits + i9;
                    break;
                case 16:
                    i8 = i13 * 53;
                    jDoubleToLongBits = AbstractC1718nI.i(obj, j8);
                    Charset charset7 = AbstractC2288yH.f22010a;
                    i13 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 17:
                    i11 = i13 * 53;
                    Object objK2 = AbstractC1718nI.k(obj, j8);
                    if (objK2 != null) {
                        iHashCode = objK2.hashCode();
                    }
                    i13 = i11 + iHashCode;
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
                    i9 = i13 * 53;
                    iFloatToIntBits = AbstractC1718nI.k(obj, j8).hashCode();
                    i13 = iFloatToIntBits + i9;
                    break;
                case 50:
                    i9 = i13 * 53;
                    iFloatToIntBits = AbstractC1718nI.k(obj, j8).hashCode();
                    i13 = iFloatToIntBits + i9;
                    break;
                case 51:
                    if (s(obj, i15, i12)) {
                        i8 = i13 * 53;
                        jDoubleToLongBits = Double.doubleToLongBits(((Double) AbstractC1718nI.k(obj, j8)).doubleValue());
                        Charset charset8 = AbstractC2288yH.f22010a;
                        i13 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 52:
                    if (s(obj, i15, i12)) {
                        i9 = i13 * 53;
                        iFloatToIntBits = Float.floatToIntBits(((Float) AbstractC1718nI.k(obj, j8)).floatValue());
                        i13 = iFloatToIntBits + i9;
                    }
                    break;
                case 53:
                    if (s(obj, i15, i12)) {
                        i8 = i13 * 53;
                        jDoubleToLongBits = z(obj, j8);
                        Charset charset9 = AbstractC2288yH.f22010a;
                        i13 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 54:
                    if (s(obj, i15, i12)) {
                        i8 = i13 * 53;
                        jDoubleToLongBits = z(obj, j8);
                        Charset charset10 = AbstractC2288yH.f22010a;
                        i13 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 55:
                    if (s(obj, i15, i12)) {
                        i9 = i13 * 53;
                        iFloatToIntBits = v(obj, j8);
                        i13 = iFloatToIntBits + i9;
                    }
                    break;
                case 56:
                    if (s(obj, i15, i12)) {
                        i8 = i13 * 53;
                        jDoubleToLongBits = z(obj, j8);
                        Charset charset11 = AbstractC2288yH.f22010a;
                        i13 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 57:
                    if (s(obj, i15, i12)) {
                        i9 = i13 * 53;
                        iFloatToIntBits = v(obj, j8);
                        i13 = iFloatToIntBits + i9;
                    }
                    break;
                case 58:
                    if (s(obj, i15, i12)) {
                        i10 = i13 * 53;
                        boolean zBooleanValue = ((Boolean) AbstractC1718nI.k(obj, j8)).booleanValue();
                        Charset charset12 = AbstractC2288yH.f22010a;
                        if (zBooleanValue) {
                            i16 = 1231;
                        }
                        i13 = i16 + i10;
                    }
                    break;
                case 59:
                    if (s(obj, i15, i12)) {
                        i9 = i13 * 53;
                        iFloatToIntBits = ((String) AbstractC1718nI.k(obj, j8)).hashCode();
                        i13 = iFloatToIntBits + i9;
                    }
                    break;
                case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                    if (s(obj, i15, i12)) {
                        i9 = i13 * 53;
                        iFloatToIntBits = AbstractC1718nI.k(obj, j8).hashCode();
                        i13 = iFloatToIntBits + i9;
                    }
                    break;
                case 61:
                    if (s(obj, i15, i12)) {
                        i9 = i13 * 53;
                        iFloatToIntBits = AbstractC1718nI.k(obj, j8).hashCode();
                        i13 = iFloatToIntBits + i9;
                    }
                    break;
                case 62:
                    if (s(obj, i15, i12)) {
                        i9 = i13 * 53;
                        iFloatToIntBits = v(obj, j8);
                        i13 = iFloatToIntBits + i9;
                    }
                    break;
                case 63:
                    if (s(obj, i15, i12)) {
                        i9 = i13 * 53;
                        iFloatToIntBits = v(obj, j8);
                        i13 = iFloatToIntBits + i9;
                    }
                    break;
                case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                    if (s(obj, i15, i12)) {
                        i9 = i13 * 53;
                        iFloatToIntBits = v(obj, j8);
                        i13 = iFloatToIntBits + i9;
                    }
                    break;
                case 65:
                    if (s(obj, i15, i12)) {
                        i8 = i13 * 53;
                        jDoubleToLongBits = z(obj, j8);
                        Charset charset13 = AbstractC2288yH.f22010a;
                        i13 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 66:
                    if (s(obj, i15, i12)) {
                        i9 = i13 * 53;
                        iFloatToIntBits = v(obj, j8);
                        i13 = iFloatToIntBits + i9;
                    }
                    break;
                case 67:
                    if (s(obj, i15, i12)) {
                        i8 = i13 * 53;
                        jDoubleToLongBits = z(obj, j8);
                        Charset charset14 = AbstractC2288yH.f22010a;
                        i13 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 68:
                    if (s(obj, i15, i12)) {
                        i9 = i13 * 53;
                        iFloatToIntBits = AbstractC1718nI.k(obj, j8).hashCode();
                        i13 = iFloatToIntBits + i9;
                    }
                    break;
            }
            i12 += 3;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1098bI
    public final AbstractC1873qH zze() {
        return ((AbstractC1873qH) this.f15361e).q();
    }

    /* JADX WARN: Code duplicated, block: B:26:0x006d  */
    /* JADX WARN: Code duplicated, block: B:28:0x0073  */
    /* JADX WARN: Code duplicated, block: B:39:0x007e A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.InterfaceC1098bI
    public final void zzf(Object obj) {
        if (!r(obj)) {
            return;
        }
        if (obj instanceof AbstractC1873qH) {
            AbstractC1873qH abstractC1873qH = (AbstractC1873qH) obj;
            abstractC1873qH.l();
            abstractC1873qH.k();
            abstractC1873qH.n();
        }
        int i8 = 0;
        while (true) {
            int[] iArr = this.f15357a;
            if (i8 >= iArr.length) {
                this.f15366j.getClass();
                C2272y1.k(obj);
                return;
            }
            int iY = y(i8);
            int i9 = 1048575 & iY;
            int iX = x(iY);
            long j8 = i9;
            Unsafe unsafe = f15356l;
            if (iX != 9) {
                if (iX != 60 && iX != 68) {
                    switch (iX) {
                        case 17:
                            if (p(obj, i8)) {
                                B(i8).zzf(unsafe.getObject(obj, j8));
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
                            ((QG) ((InterfaceC2236xH) AbstractC1718nI.k(obj, j8))).zzb();
                            break;
                        case 50:
                            Object object = unsafe.getObject(obj, j8);
                            if (object != null) {
                                ((JH) object).c();
                                unsafe.putObject(obj, j8, object);
                            }
                            break;
                    }
                } else if (s(obj, iArr[i8], i8)) {
                    B(i8).zzf(unsafe.getObject(obj, j8));
                }
            } else if (p(obj, i8)) {
                B(i8).zzf(unsafe.getObject(obj, j8));
            }
            i8 += 3;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1098bI
    public final void zzg(Object obj, Object obj2) {
        g(obj);
        obj2.getClass();
        int i8 = 0;
        while (true) {
            int[] iArr = this.f15357a;
            if (i8 >= iArr.length) {
                AbstractC1149cI.x(obj, obj2);
                return;
            }
            int iY = y(i8);
            int i9 = 1048575 & iY;
            int iX = x(iY);
            int i10 = iArr[i8];
            long j8 = i9;
            switch (iX) {
                case 0:
                    if (p(obj2, i8)) {
                        AbstractC1718nI.o(obj, j8, AbstractC1718nI.f20155c.M(obj2, j8));
                        k(obj, i8);
                    }
                    break;
                case 1:
                    if (p(obj2, i8)) {
                        AbstractC1718nI.p(obj, j8, AbstractC1718nI.f20155c.Q0(obj2, j8));
                        k(obj, i8);
                    }
                    break;
                case 2:
                    if (p(obj2, i8)) {
                        AbstractC1718nI.r(obj, j8, AbstractC1718nI.i(obj2, j8));
                        k(obj, i8);
                    }
                    break;
                case 3:
                    if (p(obj2, i8)) {
                        AbstractC1718nI.r(obj, j8, AbstractC1718nI.i(obj2, j8));
                        k(obj, i8);
                    }
                    break;
                case 4:
                    if (p(obj2, i8)) {
                        AbstractC1718nI.q(obj, AbstractC1718nI.g(obj2, j8), j8);
                        k(obj, i8);
                    }
                    break;
                case 5:
                    if (p(obj2, i8)) {
                        AbstractC1718nI.r(obj, j8, AbstractC1718nI.i(obj2, j8));
                        k(obj, i8);
                    }
                    break;
                case 6:
                    if (p(obj2, i8)) {
                        AbstractC1718nI.q(obj, AbstractC1718nI.g(obj2, j8), j8);
                        k(obj, i8);
                    }
                    break;
                case 7:
                    if (p(obj2, i8)) {
                        AbstractC1718nI.m(obj, j8, AbstractC1718nI.f20155c.W0(obj2, j8));
                        k(obj, i8);
                    }
                    break;
                case 8:
                    if (p(obj2, i8)) {
                        AbstractC1718nI.s(obj, j8, AbstractC1718nI.k(obj2, j8));
                        k(obj, i8);
                    }
                    break;
                case 9:
                    h(obj, obj2, i8);
                    break;
                case 10:
                    if (p(obj2, i8)) {
                        AbstractC1718nI.s(obj, j8, AbstractC1718nI.k(obj2, j8));
                        k(obj, i8);
                    }
                    break;
                case 11:
                    if (p(obj2, i8)) {
                        AbstractC1718nI.q(obj, AbstractC1718nI.g(obj2, j8), j8);
                        k(obj, i8);
                    }
                    break;
                case 12:
                    if (p(obj2, i8)) {
                        AbstractC1718nI.q(obj, AbstractC1718nI.g(obj2, j8), j8);
                        k(obj, i8);
                    }
                    break;
                case 13:
                    if (p(obj2, i8)) {
                        AbstractC1718nI.q(obj, AbstractC1718nI.g(obj2, j8), j8);
                        k(obj, i8);
                    }
                    break;
                case 14:
                    if (p(obj2, i8)) {
                        AbstractC1718nI.r(obj, j8, AbstractC1718nI.i(obj2, j8));
                        k(obj, i8);
                    }
                    break;
                case 15:
                    if (p(obj2, i8)) {
                        AbstractC1718nI.q(obj, AbstractC1718nI.g(obj2, j8), j8);
                        k(obj, i8);
                    }
                    break;
                case 16:
                    if (p(obj2, i8)) {
                        AbstractC1718nI.r(obj, j8, AbstractC1718nI.i(obj2, j8));
                        k(obj, i8);
                    }
                    break;
                case 17:
                    h(obj, obj2, i8);
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
                    InterfaceC2236xH interfaceC2236xHA = (InterfaceC2236xH) AbstractC1718nI.k(obj, j8);
                    InterfaceC2236xH interfaceC2236xH = (InterfaceC2236xH) AbstractC1718nI.k(obj2, j8);
                    int size = interfaceC2236xHA.size();
                    int size2 = interfaceC2236xH.size();
                    if (size > 0 && size2 > 0) {
                        if (!((QG) interfaceC2236xHA).f16004G) {
                            interfaceC2236xHA = interfaceC2236xHA.a(size2 + size);
                        }
                        interfaceC2236xHA.addAll(interfaceC2236xH);
                    }
                    if (size > 0) {
                        interfaceC2236xH = interfaceC2236xHA;
                    }
                    AbstractC1718nI.s(obj, j8, interfaceC2236xH);
                    break;
                case 50:
                    C2272y1 c2272y1 = AbstractC1149cI.f18207a;
                    AbstractC1718nI.s(obj, j8, C1301fF.i(AbstractC1718nI.k(obj, j8), AbstractC1718nI.k(obj2, j8)));
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
                    if (s(obj2, i10, i8)) {
                        AbstractC1718nI.s(obj, j8, AbstractC1718nI.k(obj2, j8));
                        l(obj, i10, i8);
                    }
                    break;
                case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                    i(obj, obj2, i8);
                    break;
                case 61:
                case 62:
                case 63:
                case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                case 65:
                case 66:
                case 67:
                    if (s(obj2, i10, i8)) {
                        AbstractC1718nI.s(obj, j8, AbstractC1718nI.k(obj2, j8));
                        l(obj, i10, i8);
                    }
                    break;
                case 68:
                    i(obj, obj2, i8);
                    break;
            }
            i8 += 3;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1098bI
    public final boolean zzk(Object obj, Object obj2) {
        boolean zJ;
        int i8 = 0;
        while (true) {
            int[] iArr = this.f15357a;
            if (i8 >= iArr.length) {
                return ((AbstractC1873qH) obj).zzt.equals(((AbstractC1873qH) obj2).zzt);
            }
            int iY = y(i8);
            long j8 = iY & 1048575;
            switch (x(iY)) {
                case 0:
                    if (o(obj, obj2, i8)) {
                        AbstractC1666mI abstractC1666mI = AbstractC1718nI.f20155c;
                        if (Double.doubleToLongBits(abstractC1666mI.M(obj, j8)) == Double.doubleToLongBits(abstractC1666mI.M(obj2, j8))) {
                            continue;
                            i8 += 3;
                            break;
                        }
                    }
                    return false;
                case 1:
                    if (o(obj, obj2, i8)) {
                        AbstractC1666mI abstractC1666mI2 = AbstractC1718nI.f20155c;
                        if (Float.floatToIntBits(abstractC1666mI2.Q0(obj, j8)) == Float.floatToIntBits(abstractC1666mI2.Q0(obj2, j8))) {
                            continue;
                            i8 += 3;
                            break;
                        }
                    }
                    return false;
                case 2:
                    if (!o(obj, obj2, i8) || AbstractC1718nI.i(obj, j8) != AbstractC1718nI.i(obj2, j8)) {
                        return false;
                    }
                    continue;
                    i8 += 3;
                    break;
                    break;
                case 3:
                    if (!o(obj, obj2, i8) || AbstractC1718nI.i(obj, j8) != AbstractC1718nI.i(obj2, j8)) {
                        return false;
                    }
                    continue;
                    i8 += 3;
                    break;
                    break;
                case 4:
                    if (!o(obj, obj2, i8) || AbstractC1718nI.g(obj, j8) != AbstractC1718nI.g(obj2, j8)) {
                        return false;
                    }
                    continue;
                    i8 += 3;
                    break;
                    break;
                case 5:
                    if (!o(obj, obj2, i8) || AbstractC1718nI.i(obj, j8) != AbstractC1718nI.i(obj2, j8)) {
                        return false;
                    }
                    continue;
                    i8 += 3;
                    break;
                    break;
                case 6:
                    if (!o(obj, obj2, i8) || AbstractC1718nI.g(obj, j8) != AbstractC1718nI.g(obj2, j8)) {
                        return false;
                    }
                    continue;
                    i8 += 3;
                    break;
                    break;
                case 7:
                    if (o(obj, obj2, i8)) {
                        AbstractC1666mI abstractC1666mI3 = AbstractC1718nI.f20155c;
                        if (abstractC1666mI3.W0(obj, j8) == abstractC1666mI3.W0(obj2, j8)) {
                            continue;
                            i8 += 3;
                            break;
                        }
                    }
                    return false;
                case 8:
                    if (!o(obj, obj2, i8) || !AbstractC1149cI.j(AbstractC1718nI.k(obj, j8), AbstractC1718nI.k(obj2, j8))) {
                        return false;
                    }
                    continue;
                    i8 += 3;
                    break;
                    break;
                case 9:
                    if (!o(obj, obj2, i8) || !AbstractC1149cI.j(AbstractC1718nI.k(obj, j8), AbstractC1718nI.k(obj2, j8))) {
                        return false;
                    }
                    continue;
                    i8 += 3;
                    break;
                    break;
                case 10:
                    if (!o(obj, obj2, i8) || !AbstractC1149cI.j(AbstractC1718nI.k(obj, j8), AbstractC1718nI.k(obj2, j8))) {
                        return false;
                    }
                    continue;
                    i8 += 3;
                    break;
                    break;
                case 11:
                    if (!o(obj, obj2, i8) || AbstractC1718nI.g(obj, j8) != AbstractC1718nI.g(obj2, j8)) {
                        return false;
                    }
                    continue;
                    i8 += 3;
                    break;
                    break;
                case 12:
                    if (!o(obj, obj2, i8) || AbstractC1718nI.g(obj, j8) != AbstractC1718nI.g(obj2, j8)) {
                        return false;
                    }
                    continue;
                    i8 += 3;
                    break;
                    break;
                case 13:
                    if (!o(obj, obj2, i8) || AbstractC1718nI.g(obj, j8) != AbstractC1718nI.g(obj2, j8)) {
                        return false;
                    }
                    continue;
                    i8 += 3;
                    break;
                    break;
                case 14:
                    if (!o(obj, obj2, i8) || AbstractC1718nI.i(obj, j8) != AbstractC1718nI.i(obj2, j8)) {
                        return false;
                    }
                    continue;
                    i8 += 3;
                    break;
                    break;
                case 15:
                    if (!o(obj, obj2, i8) || AbstractC1718nI.g(obj, j8) != AbstractC1718nI.g(obj2, j8)) {
                        return false;
                    }
                    continue;
                    i8 += 3;
                    break;
                    break;
                case 16:
                    if (!o(obj, obj2, i8) || AbstractC1718nI.i(obj, j8) != AbstractC1718nI.i(obj2, j8)) {
                        return false;
                    }
                    continue;
                    i8 += 3;
                    break;
                    break;
                case 17:
                    if (!o(obj, obj2, i8) || !AbstractC1149cI.j(AbstractC1718nI.k(obj, j8), AbstractC1718nI.k(obj2, j8))) {
                        return false;
                    }
                    continue;
                    i8 += 3;
                    break;
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
                    zJ = AbstractC1149cI.j(AbstractC1718nI.k(obj, j8), AbstractC1718nI.k(obj2, j8));
                    break;
                case 50:
                    zJ = AbstractC1149cI.j(AbstractC1718nI.k(obj, j8), AbstractC1718nI.k(obj2, j8));
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
                    if (AbstractC1718nI.g(obj, j9) != AbstractC1718nI.g(obj2, j9) || !AbstractC1149cI.j(AbstractC1718nI.k(obj, j8), AbstractC1718nI.k(obj2, j8))) {
                        return false;
                    }
                    continue;
                    i8 += 3;
                    break;
                    break;
                default:
                    continue;
                    i8 += 3;
                    break;
            }
            if (!zJ) {
                return false;
            }
            i8 += 3;
        }
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:44:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:47:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:50:0x00c8 A[LOOP:1: B:45:0x00b7->B:50:0x00c8, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:62:0x00c7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:0x00ec A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.InterfaceC1098bI
    public final boolean zzl(Object obj) {
        int i8;
        int i9;
        List list;
        InterfaceC1098bI interfaceC1098bIB;
        int i10;
        int i11 = 1048575;
        int i12 = 0;
        int i13 = 0;
        while (i13 < this.f15364h) {
            int i14 = this.f15363g[i13];
            int[] iArr = this.f15357a;
            int i15 = iArr[i14];
            int iY = y(i14);
            int i16 = iArr[i14 + 2];
            int i17 = i16 & 1048575;
            int i18 = 1 << (i16 >>> 20);
            if (i17 != i11) {
                if (i17 != 1048575) {
                    i12 = f15356l.getInt(obj, i17);
                }
                i9 = i12;
                i8 = i17;
            } else {
                i8 = i11;
                i9 = i12;
            }
            if ((268435456 & iY) != 0 && !q(obj, i14, i8, i9, i18)) {
                return false;
            }
            int iX = x(iY);
            if (iX == 9 || iX == 17) {
                if (q(obj, i14, i8, i9, i18) && !B(i14).zzl(AbstractC1718nI.k(obj, iY & 1048575))) {
                    return false;
                }
            } else if (iX == 27) {
                list = (List) AbstractC1718nI.k(obj, iY & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    interfaceC1098bIB = B(i14);
                    for (i10 = 0; i10 < list.size(); i10++) {
                        if (!interfaceC1098bIB.zzl(list.get(i10))) {
                            return false;
                        }
                    }
                }
            } else if (iX == 60 || iX == 68) {
                if (s(obj, i15, i14) && !B(i14).zzl(AbstractC1718nI.k(obj, iY & 1048575))) {
                    return false;
                }
            } else if (iX == 49) {
                list = (List) AbstractC1718nI.k(obj, iY & 1048575);
                if (list.isEmpty()) {
                    interfaceC1098bIB = B(i14);
                    while (i10 < list.size()) {
                        if (!interfaceC1098bIB.zzl(list.get(i10))) {
                            return false;
                        }
                    }
                } else {
                    continue;
                }
            } else if (iX == 50 && !((JH) AbstractC1718nI.k(obj, iY & 1048575)).isEmpty()) {
                A0.O.I(D(i14));
                throw null;
            }
            i13++;
            i11 = i8;
            i12 = i9;
        }
        return true;
    }
}
