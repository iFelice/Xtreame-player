package com.google.android.gms.internal.cast;

import com.google.android.gms.internal.ads.AbstractC2090uc;
import com.google.api.Service;
import com.google.protobuf.DescriptorProtos$FileOptions;
import com.google.protobuf.DescriptorProtos$MethodOptions;
import java.lang.reflect.Field;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Logger;
import okhttp3.internal.ws.WebSocketProtocol;
import org.eclipse.paho.client.mqttv3.MqttConnectOptions;
import org.videolan.libvlc.interfaces.IMediaList;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes.dex */
public final class E2 implements M2 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int[] f22444h = new int[0];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Unsafe f22445i = W2.j();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f22446a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object[] f22447b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final U1 f22448c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int[] f22449d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f22450e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AbstractC2504u2 f22451f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Q2 f22452g;

    public E2(int[] iArr, Object[] objArr, U1 u7, int[] iArr2, int i8, AbstractC2504u2 abstractC2504u2, Q2 q7, C2437d2 c2437d2) {
        this.f22446a = iArr;
        this.f22447b = objArr;
        this.f22449d = iArr2;
        this.f22450e = i8;
        this.f22451f = abstractC2504u2;
        this.f22452g = q7;
        this.f22448c = u7;
    }

    public static boolean e(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof AbstractC2457i2) {
            return ((AbstractC2457i2) obj).g();
        }
        return true;
    }

    public static E2 g(B2 b8, AbstractC2504u2 abstractC2504u2, Q2 q7, C2437d2 c2437d2) {
        int i8;
        int iCharAt;
        int iCharAt2;
        int i9;
        int i10;
        int i11;
        int[] iArr;
        int i12;
        char cCharAt;
        int i13;
        char cCharAt2;
        int i14;
        char cCharAt3;
        int i15;
        char cCharAt4;
        int i16;
        int i17;
        int i18;
        char cCharAt5;
        int i19;
        char cCharAt6;
        int i20;
        int i21;
        int i22;
        int i23;
        Class<?> cls;
        int iObjectFieldOffset;
        int iObjectFieldOffset2;
        int i24;
        int i25;
        Field fieldM;
        char cCharAt7;
        int i26;
        int i27;
        int i28;
        Field fieldM2;
        Field fieldM3;
        int i29;
        char cCharAt8;
        int i30;
        char cCharAt9;
        int i31;
        char cCharAt10;
        int i32;
        char cCharAt11;
        if (!(b8 instanceof L2)) {
            A0.O.I(b8);
            throw null;
        }
        L2 l4 = (L2) b8;
        String strC = l4.c();
        int length = strC.length();
        char c8 = 55296;
        if (strC.charAt(0) >= 55296) {
            int i33 = 1;
            while (true) {
                i8 = i33 + 1;
                if (strC.charAt(i33) < 55296) {
                    break;
                }
                i33 = i8;
            }
        } else {
            i8 = 1;
        }
        int i34 = i8 + 1;
        int iCharAt3 = strC.charAt(i8);
        if (iCharAt3 >= 55296) {
            int i35 = iCharAt3 & 8191;
            int i36 = 13;
            while (true) {
                i32 = i34 + 1;
                cCharAt11 = strC.charAt(i34);
                if (cCharAt11 < 55296) {
                    break;
                }
                i35 |= (cCharAt11 & 8191) << i36;
                i36 += 13;
                i34 = i32;
            }
            iCharAt3 = i35 | (cCharAt11 << i36);
            i34 = i32;
        }
        if (iCharAt3 == 0) {
            iArr = f22444h;
            i11 = 0;
            iCharAt = 0;
            iCharAt2 = 0;
            i9 = 0;
            i10 = 0;
        } else {
            int i37 = i34 + 1;
            int iCharAt4 = strC.charAt(i34);
            if (iCharAt4 >= 55296) {
                int i38 = iCharAt4 & 8191;
                int i39 = 13;
                while (true) {
                    i19 = i37 + 1;
                    cCharAt6 = strC.charAt(i37);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i38 |= (cCharAt6 & 8191) << i39;
                    i39 += 13;
                    i37 = i19;
                }
                iCharAt4 = i38 | (cCharAt6 << i39);
                i37 = i19;
            }
            int i40 = i37 + 1;
            int iCharAt5 = strC.charAt(i37);
            if (iCharAt5 >= 55296) {
                int i41 = iCharAt5 & 8191;
                int i42 = 13;
                while (true) {
                    i18 = i40 + 1;
                    cCharAt5 = strC.charAt(i40);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i41 |= (cCharAt5 & 8191) << i42;
                    i42 += 13;
                    i40 = i18;
                }
                iCharAt5 = i41 | (cCharAt5 << i42);
                i40 = i18;
            }
            int i43 = i40 + 1;
            if (strC.charAt(i40) >= 55296) {
                while (true) {
                    i17 = i43 + 1;
                    if (strC.charAt(i43) < 55296) {
                        break;
                    }
                    i43 = i17;
                }
                i43 = i17;
            }
            int i44 = i43 + 1;
            if (strC.charAt(i43) >= 55296) {
                while (true) {
                    i16 = i44 + 1;
                    if (strC.charAt(i44) < 55296) {
                        break;
                    }
                    i44 = i16;
                }
                i44 = i16;
            }
            int i45 = i44 + 1;
            iCharAt = strC.charAt(i44);
            if (iCharAt >= 55296) {
                int i46 = iCharAt & 8191;
                int i47 = 13;
                while (true) {
                    i15 = i45 + 1;
                    cCharAt4 = strC.charAt(i45);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i46 |= (cCharAt4 & 8191) << i47;
                    i47 += 13;
                    i45 = i15;
                }
                iCharAt = i46 | (cCharAt4 << i47);
                i45 = i15;
            }
            int i48 = i45 + 1;
            iCharAt2 = strC.charAt(i45);
            if (iCharAt2 >= 55296) {
                int i49 = iCharAt2 & 8191;
                int i50 = 13;
                while (true) {
                    i14 = i48 + 1;
                    cCharAt3 = strC.charAt(i48);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i49 |= (cCharAt3 & 8191) << i50;
                    i50 += 13;
                    i48 = i14;
                }
                iCharAt2 = i49 | (cCharAt3 << i50);
                i48 = i14;
            }
            int i51 = i48 + 1;
            int iCharAt6 = strC.charAt(i48);
            if (iCharAt6 >= 55296) {
                int i52 = iCharAt6 & 8191;
                int i53 = 13;
                while (true) {
                    i13 = i51 + 1;
                    cCharAt2 = strC.charAt(i51);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i52 |= (cCharAt2 & 8191) << i53;
                    i53 += 13;
                    i51 = i13;
                }
                iCharAt6 = i52 | (cCharAt2 << i53);
                i51 = i13;
            }
            int i54 = i51 + 1;
            int iCharAt7 = strC.charAt(i51);
            if (iCharAt7 >= 55296) {
                int i55 = iCharAt7 & 8191;
                int i56 = 13;
                while (true) {
                    i12 = i54 + 1;
                    cCharAt = strC.charAt(i54);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i55 |= (cCharAt & 8191) << i56;
                    i56 += 13;
                    i54 = i12;
                }
                iCharAt7 = i55 | (cCharAt << i56);
                i54 = i12;
            }
            int i57 = iCharAt7 + iCharAt2 + iCharAt6;
            i9 = iCharAt4 + iCharAt4 + iCharAt5;
            int[] iArr2 = new int[i57];
            i10 = iCharAt7;
            i11 = iCharAt4;
            i34 = i54;
            iArr = iArr2;
        }
        Object[] objArrD = l4.d();
        Class<?> cls2 = l4.a().getClass();
        int i58 = iCharAt2 + i10;
        int i59 = iCharAt + iCharAt;
        int[] iArr3 = new int[iCharAt * 3];
        Object[] objArr = new Object[i59];
        int i60 = i10;
        int i61 = 0;
        int i62 = 0;
        while (i34 < length) {
            int i63 = i34 + 1;
            int iCharAt8 = strC.charAt(i34);
            if (iCharAt8 >= c8) {
                int i64 = iCharAt8 & 8191;
                int i65 = i63;
                int i66 = 13;
                while (true) {
                    i31 = i65 + 1;
                    cCharAt10 = strC.charAt(i65);
                    if (cCharAt10 < c8) {
                        break;
                    }
                    i64 |= (cCharAt10 & 8191) << i66;
                    i66 += 13;
                    i65 = i31;
                }
                iCharAt8 = i64 | (cCharAt10 << i66);
                i20 = i31;
            } else {
                i20 = i63;
            }
            int i67 = i20 + 1;
            int iCharAt9 = strC.charAt(i20);
            if (iCharAt9 >= c8) {
                int i68 = iCharAt9 & 8191;
                int i69 = i67;
                int i70 = 13;
                while (true) {
                    i30 = i69 + 1;
                    cCharAt9 = strC.charAt(i69);
                    i21 = length;
                    if (cCharAt9 < 55296) {
                        break;
                    }
                    i68 |= (cCharAt9 & 8191) << i70;
                    i70 += 13;
                    i69 = i30;
                    length = i21;
                }
                iCharAt9 = i68 | (cCharAt9 << i70);
                i22 = i30;
            } else {
                i21 = length;
                i22 = i67;
            }
            if ((iCharAt9 & 1024) != 0) {
                iArr[i62] = i61;
                i62++;
            }
            int i71 = iCharAt9 & 255;
            int i72 = i10;
            int i73 = iCharAt9 & 2048;
            int i74 = iCharAt8;
            Unsafe unsafe = f22445i;
            int[] iArr4 = iArr3;
            if (i71 >= 51) {
                int i75 = i22 + 1;
                int iCharAt10 = strC.charAt(i22);
                if (iCharAt10 >= 55296) {
                    int i76 = iCharAt10 & 8191;
                    int i77 = i75;
                    int i78 = 13;
                    while (true) {
                        i29 = i77 + 1;
                        cCharAt8 = strC.charAt(i77);
                        i23 = i58;
                        if (cCharAt8 < 55296) {
                            break;
                        }
                        i76 |= (cCharAt8 & 8191) << i78;
                        i78 += 13;
                        i77 = i29;
                        i58 = i23;
                    }
                    iCharAt10 = i76 | (cCharAt8 << i78);
                    i28 = i29;
                } else {
                    i23 = i58;
                    i28 = i75;
                }
                int i79 = i71 - 51;
                int i80 = i28;
                if (i79 == 9 || i79 == 17) {
                    objArr[p000a.r.t(i61, 3, 1)] = objArrD[i9];
                    i9++;
                } else if (i79 == 12) {
                    if (l4.b() == 1 || i73 != 0) {
                        objArr[p000a.r.t(i61, 3, 1)] = objArrD[i9];
                        i9++;
                    } else {
                        i73 = 0;
                    }
                }
                int i81 = iCharAt10 + iCharAt10;
                Object obj = objArrD[i81];
                if (obj instanceof Field) {
                    fieldM2 = (Field) obj;
                } else {
                    fieldM2 = m(cls2, (String) obj);
                    objArrD[i81] = fieldM2;
                }
                int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldM2);
                int i82 = i81 + 1;
                Object obj2 = objArrD[i82];
                if (obj2 instanceof Field) {
                    fieldM3 = (Field) obj2;
                } else {
                    fieldM3 = m(cls2, (String) obj2);
                    objArrD[i82] = fieldM3;
                }
                int iObjectFieldOffset4 = (int) unsafe.objectFieldOffset(fieldM3);
                strC = strC;
                i34 = i80;
                iObjectFieldOffset = iObjectFieldOffset3;
                l4 = l4;
                cls = cls2;
                iObjectFieldOffset2 = iObjectFieldOffset4;
                i25 = 0;
            } else {
                i23 = i58;
                int i83 = i9 + 1;
                Field fieldM4 = m(cls2, (String) objArrD[i9]);
                cls = cls2;
                if (i71 == 9 || i71 == 17) {
                    l4 = l4;
                    objArr[p000a.r.t(i61, 3, 1)] = fieldM4.getType();
                } else {
                    if (i71 == 27) {
                        i26 = 1;
                        i27 = i9 + 2;
                    } else if (i71 == 49) {
                        i27 = i9 + 2;
                        i26 = 1;
                    } else if (i71 == 12 || i71 == 30 || i71 == 44) {
                        l4 = l4;
                        if (l4.b() == 1 || i73 != 0) {
                            i27 = i9 + 2;
                            objArr[p000a.r.t(i61, 3, 1)] = objArrD[i83];
                            i83 = i27;
                        } else {
                            i73 = 0;
                        }
                    } else {
                        if (i71 == 50) {
                            int i84 = i9 + 2;
                            int i85 = i60 + 1;
                            iArr[i60] = i61;
                            int i86 = i61 / 3;
                            int i87 = i86 + i86;
                            objArr[i87] = objArrD[i83];
                            if (i73 != 0) {
                                i83 = i9 + 3;
                                objArr[i87 + 1] = objArrD[i84];
                                i60 = i85;
                            } else {
                                i83 = i84;
                                i60 = i85;
                                i73 = 0;
                            }
                        }
                        l4 = l4;
                    }
                    objArr[p000a.r.t(i61, 3, i26)] = objArrD[i83];
                    i83 = i27;
                }
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldM4);
                iObjectFieldOffset2 = 1048575;
                if ((iCharAt9 & 4096) == 0 || i71 > 17) {
                    i24 = i22;
                    i25 = 0;
                } else {
                    int i88 = i22 + 1;
                    int iCharAt11 = strC.charAt(i22);
                    if (iCharAt11 >= 55296) {
                        int i89 = iCharAt11 & 8191;
                        int i90 = 13;
                        while (true) {
                            i24 = i88 + 1;
                            cCharAt7 = strC.charAt(i88);
                            if (cCharAt7 < 55296) {
                                break;
                            }
                            i89 |= (cCharAt7 & 8191) << i90;
                            i90 += 13;
                            i88 = i24;
                        }
                        iCharAt11 = i89 | (cCharAt7 << i90);
                    } else {
                        i24 = i88;
                    }
                    int i91 = (iCharAt11 / 32) + i11 + i11;
                    Object obj3 = objArrD[i91];
                    if (obj3 instanceof Field) {
                        fieldM = (Field) obj3;
                    } else {
                        fieldM = m(cls, (String) obj3);
                        objArrD[i91] = fieldM;
                    }
                    i25 = iCharAt11 % 32;
                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldM);
                }
                if (i71 >= 18 && i71 <= 49) {
                    iArr[i23] = iObjectFieldOffset;
                    i23++;
                }
                i9 = i83;
                i34 = i24;
            }
            int i92 = i61 + 1;
            iArr4[i61] = i74;
            int i93 = i61 + 2;
            iArr4[i92] = ((iCharAt9 & IMediaList.Event.ItemAdded) != 0 ? 536870912 : 0) | ((iCharAt9 & 256) != 0 ? 268435456 : 0) | (i73 != 0 ? Integer.MIN_VALUE : 0) | (i71 << 20) | iObjectFieldOffset;
            i61 += 3;
            iArr4[i93] = (i25 << 20) | iObjectFieldOffset2;
            i10 = i72;
            strC = strC;
            length = i21;
            cls2 = cls;
            l4 = l4;
            iArr3 = iArr4;
            i58 = i23;
            c8 = 55296;
        }
        return new E2(iArr3, objArr, l4.a(), iArr, i10, abstractC2504u2, q7, c2437d2);
    }

    public static int h(Object obj, long j8) {
        return ((Integer) W2.i(obj, j8)).intValue();
    }

    public static int i(int i8) {
        return (i8 >>> 20) & 255;
    }

    public static long k(Object obj, long j8) {
        return ((Long) W2.i(obj, j8)).longValue();
    }

    public static Field m(Class cls, String str) {
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

    /* JADX WARN: Code duplicated, block: B:27:0x0062  */
    /* JADX WARN: Code duplicated, block: B:29:0x0068  */
    /* JADX WARN: Code duplicated, block: B:39:0x0073 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.cast.M2
    public final void a(Object obj) {
        if (!e(obj)) {
            return;
        }
        int i8 = 0;
        if (obj instanceof AbstractC2457i2) {
            AbstractC2457i2 abstractC2457i2 = (AbstractC2457i2) obj;
            abstractC2457i2.f();
            abstractC2457i2.zza = 0;
            abstractC2457i2.d();
        }
        while (true) {
            int[] iArr = this.f22446a;
            if (i8 >= iArr.length) {
                this.f22452g.getClass();
                Q2.c(obj);
                return;
            }
            int iJ = j(i8);
            int i9 = 1048575 & iJ;
            int i10 = i(iJ);
            long j8 = i9;
            Unsafe unsafe = f22445i;
            if (i10 != 9) {
                if (i10 != 60 && i10 != 68) {
                    switch (i10) {
                        case 17:
                            if (r(i8, obj)) {
                                l(i8).a(unsafe.getObject(obj, j8));
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
                            this.f22451f.a(obj, j8);
                            break;
                        case 50:
                            Object object = unsafe.getObject(obj, j8);
                            if (object != null) {
                                com.google.protobuf.U2.u(object);
                                throw null;
                            }
                            break;
                            break;
                    }
                } else if (f(iArr[i8], obj, i8)) {
                    l(i8).a(unsafe.getObject(obj, j8));
                }
            } else if (r(i8, obj)) {
                l(i8).a(unsafe.getObject(obj, j8));
            }
            i8 += 3;
        }
    }

    @Override // com.google.android.gms.internal.cast.M2
    public final void b(Object obj, Object obj2) {
        if (!e(obj)) {
            throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
        }
        obj2.getClass();
        int i8 = 0;
        while (true) {
            int[] iArr = this.f22446a;
            if (i8 >= iArr.length) {
                N2.r(this.f22452g, obj, obj2);
                return;
            }
            int iJ = j(i8);
            int i9 = iJ & 1048575;
            int i10 = i(iJ);
            int i11 = iArr[i8];
            long j8 = i9;
            switch (i10) {
                case 0:
                    if (r(i8, obj2)) {
                        V2 v5 = W2.f22551c;
                        v5.e(obj, j8, v5.a(obj2, j8));
                        p(i8, obj);
                    }
                    break;
                case 1:
                    if (r(i8, obj2)) {
                        V2 v7 = W2.f22551c;
                        v7.f(obj, j8, v7.b(obj2, j8));
                        p(i8, obj);
                    }
                    break;
                case 2:
                    if (r(i8, obj2)) {
                        W2.l(obj, j8, W2.g(obj2, j8));
                        p(i8, obj);
                    }
                    break;
                case 3:
                    if (r(i8, obj2)) {
                        W2.l(obj, j8, W2.g(obj2, j8));
                        p(i8, obj);
                    }
                    break;
                case 4:
                    if (r(i8, obj2)) {
                        W2.k(obj, j8, W2.f(obj2, j8));
                        p(i8, obj);
                    }
                    break;
                case 5:
                    if (r(i8, obj2)) {
                        W2.l(obj, j8, W2.g(obj2, j8));
                        p(i8, obj);
                    }
                    break;
                case 6:
                    if (r(i8, obj2)) {
                        W2.k(obj, j8, W2.f(obj2, j8));
                        p(i8, obj);
                    }
                    break;
                case 7:
                    if (r(i8, obj2)) {
                        V2 v8 = W2.f22551c;
                        v8.c(obj, j8, v8.g(obj2, j8));
                        p(i8, obj);
                    }
                    break;
                case 8:
                    if (r(i8, obj2)) {
                        W2.m(obj, j8, W2.i(obj2, j8));
                        p(i8, obj);
                    }
                    break;
                case 9:
                    n(i8, obj, obj2);
                    break;
                case 10:
                    if (r(i8, obj2)) {
                        W2.m(obj, j8, W2.i(obj2, j8));
                        p(i8, obj);
                    }
                    break;
                case 11:
                    if (r(i8, obj2)) {
                        W2.k(obj, j8, W2.f(obj2, j8));
                        p(i8, obj);
                    }
                    break;
                case 12:
                    if (r(i8, obj2)) {
                        W2.k(obj, j8, W2.f(obj2, j8));
                        p(i8, obj);
                    }
                    break;
                case 13:
                    if (r(i8, obj2)) {
                        W2.k(obj, j8, W2.f(obj2, j8));
                        p(i8, obj);
                    }
                    break;
                case 14:
                    if (r(i8, obj2)) {
                        W2.l(obj, j8, W2.g(obj2, j8));
                        p(i8, obj);
                    }
                    break;
                case 15:
                    if (r(i8, obj2)) {
                        W2.k(obj, j8, W2.f(obj2, j8));
                        p(i8, obj);
                    }
                    break;
                case 16:
                    if (r(i8, obj2)) {
                        W2.l(obj, j8, W2.g(obj2, j8));
                        p(i8, obj);
                    }
                    break;
                case 17:
                    n(i8, obj, obj2);
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
                    this.f22451f.b(obj, j8, obj2);
                    break;
                case 50:
                    Class cls = N2.f22505a;
                    Object objI = W2.i(obj, j8);
                    Object objI2 = W2.i(obj2, j8);
                    A0.O.I(objI);
                    A0.O.I(objI2);
                    throw null;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (f(i11, obj2, i8)) {
                        W2.m(obj, j8, W2.i(obj2, j8));
                        W2.k(obj, iArr[i8 + 2] & 1048575, i11);
                    }
                    break;
                case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                    o(i8, obj, obj2);
                    break;
                case 61:
                case 62:
                case 63:
                case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                case 65:
                case 66:
                case 67:
                    if (f(i11, obj2, i8)) {
                        W2.m(obj, j8, W2.i(obj2, j8));
                        W2.k(obj, iArr[i8 + 2] & 1048575, i11);
                    }
                    break;
                case 68:
                    o(i8, obj, obj2);
                    break;
            }
            i8 += 3;
        }
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0096  */
    /* JADX WARN: Code duplicated, block: B:41:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:44:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:47:0x00bb A[LOOP:1: B:42:0x00aa->B:47:0x00bb, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:59:0x00ba A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:0x00df A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.cast.M2
    public final boolean c(Object obj) {
        int i8;
        int i9;
        List list;
        M2 m2L;
        int i10;
        int i11 = 1048575;
        int i12 = 0;
        int i13 = 0;
        while (i13 < this.f22450e) {
            int i14 = this.f22449d[i13];
            int[] iArr = this.f22446a;
            int i15 = iArr[i14];
            int iJ = j(i14);
            int i16 = iArr[i14 + 2];
            int i17 = i16 & 1048575;
            int i18 = 1 << (i16 >>> 20);
            if (i17 != i11) {
                if (i17 != 1048575) {
                    i12 = f22445i.getInt(obj, i17);
                }
                i9 = i12;
                i8 = i17;
            } else {
                i8 = i11;
                i9 = i12;
            }
            if ((268435456 & iJ) != 0 && !s(obj, i14, i8, i9, i18)) {
                return false;
            }
            int i19 = i(iJ);
            if (i19 == 9 || i19 == 17) {
                if (s(obj, i14, i8, i9, i18) && !l(i14).c(W2.i(obj, iJ & 1048575))) {
                    return false;
                }
            } else if (i19 == 27) {
                list = (List) W2.i(obj, iJ & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    m2L = l(i14);
                    for (i10 = 0; i10 < list.size(); i10++) {
                        if (!m2L.c(list.get(i10))) {
                            return false;
                        }
                    }
                }
            } else if (i19 == 60 || i19 == 68) {
                if (f(i15, obj, i14) && !l(i14).c(W2.i(obj, iJ & 1048575))) {
                    return false;
                }
            } else if (i19 == 49) {
                list = (List) W2.i(obj, iJ & 1048575);
                if (list.isEmpty()) {
                    m2L = l(i14);
                    while (i10 < list.size()) {
                        if (!m2L.c(list.get(i10))) {
                            return false;
                        }
                    }
                } else {
                    continue;
                }
            } else if (i19 == 50) {
                A0.O.I(W2.i(obj, iJ & 1048575));
                throw null;
            }
            i13++;
            i11 = i8;
            i12 = i9;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.cast.M2
    public final void d(Object obj, C2433c2 c2433c2) throws I0.u {
        int i8;
        int i9;
        int i10;
        int i11 = 1048575;
        boolean z7 = false;
        int i12 = 1048575;
        int i13 = 0;
        int i14 = 0;
        while (true) {
            int[] iArr = this.f22446a;
            if (i14 >= iArr.length) {
                this.f22452g.getClass();
                Q2.b(obj);
                return;
            }
            int iJ = j(i14);
            int i15 = i(iJ);
            int i16 = iArr[i14];
            Unsafe unsafe = f22445i;
            if (i15 <= 17) {
                int i17 = iArr[i14 + 2];
                int i18 = i17 & i11;
                if (i18 != i12) {
                    i13 = i18 == i11 ? 0 : unsafe.getInt(obj, i18);
                    i12 = i18;
                }
                i9 = i13;
                i10 = 1 << (i17 >>> 20);
                i8 = i12;
            } else {
                i8 = i12;
                i9 = i13;
                i10 = 0;
            }
            long j8 = iJ & i11;
            switch (i15) {
                case 0:
                    if (s(obj, i14, i8, i9, i10)) {
                        c2433c2.h(i16, W2.d(obj, j8));
                    }
                    break;
                case 1:
                    if (s(obj, i14, i8, i9, i10)) {
                        c2433c2.l(i16, W2.e(obj, j8));
                    }
                    break;
                case 2:
                    if (s(obj, i14, i8, i9, i10)) {
                        c2433c2.o(i16, unsafe.getLong(obj, j8));
                    }
                    break;
                case 3:
                    if (s(obj, i14, i8, i9, i10)) {
                        c2433c2.d(i16, unsafe.getLong(obj, j8));
                    }
                    break;
                case 4:
                    if (s(obj, i14, i8, i9, i10)) {
                        c2433c2.n(i16, unsafe.getInt(obj, j8));
                    }
                    break;
                case 5:
                    if (s(obj, i14, i8, i9, i10)) {
                        c2433c2.k(i16, unsafe.getLong(obj, j8));
                    }
                    break;
                case 6:
                    if (s(obj, i14, i8, i9, i10)) {
                        c2433c2.j(i16, unsafe.getInt(obj, j8));
                    }
                    break;
                case 7:
                    if (s(obj, i14, i8, i9, i10)) {
                        c2433c2.e(i16, W2.q(obj, j8));
                    }
                    break;
                case 8:
                    if (s(obj, i14, i8, i9, i10)) {
                        Object object = unsafe.getObject(obj, j8);
                        if (object instanceof String) {
                            c2433c2.f22664a.n0(i16, (String) object);
                        } else {
                            c2433c2.f(i16, (Z1) object);
                        }
                    }
                    break;
                case 9:
                    if (s(obj, i14, i8, i9, i10)) {
                        c2433c2.p(i16, l(i14), unsafe.getObject(obj, j8));
                    }
                    break;
                case 10:
                    if (s(obj, i14, i8, i9, i10)) {
                        c2433c2.f(i16, (Z1) unsafe.getObject(obj, j8));
                    }
                    break;
                case 11:
                    if (s(obj, i14, i8, i9, i10)) {
                        c2433c2.c(i16, unsafe.getInt(obj, j8));
                    }
                    break;
                case 12:
                    if (s(obj, i14, i8, i9, i10)) {
                        c2433c2.i(i16, unsafe.getInt(obj, j8));
                    }
                    break;
                case 13:
                    if (s(obj, i14, i8, i9, i10)) {
                        c2433c2.q(i16, unsafe.getInt(obj, j8));
                    }
                    break;
                case 14:
                    if (s(obj, i14, i8, i9, i10)) {
                        c2433c2.r(i16, unsafe.getLong(obj, j8));
                    }
                    break;
                case 15:
                    if (s(obj, i14, i8, i9, i10)) {
                        c2433c2.s(i16, unsafe.getInt(obj, j8));
                    }
                    break;
                case 16:
                    if (s(obj, i14, i8, i9, i10)) {
                        c2433c2.a(i16, unsafe.getLong(obj, j8));
                    }
                    break;
                case 17:
                    if (s(obj, i14, i8, i9, i10)) {
                        c2433c2.m(i16, l(i14), unsafe.getObject(obj, j8));
                    }
                    break;
                case 18:
                    N2.t(iArr[i14], (List) unsafe.getObject(obj, j8), c2433c2, z7);
                    break;
                case 19:
                    N2.x(iArr[i14], (List) unsafe.getObject(obj, j8), c2433c2, z7);
                    break;
                case 20:
                    N2.z(iArr[i14], (List) unsafe.getObject(obj, j8), c2433c2, z7);
                    break;
                case 21:
                    N2.d(iArr[i14], (List) unsafe.getObject(obj, j8), c2433c2, z7);
                    break;
                case 22:
                    N2.y(iArr[i14], (List) unsafe.getObject(obj, j8), c2433c2, z7);
                    break;
                case 23:
                    N2.w(iArr[i14], (List) unsafe.getObject(obj, j8), c2433c2, z7);
                    break;
                case 24:
                    N2.v(iArr[i14], (List) unsafe.getObject(obj, j8), c2433c2, z7);
                    break;
                case 25:
                    N2.s(iArr[i14], (List) unsafe.getObject(obj, j8), c2433c2, z7);
                    break;
                case Service.BILLING_FIELD_NUMBER /* 26 */:
                    int i19 = iArr[i14];
                    List list = (List) unsafe.getObject(obj, j8);
                    Class cls = N2.f22505a;
                    if (list != null && !list.isEmpty()) {
                        c2433c2.b(i19, list);
                    }
                    break;
                case 27:
                    int i20 = iArr[i14];
                    List list2 = (List) unsafe.getObject(obj, j8);
                    M2 m2L = l(i14);
                    Class cls2 = N2.f22505a;
                    if (list2 != null && !list2.isEmpty()) {
                        for (int i21 = 0; i21 < list2.size(); i21++) {
                            c2433c2.p(i20, m2L, list2.get(i21));
                        }
                    }
                    break;
                case Service.MONITORING_FIELD_NUMBER /* 28 */:
                    int i22 = iArr[i14];
                    List list3 = (List) unsafe.getObject(obj, j8);
                    Class cls3 = N2.f22505a;
                    if (list3 != null && !list3.isEmpty()) {
                        c2433c2.g(i22, list3);
                    }
                    break;
                case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                    N2.c(iArr[i14], (List) unsafe.getObject(obj, j8), c2433c2, z7);
                    break;
                case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                    N2.u(iArr[i14], (List) unsafe.getObject(obj, j8), c2433c2, z7);
                    break;
                case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                    N2.A(iArr[i14], (List) unsafe.getObject(obj, j8), c2433c2, z7);
                    break;
                case 32:
                    N2.B(iArr[i14], (List) unsafe.getObject(obj, j8), c2433c2, z7);
                    break;
                case 33:
                    N2.a(iArr[i14], (List) unsafe.getObject(obj, j8), c2433c2, z7);
                    break;
                case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                    N2.b(iArr[i14], (List) unsafe.getObject(obj, j8), c2433c2, z7);
                    break;
                case 35:
                    N2.t(iArr[i14], (List) unsafe.getObject(obj, j8), c2433c2, true);
                    break;
                case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                    N2.x(iArr[i14], (List) unsafe.getObject(obj, j8), c2433c2, true);
                    break;
                case 37:
                    N2.z(iArr[i14], (List) unsafe.getObject(obj, j8), c2433c2, true);
                    break;
                case 38:
                    N2.d(iArr[i14], (List) unsafe.getObject(obj, j8), c2433c2, true);
                    break;
                case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                    N2.y(iArr[i14], (List) unsafe.getObject(obj, j8), c2433c2, true);
                    break;
                case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                    N2.w(iArr[i14], (List) unsafe.getObject(obj, j8), c2433c2, true);
                    break;
                case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
                    N2.v(iArr[i14], (List) unsafe.getObject(obj, j8), c2433c2, true);
                    break;
                case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                    N2.s(iArr[i14], (List) unsafe.getObject(obj, j8), c2433c2, true);
                    break;
                case 43:
                    N2.c(iArr[i14], (List) unsafe.getObject(obj, j8), c2433c2, true);
                    break;
                case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                    N2.u(iArr[i14], (List) unsafe.getObject(obj, j8), c2433c2, true);
                    break;
                case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                    N2.A(iArr[i14], (List) unsafe.getObject(obj, j8), c2433c2, true);
                    break;
                case 46:
                    N2.B(iArr[i14], (List) unsafe.getObject(obj, j8), c2433c2, true);
                    break;
                case 47:
                    N2.a(iArr[i14], (List) unsafe.getObject(obj, j8), c2433c2, true);
                    break;
                case 48:
                    N2.b(iArr[i14], (List) unsafe.getObject(obj, j8), c2433c2, true);
                    break;
                case 49:
                    int i23 = iArr[i14];
                    List list4 = (List) unsafe.getObject(obj, j8);
                    M2 m2L2 = l(i14);
                    Class cls4 = N2.f22505a;
                    if (list4 != null && !list4.isEmpty()) {
                        for (int i24 = 0; i24 < list4.size(); i24++) {
                            c2433c2.m(i23, m2L2, list4.get(i24));
                        }
                    }
                    break;
                case 50:
                    if (unsafe.getObject(obj, j8) != null) {
                        int i25 = i14 / 3;
                        A0.O.I(this.f22447b[i25 + i25]);
                        throw null;
                    }
                    break;
                    break;
                case 51:
                    if (f(i16, obj, i14)) {
                        c2433c2.h(i16, ((Double) W2.i(obj, j8)).doubleValue());
                    }
                    break;
                case 52:
                    if (f(i16, obj, i14)) {
                        c2433c2.l(i16, ((Float) W2.i(obj, j8)).floatValue());
                    }
                    break;
                case 53:
                    if (f(i16, obj, i14)) {
                        c2433c2.o(i16, k(obj, j8));
                    }
                    break;
                case 54:
                    if (f(i16, obj, i14)) {
                        c2433c2.d(i16, k(obj, j8));
                    }
                    break;
                case 55:
                    if (f(i16, obj, i14)) {
                        c2433c2.n(i16, h(obj, j8));
                    }
                    break;
                case 56:
                    if (f(i16, obj, i14)) {
                        c2433c2.k(i16, k(obj, j8));
                    }
                    break;
                case 57:
                    if (f(i16, obj, i14)) {
                        c2433c2.j(i16, h(obj, j8));
                    }
                    break;
                case 58:
                    if (f(i16, obj, i14)) {
                        c2433c2.e(i16, ((Boolean) W2.i(obj, j8)).booleanValue());
                    }
                    break;
                case 59:
                    if (f(i16, obj, i14)) {
                        Object object2 = unsafe.getObject(obj, j8);
                        if (object2 instanceof String) {
                            c2433c2.f22664a.n0(i16, (String) object2);
                        } else {
                            c2433c2.f(i16, (Z1) object2);
                        }
                    }
                    break;
                case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                    if (f(i16, obj, i14)) {
                        c2433c2.p(i16, l(i14), unsafe.getObject(obj, j8));
                    }
                    break;
                case 61:
                    if (f(i16, obj, i14)) {
                        c2433c2.f(i16, (Z1) unsafe.getObject(obj, j8));
                    }
                    break;
                case 62:
                    if (f(i16, obj, i14)) {
                        c2433c2.c(i16, h(obj, j8));
                    }
                    break;
                case 63:
                    if (f(i16, obj, i14)) {
                        c2433c2.i(i16, h(obj, j8));
                    }
                    break;
                case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                    if (f(i16, obj, i14)) {
                        c2433c2.q(i16, h(obj, j8));
                    }
                    break;
                case 65:
                    if (f(i16, obj, i14)) {
                        c2433c2.r(i16, k(obj, j8));
                    }
                    break;
                case 66:
                    if (f(i16, obj, i14)) {
                        c2433c2.s(i16, h(obj, j8));
                    }
                    break;
                case 67:
                    if (f(i16, obj, i14)) {
                        c2433c2.a(i16, k(obj, j8));
                    }
                    break;
                case 68:
                    if (f(i16, obj, i14)) {
                        c2433c2.m(i16, l(i14), unsafe.getObject(obj, j8));
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

    public final boolean f(int i8, Object obj, int i9) {
        return W2.f(obj, (long) (this.f22446a[i9 + 2] & 1048575)) == i8;
    }

    public final int j(int i8) {
        return this.f22446a[i8 + 1];
    }

    public final M2 l(int i8) {
        int i9 = i8 / 3;
        int i10 = i9 + i9;
        Object[] objArr = this.f22447b;
        M2 m7 = (M2) objArr[i10];
        if (m7 != null) {
            return m7;
        }
        M2 m2A = J2.f22476c.a((Class) objArr[i10 + 1]);
        objArr[i10] = m2A;
        return m2A;
    }

    public final void n(int i8, Object obj, Object obj2) {
        if (r(i8, obj2)) {
            long j8 = j(i8) & 1048575;
            Unsafe unsafe = f22445i;
            Object object = unsafe.getObject(obj2, j8);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.f22446a[i8] + " is present but null: " + obj2.toString());
            }
            M2 m2L = l(i8);
            if (!r(i8, obj)) {
                if (e(object)) {
                    AbstractC2457i2 abstractC2457i2Zzc = m2L.zzc();
                    m2L.b(abstractC2457i2Zzc, object);
                    unsafe.putObject(obj, j8, abstractC2457i2Zzc);
                } else {
                    unsafe.putObject(obj, j8, object);
                }
                p(i8, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, j8);
            if (!e(object2)) {
                AbstractC2457i2 abstractC2457i2Zzc2 = m2L.zzc();
                m2L.b(abstractC2457i2Zzc2, object2);
                unsafe.putObject(obj, j8, abstractC2457i2Zzc2);
                object2 = abstractC2457i2Zzc2;
            }
            m2L.b(object2, object);
        }
    }

    public final void o(int i8, Object obj, Object obj2) {
        int[] iArr = this.f22446a;
        int i9 = iArr[i8];
        if (f(i9, obj2, i8)) {
            long j8 = j(i8) & 1048575;
            Unsafe unsafe = f22445i;
            Object object = unsafe.getObject(obj2, j8);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + iArr[i8] + " is present but null: " + obj2.toString());
            }
            M2 m2L = l(i8);
            if (!f(i9, obj, i8)) {
                if (e(object)) {
                    AbstractC2457i2 abstractC2457i2Zzc = m2L.zzc();
                    m2L.b(abstractC2457i2Zzc, object);
                    unsafe.putObject(obj, j8, abstractC2457i2Zzc);
                } else {
                    unsafe.putObject(obj, j8, object);
                }
                W2.k(obj, iArr[i8 + 2] & 1048575, i9);
                return;
            }
            Object object2 = unsafe.getObject(obj, j8);
            if (!e(object2)) {
                AbstractC2457i2 abstractC2457i2Zzc2 = m2L.zzc();
                m2L.b(abstractC2457i2Zzc2, object2);
                unsafe.putObject(obj, j8, abstractC2457i2Zzc2);
                object2 = abstractC2457i2Zzc2;
            }
            m2L.b(object2, object);
        }
    }

    public final void p(int i8, Object obj) {
        int i9 = this.f22446a[i8 + 2];
        long j8 = 1048575 & i9;
        if (j8 == 1048575) {
            return;
        }
        W2.k(obj, j8, (1 << (i9 >>> 20)) | W2.f(obj, j8));
    }

    public final boolean q(int i8, Object obj, Object obj2) {
        return r(i8, obj) == r(i8, obj2);
    }

    public final boolean r(int i8, Object obj) {
        int i9 = this.f22446a[i8 + 2];
        long j8 = i9 & 1048575;
        if (j8 != 1048575) {
            return ((1 << (i9 >>> 20)) & W2.f(obj, j8)) != 0;
        }
        int iJ = j(i8);
        long j9 = iJ & 1048575;
        switch (i(iJ)) {
            case 0:
                return Double.doubleToRawLongBits(W2.f22551c.a(obj, j9)) != 0;
            case 1:
                return Float.floatToRawIntBits(W2.f22551c.b(obj, j9)) != 0;
            case 2:
                return W2.g(obj, j9) != 0;
            case 3:
                return W2.g(obj, j9) != 0;
            case 4:
                return W2.f(obj, j9) != 0;
            case 5:
                return W2.g(obj, j9) != 0;
            case 6:
                return W2.f(obj, j9) != 0;
            case 7:
                return W2.f22551c.g(obj, j9);
            case 8:
                Object objI = W2.i(obj, j9);
                if (objI instanceof String) {
                    return !((String) objI).isEmpty();
                }
                if (objI instanceof Z1) {
                    return !Z1.f22595H.equals(objI);
                }
                throw new IllegalArgumentException();
            case 9:
                return W2.i(obj, j9) != null;
            case 10:
                return !Z1.f22595H.equals(W2.i(obj, j9));
            case 11:
                return W2.f(obj, j9) != 0;
            case 12:
                return W2.f(obj, j9) != 0;
            case 13:
                return W2.f(obj, j9) != 0;
            case 14:
                return W2.g(obj, j9) != 0;
            case 15:
                return W2.f(obj, j9) != 0;
            case 16:
                return W2.g(obj, j9) != 0;
            case 17:
                return W2.i(obj, j9) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    public final boolean s(Object obj, int i8, int i9, int i10, int i11) {
        if (i9 == 1048575) {
            return r(i8, obj);
        }
        return (i10 & i11) != 0;
    }

    /* JADX WARN: Code duplicated, block: B:133:0x0376  */
    /* JADX WARN: Code duplicated, block: B:186:0x04bc  */
    @Override // com.google.android.gms.internal.cast.M2
    public final int zza(Object obj) {
        int i8;
        int i9;
        int i10;
        int iM;
        int iW0;
        int iX0;
        int iW1;
        int size;
        int iQ;
        int iW2;
        int iW3;
        int iW4;
        int iW5;
        int iW6;
        int iS0;
        int i11 = 1048575;
        int i12 = 1048575;
        int i13 = 0;
        int i14 = 0;
        int iY = 0;
        while (true) {
            int[] iArr = this.f22446a;
            if (i14 >= iArr.length) {
                this.f22452g.getClass();
                return Q2.a(Q2.b(obj)) + iY;
            }
            int iJ = j(i14);
            int i15 = i(iJ);
            int i16 = iArr[i14];
            int i17 = iArr[i14 + 2];
            int i18 = i17 & i11;
            Unsafe unsafe = f22445i;
            if (i15 <= 17) {
                if (i18 != i12) {
                    i13 = i18 == i11 ? 0 : unsafe.getInt(obj, i18);
                    i12 = i18;
                }
                i8 = i12;
                i9 = i13;
                i10 = 1 << (i17 >>> 20);
            } else {
                i8 = i12;
                i9 = i13;
                i10 = 0;
            }
            int i19 = iJ & i11;
            if (i15 >= EnumC2445f2.f22732H.zza()) {
                EnumC2445f2.f22733I.getClass();
            }
            long j8 = i19;
            switch (i15) {
                case 0:
                    if (s(obj, i14, i8, i9, i10)) {
                        iY = AbstractC2090uc.y(i16 << 3, 8, iY);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 1:
                    if (s(obj, i14, i8, i9, i10)) {
                        iY = AbstractC2090uc.y(i16 << 3, 4, iY);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 2:
                    if (s(obj, i14, i8, i9, i10)) {
                        iY = AbstractC2090uc.y(i16 << 3, C2429b2.x0(unsafe.getLong(obj, j8)), iY);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 3:
                    if (s(obj, i14, i8, i9, i10)) {
                        iY = AbstractC2090uc.y(i16 << 3, C2429b2.x0(unsafe.getLong(obj, j8)), iY);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 4:
                    if (s(obj, i14, i8, i9, i10)) {
                        iY = AbstractC2090uc.y(i16 << 3, C2429b2.t0(unsafe.getInt(obj, j8)), iY);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 5:
                    if (s(obj, i14, i8, i9, i10)) {
                        iY = AbstractC2090uc.y(i16 << 3, 8, iY);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 6:
                    if (s(obj, i14, i8, i9, i10)) {
                        iY = AbstractC2090uc.y(i16 << 3, 4, iY);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 7:
                    if (s(obj, i14, i8, i9, i10)) {
                        iY = AbstractC2090uc.y(i16 << 3, 1, iY);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 8:
                    if (s(obj, i14, i8, i9, i10)) {
                        int i20 = i16 << 3;
                        Object object = unsafe.getObject(obj, j8);
                        if (object instanceof Z1) {
                            Logger logger = C2429b2.f22649g;
                            int iN = ((Z1) object).n();
                            iY = AbstractC2090uc.y(i20, C2429b2.w0(iN) + iN, iY);
                        } else {
                            iY = AbstractC2090uc.y(i20, C2429b2.v0((String) object), iY);
                        }
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 9:
                    if (s(obj, i14, i8, i9, i10)) {
                        iM = N2.m(i16, l(i14), unsafe.getObject(obj, j8));
                        iY += iM;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 10:
                    if (s(obj, i14, i8, i9, i10)) {
                        Z1 z7 = (Z1) unsafe.getObject(obj, j8);
                        Logger logger2 = C2429b2.f22649g;
                        int iN2 = z7.n();
                        iY = AbstractC2090uc.y(i16 << 3, C2429b2.w0(iN2) + iN2, iY);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 11:
                    if (s(obj, i14, i8, i9, i10)) {
                        iY = AbstractC2090uc.y(i16 << 3, C2429b2.w0(unsafe.getInt(obj, j8)), iY);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 12:
                    if (s(obj, i14, i8, i9, i10)) {
                        iY = AbstractC2090uc.y(i16 << 3, C2429b2.t0(unsafe.getInt(obj, j8)), iY);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 13:
                    if (s(obj, i14, i8, i9, i10)) {
                        iY = AbstractC2090uc.y(i16 << 3, 4, iY);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 14:
                    if (s(obj, i14, i8, i9, i10)) {
                        iY = AbstractC2090uc.y(i16 << 3, 8, iY);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 15:
                    if (s(obj, i14, i8, i9, i10)) {
                        int i21 = unsafe.getInt(obj, j8);
                        iY = AbstractC2090uc.y((i21 >> 31) ^ (i21 + i21), C2429b2.w0(i16 << 3), iY);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 16:
                    if (s(obj, i14, i8, i9, i10)) {
                        long j9 = unsafe.getLong(obj, j8);
                        iW0 = C2429b2.w0(i16 << 3);
                        iX0 = C2429b2.x0((j9 >> 63) ^ (j9 + j9));
                        iY += iX0 + iW0;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 17:
                    if (s(obj, i14, i8, i9, i10)) {
                        iM = C2429b2.s0(i16, (U1) unsafe.getObject(obj, j8), l(i14));
                        iY += iM;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 18:
                    iM = N2.i(i16, (List) unsafe.getObject(obj, j8));
                    iY += iM;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 19:
                    iM = N2.g(i16, (List) unsafe.getObject(obj, j8));
                    iY += iM;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 20:
                    List list = (List) unsafe.getObject(obj, j8);
                    Class cls = N2.f22505a;
                    if (list.size() == 0) {
                        iW1 = 0;
                    } else {
                        iW1 = (C2429b2.w0(i16 << 3) * list.size()) + N2.l(list);
                    }
                    iY += iW1;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 21:
                    List list2 = (List) unsafe.getObject(obj, j8);
                    Class cls2 = N2.f22505a;
                    size = list2.size();
                    if (size == 0) {
                        iW3 = 0;
                    } else {
                        iQ = N2.q(list2);
                        iW2 = C2429b2.w0(i16 << 3);
                        iW3 = (iW2 * size) + iQ;
                    }
                    iY += iW3;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 22:
                    List list3 = (List) unsafe.getObject(obj, j8);
                    Class cls3 = N2.f22505a;
                    size = list3.size();
                    if (size == 0) {
                        iW3 = 0;
                    } else {
                        iQ = N2.k(list3);
                        iW2 = C2429b2.w0(i16 << 3);
                        iW3 = (iW2 * size) + iQ;
                    }
                    iY += iW3;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 23:
                    iM = N2.i(i16, (List) unsafe.getObject(obj, j8));
                    iY += iM;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 24:
                    iM = N2.g(i16, (List) unsafe.getObject(obj, j8));
                    iY += iM;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 25:
                    List list4 = (List) unsafe.getObject(obj, j8);
                    Class cls4 = N2.f22505a;
                    int size2 = list4.size();
                    if (size2 == 0) {
                        iW1 = 0;
                    } else {
                        iW1 = (C2429b2.w0(i16 << 3) + 1) * size2;
                    }
                    iY += iW1;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case Service.BILLING_FIELD_NUMBER /* 26 */:
                    List list5 = (List) unsafe.getObject(obj, j8);
                    Class cls5 = N2.f22505a;
                    int size3 = list5.size();
                    if (size3 == 0) {
                        iW3 = 0;
                    } else {
                        boolean z8 = list5 instanceof InterfaceC2492r2;
                        iW3 = C2429b2.w0(i16 << 3) * size3;
                        if (z8) {
                            InterfaceC2492r2 interfaceC2492r2 = (InterfaceC2492r2) list5;
                            for (int i22 = 0; i22 < size3; i22++) {
                                Object objD = interfaceC2492r2.d(i22);
                                if (objD instanceof Z1) {
                                    int iN3 = ((Z1) objD).n();
                                    iW3 = AbstractC2090uc.y(iN3, iN3, iW3);
                                } else {
                                    iW3 = C2429b2.v0((String) objD) + iW3;
                                }
                            }
                        } else {
                            for (int i23 = 0; i23 < size3; i23++) {
                                Object obj2 = list5.get(i23);
                                if (obj2 instanceof Z1) {
                                    int iN4 = ((Z1) obj2).n();
                                    iW3 = AbstractC2090uc.y(iN4, iN4, iW3);
                                } else {
                                    iW3 = C2429b2.v0((String) obj2) + iW3;
                                }
                            }
                        }
                    }
                    iY += iW3;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 27:
                    List list6 = (List) unsafe.getObject(obj, j8);
                    M2 m2L = l(i14);
                    Class cls6 = N2.f22505a;
                    int size4 = list6.size();
                    if (size4 == 0) {
                        iW4 = 0;
                    } else {
                        iW4 = C2429b2.w0(i16 << 3) * size4;
                        for (int i24 = 0; i24 < size4; i24++) {
                            iW4 += C2429b2.u0((U1) list6.get(i24), m2L);
                        }
                    }
                    iY += iW4;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case Service.MONITORING_FIELD_NUMBER /* 28 */:
                    List list7 = (List) unsafe.getObject(obj, j8);
                    Class cls7 = N2.f22505a;
                    int size5 = list7.size();
                    if (size5 == 0) {
                        iW3 = 0;
                    } else {
                        iW3 = C2429b2.w0(i16 << 3) * size5;
                        for (int i25 = 0; i25 < list7.size(); i25++) {
                            int iN5 = ((Z1) list7.get(i25)).n();
                            iW3 = AbstractC2090uc.y(iN5, iN5, iW3);
                        }
                    }
                    iY += iW3;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                    List list8 = (List) unsafe.getObject(obj, j8);
                    Class cls8 = N2.f22505a;
                    size = list8.size();
                    if (size == 0) {
                        iW3 = 0;
                    } else {
                        iQ = N2.p(list8);
                        iW2 = C2429b2.w0(i16 << 3);
                        iW3 = (iW2 * size) + iQ;
                    }
                    iY += iW3;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                    List list9 = (List) unsafe.getObject(obj, j8);
                    Class cls9 = N2.f22505a;
                    size = list9.size();
                    if (size == 0) {
                        iW3 = 0;
                    } else {
                        iQ = N2.f(list9);
                        iW2 = C2429b2.w0(i16 << 3);
                        iW3 = (iW2 * size) + iQ;
                    }
                    iY += iW3;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                    iM = N2.g(i16, (List) unsafe.getObject(obj, j8));
                    iY += iM;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 32:
                    iM = N2.i(i16, (List) unsafe.getObject(obj, j8));
                    iY += iM;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 33:
                    List list10 = (List) unsafe.getObject(obj, j8);
                    Class cls10 = N2.f22505a;
                    size = list10.size();
                    if (size == 0) {
                        iW3 = 0;
                    } else {
                        iQ = N2.n(list10);
                        iW2 = C2429b2.w0(i16 << 3);
                        iW3 = (iW2 * size) + iQ;
                    }
                    iY += iW3;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                    List list11 = (List) unsafe.getObject(obj, j8);
                    Class cls11 = N2.f22505a;
                    size = list11.size();
                    if (size == 0) {
                        iW3 = 0;
                    } else {
                        iQ = N2.o(list11);
                        iW2 = C2429b2.w0(i16 << 3);
                        iW3 = (iW2 * size) + iQ;
                    }
                    iY += iW3;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 35:
                    iW0 = N2.j((List) unsafe.getObject(obj, j8));
                    if (iW0 > 0) {
                        iW5 = C2429b2.w0(iW0);
                        iW6 = C2429b2.w0(i16 << 3);
                        iX0 = iW6 + iW5;
                        iY += iX0 + iW0;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                    iW0 = N2.h((List) unsafe.getObject(obj, j8));
                    if (iW0 > 0) {
                        iW5 = C2429b2.w0(iW0);
                        iW6 = C2429b2.w0(i16 << 3);
                        iX0 = iW6 + iW5;
                        iY += iX0 + iW0;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 37:
                    iW0 = N2.l((List) unsafe.getObject(obj, j8));
                    if (iW0 > 0) {
                        iW5 = C2429b2.w0(iW0);
                        iW6 = C2429b2.w0(i16 << 3);
                        iX0 = iW6 + iW5;
                        iY += iX0 + iW0;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 38:
                    iW0 = N2.q((List) unsafe.getObject(obj, j8));
                    if (iW0 > 0) {
                        iW5 = C2429b2.w0(iW0);
                        iW6 = C2429b2.w0(i16 << 3);
                        iX0 = iW6 + iW5;
                        iY += iX0 + iW0;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                    iW0 = N2.k((List) unsafe.getObject(obj, j8));
                    if (iW0 > 0) {
                        iW5 = C2429b2.w0(iW0);
                        iW6 = C2429b2.w0(i16 << 3);
                        iX0 = iW6 + iW5;
                        iY += iX0 + iW0;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                    iW0 = N2.j((List) unsafe.getObject(obj, j8));
                    if (iW0 > 0) {
                        iW5 = C2429b2.w0(iW0);
                        iW6 = C2429b2.w0(i16 << 3);
                        iX0 = iW6 + iW5;
                        iY += iX0 + iW0;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
                    iW0 = N2.h((List) unsafe.getObject(obj, j8));
                    if (iW0 > 0) {
                        iW5 = C2429b2.w0(iW0);
                        iW6 = C2429b2.w0(i16 << 3);
                        iX0 = iW6 + iW5;
                        iY += iX0 + iW0;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                    List list12 = (List) unsafe.getObject(obj, j8);
                    Class cls12 = N2.f22505a;
                    iW0 = list12.size();
                    if (iW0 > 0) {
                        iW5 = C2429b2.w0(iW0);
                        iW6 = C2429b2.w0(i16 << 3);
                        iX0 = iW6 + iW5;
                        iY += iX0 + iW0;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 43:
                    iW0 = N2.p((List) unsafe.getObject(obj, j8));
                    if (iW0 > 0) {
                        iW5 = C2429b2.w0(iW0);
                        iW6 = C2429b2.w0(i16 << 3);
                        iX0 = iW6 + iW5;
                        iY += iX0 + iW0;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                    iW0 = N2.f((List) unsafe.getObject(obj, j8));
                    if (iW0 > 0) {
                        iW5 = C2429b2.w0(iW0);
                        iW6 = C2429b2.w0(i16 << 3);
                        iX0 = iW6 + iW5;
                        iY += iX0 + iW0;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                    iW0 = N2.h((List) unsafe.getObject(obj, j8));
                    if (iW0 > 0) {
                        iW5 = C2429b2.w0(iW0);
                        iW6 = C2429b2.w0(i16 << 3);
                        iX0 = iW6 + iW5;
                        iY += iX0 + iW0;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 46:
                    iW0 = N2.j((List) unsafe.getObject(obj, j8));
                    if (iW0 > 0) {
                        iW5 = C2429b2.w0(iW0);
                        iW6 = C2429b2.w0(i16 << 3);
                        iX0 = iW6 + iW5;
                        iY += iX0 + iW0;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 47:
                    iW0 = N2.n((List) unsafe.getObject(obj, j8));
                    if (iW0 > 0) {
                        iW5 = C2429b2.w0(iW0);
                        iW6 = C2429b2.w0(i16 << 3);
                        iX0 = iW6 + iW5;
                        iY += iX0 + iW0;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 48:
                    iW0 = N2.o((List) unsafe.getObject(obj, j8));
                    if (iW0 > 0) {
                        iW5 = C2429b2.w0(iW0);
                        iW6 = C2429b2.w0(i16 << 3);
                        iX0 = iW6 + iW5;
                        iY += iX0 + iW0;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 49:
                    List list13 = (List) unsafe.getObject(obj, j8);
                    M2 m2L2 = l(i14);
                    Class cls13 = N2.f22505a;
                    int size6 = list13.size();
                    if (size6 == 0) {
                        iS0 = 0;
                    } else {
                        iS0 = 0;
                        for (int i26 = 0; i26 < size6; i26++) {
                            iS0 += C2429b2.s0(i16, (U1) list13.get(i26), m2L2);
                        }
                    }
                    iY += iS0;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 50:
                    Object object2 = unsafe.getObject(obj, j8);
                    int i27 = i14 / 3;
                    Object obj3 = this.f22447b[i27 + i27];
                    A0.O.I(object2);
                    A0.O.I(obj3);
                    throw null;
                case 51:
                    if (f(i16, obj, i14)) {
                        iY = AbstractC2090uc.y(i16 << 3, 8, iY);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 52:
                    if (f(i16, obj, i14)) {
                        iY = AbstractC2090uc.y(i16 << 3, 4, iY);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 53:
                    if (f(i16, obj, i14)) {
                        iY = AbstractC2090uc.y(i16 << 3, C2429b2.x0(k(obj, j8)), iY);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 54:
                    if (f(i16, obj, i14)) {
                        iY = AbstractC2090uc.y(i16 << 3, C2429b2.x0(k(obj, j8)), iY);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 55:
                    if (f(i16, obj, i14)) {
                        iY = AbstractC2090uc.y(i16 << 3, C2429b2.t0(h(obj, j8)), iY);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 56:
                    if (f(i16, obj, i14)) {
                        iY = AbstractC2090uc.y(i16 << 3, 8, iY);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 57:
                    if (f(i16, obj, i14)) {
                        iY = AbstractC2090uc.y(i16 << 3, 4, iY);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 58:
                    if (f(i16, obj, i14)) {
                        iY = AbstractC2090uc.y(i16 << 3, 1, iY);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 59:
                    if (f(i16, obj, i14)) {
                        int i28 = i16 << 3;
                        Object object3 = unsafe.getObject(obj, j8);
                        if (object3 instanceof Z1) {
                            Logger logger3 = C2429b2.f22649g;
                            int iN6 = ((Z1) object3).n();
                            iY = AbstractC2090uc.y(i28, C2429b2.w0(iN6) + iN6, iY);
                        } else {
                            iY = AbstractC2090uc.y(i28, C2429b2.v0((String) object3), iY);
                        }
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                    if (f(i16, obj, i14)) {
                        iM = N2.m(i16, l(i14), unsafe.getObject(obj, j8));
                        iY += iM;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 61:
                    if (f(i16, obj, i14)) {
                        Z1 z9 = (Z1) unsafe.getObject(obj, j8);
                        Logger logger4 = C2429b2.f22649g;
                        int iN7 = z9.n();
                        iY = AbstractC2090uc.y(i16 << 3, C2429b2.w0(iN7) + iN7, iY);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 62:
                    if (f(i16, obj, i14)) {
                        iY = AbstractC2090uc.y(i16 << 3, C2429b2.w0(h(obj, j8)), iY);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 63:
                    if (f(i16, obj, i14)) {
                        iY = AbstractC2090uc.y(i16 << 3, C2429b2.t0(h(obj, j8)), iY);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                    if (f(i16, obj, i14)) {
                        iY = AbstractC2090uc.y(i16 << 3, 4, iY);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 65:
                    if (f(i16, obj, i14)) {
                        iY = AbstractC2090uc.y(i16 << 3, 8, iY);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 66:
                    if (f(i16, obj, i14)) {
                        int iH = h(obj, j8);
                        iY = AbstractC2090uc.y((iH >> 31) ^ (iH + iH), C2429b2.w0(i16 << 3), iY);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 67:
                    if (f(i16, obj, i14)) {
                        long jK = k(obj, j8);
                        iW0 = C2429b2.w0(i16 << 3);
                        iX0 = C2429b2.x0((jK >> 63) ^ (jK + jK));
                        iY += iX0 + iW0;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 68:
                    if (f(i16, obj, i14)) {
                        iM = C2429b2.s0(i16, (U1) unsafe.getObject(obj, j8), l(i14));
                        iY += iM;
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
      0x00db: PHI (r1v35 int) = (r1v11 int), (r1v36 int) binds: [B:85:0x01eb, B:43:0x00d9] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.gms.internal.cast.M2
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
            int[] iArr = this.f22446a;
            if (i12 >= iArr.length) {
                this.f22452g.getClass();
                ((AbstractC2457i2) obj).zzc.getClass();
                return (i13 * 53) + 506991;
            }
            int iJ = j(i12);
            int i14 = 1048575 & iJ;
            int i15 = i(iJ);
            int i16 = iArr[i12];
            long j8 = i14;
            int i17 = 1237;
            int iHashCode = 37;
            switch (i15) {
                case 0:
                    i8 = i13 * 53;
                    jDoubleToLongBits = Double.doubleToLongBits(W2.f22551c.a(obj, j8));
                    Charset charset = AbstractC2481o2.f22763a;
                    i13 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 1:
                    i9 = i13 * 53;
                    iFloatToIntBits = Float.floatToIntBits(W2.f22551c.b(obj, j8));
                    i13 = iFloatToIntBits + i9;
                    break;
                case 2:
                    i8 = i13 * 53;
                    jDoubleToLongBits = W2.g(obj, j8);
                    Charset charset2 = AbstractC2481o2.f22763a;
                    i13 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 3:
                    i8 = i13 * 53;
                    jDoubleToLongBits = W2.g(obj, j8);
                    Charset charset3 = AbstractC2481o2.f22763a;
                    i13 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 4:
                    i9 = i13 * 53;
                    iFloatToIntBits = W2.f(obj, j8);
                    i13 = iFloatToIntBits + i9;
                    break;
                case 5:
                    i8 = i13 * 53;
                    jDoubleToLongBits = W2.g(obj, j8);
                    Charset charset4 = AbstractC2481o2.f22763a;
                    i13 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 6:
                    i9 = i13 * 53;
                    iFloatToIntBits = W2.f(obj, j8);
                    i13 = iFloatToIntBits + i9;
                    break;
                case 7:
                    i10 = i13 * 53;
                    boolean zG = W2.f22551c.g(obj, j8);
                    Charset charset5 = AbstractC2481o2.f22763a;
                    if (zG) {
                        i17 = 1231;
                    }
                    i13 = i17 + i10;
                    break;
                case 8:
                    i9 = i13 * 53;
                    iFloatToIntBits = ((String) W2.i(obj, j8)).hashCode();
                    i13 = iFloatToIntBits + i9;
                    break;
                case 9:
                    i11 = i13 * 53;
                    Object objI = W2.i(obj, j8);
                    if (objI != null) {
                        iHashCode = objI.hashCode();
                    }
                    i13 = i11 + iHashCode;
                    break;
                case 10:
                    i9 = i13 * 53;
                    iFloatToIntBits = W2.i(obj, j8).hashCode();
                    i13 = iFloatToIntBits + i9;
                    break;
                case 11:
                    i9 = i13 * 53;
                    iFloatToIntBits = W2.f(obj, j8);
                    i13 = iFloatToIntBits + i9;
                    break;
                case 12:
                    i9 = i13 * 53;
                    iFloatToIntBits = W2.f(obj, j8);
                    i13 = iFloatToIntBits + i9;
                    break;
                case 13:
                    i9 = i13 * 53;
                    iFloatToIntBits = W2.f(obj, j8);
                    i13 = iFloatToIntBits + i9;
                    break;
                case 14:
                    i8 = i13 * 53;
                    jDoubleToLongBits = W2.g(obj, j8);
                    Charset charset6 = AbstractC2481o2.f22763a;
                    i13 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 15:
                    i9 = i13 * 53;
                    iFloatToIntBits = W2.f(obj, j8);
                    i13 = iFloatToIntBits + i9;
                    break;
                case 16:
                    i8 = i13 * 53;
                    jDoubleToLongBits = W2.g(obj, j8);
                    Charset charset7 = AbstractC2481o2.f22763a;
                    i13 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 17:
                    i11 = i13 * 53;
                    Object objI2 = W2.i(obj, j8);
                    if (objI2 != null) {
                        iHashCode = objI2.hashCode();
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
                    iFloatToIntBits = W2.i(obj, j8).hashCode();
                    i13 = iFloatToIntBits + i9;
                    break;
                case 50:
                    i9 = i13 * 53;
                    iFloatToIntBits = W2.i(obj, j8).hashCode();
                    i13 = iFloatToIntBits + i9;
                    break;
                case 51:
                    if (f(i16, obj, i12)) {
                        i8 = i13 * 53;
                        jDoubleToLongBits = Double.doubleToLongBits(((Double) W2.i(obj, j8)).doubleValue());
                        Charset charset8 = AbstractC2481o2.f22763a;
                        i13 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 52:
                    if (f(i16, obj, i12)) {
                        i9 = i13 * 53;
                        iFloatToIntBits = Float.floatToIntBits(((Float) W2.i(obj, j8)).floatValue());
                        i13 = iFloatToIntBits + i9;
                    }
                    break;
                case 53:
                    if (f(i16, obj, i12)) {
                        i8 = i13 * 53;
                        jDoubleToLongBits = k(obj, j8);
                        Charset charset9 = AbstractC2481o2.f22763a;
                        i13 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 54:
                    if (f(i16, obj, i12)) {
                        i8 = i13 * 53;
                        jDoubleToLongBits = k(obj, j8);
                        Charset charset10 = AbstractC2481o2.f22763a;
                        i13 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 55:
                    if (f(i16, obj, i12)) {
                        i9 = i13 * 53;
                        iFloatToIntBits = h(obj, j8);
                        i13 = iFloatToIntBits + i9;
                    }
                    break;
                case 56:
                    if (f(i16, obj, i12)) {
                        i8 = i13 * 53;
                        jDoubleToLongBits = k(obj, j8);
                        Charset charset11 = AbstractC2481o2.f22763a;
                        i13 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 57:
                    if (f(i16, obj, i12)) {
                        i9 = i13 * 53;
                        iFloatToIntBits = h(obj, j8);
                        i13 = iFloatToIntBits + i9;
                    }
                    break;
                case 58:
                    if (f(i16, obj, i12)) {
                        i10 = i13 * 53;
                        boolean zBooleanValue = ((Boolean) W2.i(obj, j8)).booleanValue();
                        Charset charset12 = AbstractC2481o2.f22763a;
                        if (zBooleanValue) {
                            i17 = 1231;
                        }
                        i13 = i17 + i10;
                    }
                    break;
                case 59:
                    if (f(i16, obj, i12)) {
                        i9 = i13 * 53;
                        iFloatToIntBits = ((String) W2.i(obj, j8)).hashCode();
                        i13 = iFloatToIntBits + i9;
                    }
                    break;
                case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                    if (f(i16, obj, i12)) {
                        i9 = i13 * 53;
                        iFloatToIntBits = W2.i(obj, j8).hashCode();
                        i13 = iFloatToIntBits + i9;
                    }
                    break;
                case 61:
                    if (f(i16, obj, i12)) {
                        i9 = i13 * 53;
                        iFloatToIntBits = W2.i(obj, j8).hashCode();
                        i13 = iFloatToIntBits + i9;
                    }
                    break;
                case 62:
                    if (f(i16, obj, i12)) {
                        i9 = i13 * 53;
                        iFloatToIntBits = h(obj, j8);
                        i13 = iFloatToIntBits + i9;
                    }
                    break;
                case 63:
                    if (f(i16, obj, i12)) {
                        i9 = i13 * 53;
                        iFloatToIntBits = h(obj, j8);
                        i13 = iFloatToIntBits + i9;
                    }
                    break;
                case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                    if (f(i16, obj, i12)) {
                        i9 = i13 * 53;
                        iFloatToIntBits = h(obj, j8);
                        i13 = iFloatToIntBits + i9;
                    }
                    break;
                case 65:
                    if (f(i16, obj, i12)) {
                        i8 = i13 * 53;
                        jDoubleToLongBits = k(obj, j8);
                        Charset charset13 = AbstractC2481o2.f22763a;
                        i13 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 66:
                    if (f(i16, obj, i12)) {
                        i9 = i13 * 53;
                        iFloatToIntBits = h(obj, j8);
                        i13 = iFloatToIntBits + i9;
                    }
                    break;
                case 67:
                    if (f(i16, obj, i12)) {
                        i8 = i13 * 53;
                        jDoubleToLongBits = k(obj, j8);
                        Charset charset14 = AbstractC2481o2.f22763a;
                        i13 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 68:
                    if (f(i16, obj, i12)) {
                        i9 = i13 * 53;
                        iFloatToIntBits = W2.i(obj, j8).hashCode();
                        i13 = iFloatToIntBits + i9;
                    }
                    break;
            }
            i12 += 3;
        }
    }

    @Override // com.google.android.gms.internal.cast.M2
    public final AbstractC2457i2 zzc() {
        return (AbstractC2457i2) ((AbstractC2457i2) this.f22448c).h(4, null);
    }

    @Override // com.google.android.gms.internal.cast.M2
    public final boolean zzg(Object obj, Object obj2) {
        boolean zE;
        int i8 = 0;
        while (true) {
            int[] iArr = this.f22446a;
            if (i8 >= iArr.length) {
                this.f22452g.getClass();
                return ((AbstractC2457i2) obj).zzc.equals(((AbstractC2457i2) obj2).zzc);
            }
            int iJ = j(i8);
            long j8 = iJ & 1048575;
            switch (i(iJ)) {
                case 0:
                    if (q(i8, obj, obj2)) {
                        V2 v5 = W2.f22551c;
                        if (Double.doubleToLongBits(v5.a(obj, j8)) == Double.doubleToLongBits(v5.a(obj2, j8))) {
                            continue;
                            i8 += 3;
                            break;
                        }
                    }
                    return false;
                case 1:
                    if (q(i8, obj, obj2)) {
                        V2 v7 = W2.f22551c;
                        if (Float.floatToIntBits(v7.b(obj, j8)) == Float.floatToIntBits(v7.b(obj2, j8))) {
                            continue;
                            i8 += 3;
                            break;
                        }
                    }
                    return false;
                case 2:
                    if (!q(i8, obj, obj2) || W2.g(obj, j8) != W2.g(obj2, j8)) {
                        return false;
                    }
                    continue;
                    i8 += 3;
                    break;
                    break;
                case 3:
                    if (!q(i8, obj, obj2) || W2.g(obj, j8) != W2.g(obj2, j8)) {
                        return false;
                    }
                    continue;
                    i8 += 3;
                    break;
                    break;
                case 4:
                    if (!q(i8, obj, obj2) || W2.f(obj, j8) != W2.f(obj2, j8)) {
                        return false;
                    }
                    continue;
                    i8 += 3;
                    break;
                    break;
                case 5:
                    if (!q(i8, obj, obj2) || W2.g(obj, j8) != W2.g(obj2, j8)) {
                        return false;
                    }
                    continue;
                    i8 += 3;
                    break;
                    break;
                case 6:
                    if (!q(i8, obj, obj2) || W2.f(obj, j8) != W2.f(obj2, j8)) {
                        return false;
                    }
                    continue;
                    i8 += 3;
                    break;
                    break;
                case 7:
                    if (q(i8, obj, obj2)) {
                        V2 v8 = W2.f22551c;
                        if (v8.g(obj, j8) == v8.g(obj2, j8)) {
                            continue;
                            i8 += 3;
                            break;
                        }
                    }
                    return false;
                case 8:
                    if (!q(i8, obj, obj2) || !N2.e(W2.i(obj, j8), W2.i(obj2, j8))) {
                        return false;
                    }
                    continue;
                    i8 += 3;
                    break;
                    break;
                case 9:
                    if (!q(i8, obj, obj2) || !N2.e(W2.i(obj, j8), W2.i(obj2, j8))) {
                        return false;
                    }
                    continue;
                    i8 += 3;
                    break;
                    break;
                case 10:
                    if (!q(i8, obj, obj2) || !N2.e(W2.i(obj, j8), W2.i(obj2, j8))) {
                        return false;
                    }
                    continue;
                    i8 += 3;
                    break;
                    break;
                case 11:
                    if (!q(i8, obj, obj2) || W2.f(obj, j8) != W2.f(obj2, j8)) {
                        return false;
                    }
                    continue;
                    i8 += 3;
                    break;
                    break;
                case 12:
                    if (!q(i8, obj, obj2) || W2.f(obj, j8) != W2.f(obj2, j8)) {
                        return false;
                    }
                    continue;
                    i8 += 3;
                    break;
                    break;
                case 13:
                    if (!q(i8, obj, obj2) || W2.f(obj, j8) != W2.f(obj2, j8)) {
                        return false;
                    }
                    continue;
                    i8 += 3;
                    break;
                    break;
                case 14:
                    if (!q(i8, obj, obj2) || W2.g(obj, j8) != W2.g(obj2, j8)) {
                        return false;
                    }
                    continue;
                    i8 += 3;
                    break;
                    break;
                case 15:
                    if (!q(i8, obj, obj2) || W2.f(obj, j8) != W2.f(obj2, j8)) {
                        return false;
                    }
                    continue;
                    i8 += 3;
                    break;
                    break;
                case 16:
                    if (!q(i8, obj, obj2) || W2.g(obj, j8) != W2.g(obj2, j8)) {
                        return false;
                    }
                    continue;
                    i8 += 3;
                    break;
                    break;
                case 17:
                    if (!q(i8, obj, obj2) || !N2.e(W2.i(obj, j8), W2.i(obj2, j8))) {
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
                    zE = N2.e(W2.i(obj, j8), W2.i(obj2, j8));
                    break;
                case 50:
                    zE = N2.e(W2.i(obj, j8), W2.i(obj2, j8));
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
                    if (W2.f(obj, j9) != W2.f(obj2, j9) || !N2.e(W2.i(obj, j8), W2.i(obj2, j8))) {
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
            if (!zE) {
                return false;
            }
            i8 += 3;
        }
    }
}
