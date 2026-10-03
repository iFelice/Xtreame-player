package com.google.android.gms.internal.atv_ads_framework;

import com.google.android.gms.internal.ads.AbstractC2090uc;
import com.google.api.Service;
import com.google.protobuf.DescriptorProtos$FileOptions;
import com.google.protobuf.DescriptorProtos$MethodOptions;
import com.google.protobuf.U2;
import java.lang.reflect.Field;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Logger;
import okhttp3.internal.ws.WebSocketProtocol;
import org.eclipse.paho.client.mqttv3.MqttConnectOptions;
import org.videolan.libvlc.interfaces.IMediaList;
import sun.misc.Unsafe;

/* JADX INFO: renamed from: com.google.android.gms.internal.atv_ads_framework.p0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2405p0 implements InterfaceC2418w0 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int[] f22348i = new int[0];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Unsafe f22349j = I0.j();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f22350a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object[] f22351b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final E f22352c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f22353d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int[] f22354e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f22355f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AbstractC2387g0 f22356g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final A0 f22357h;

    public C2405p0(int[] iArr, Object[] objArr, E e8, boolean z7, int[] iArr2, int i8, AbstractC2387g0 abstractC2387g0, A0 a8, N n7) {
        this.f22350a = iArr;
        this.f22351b = objArr;
        this.f22353d = z7;
        this.f22354e = iArr2;
        this.f22355f = i8;
        this.f22356g = abstractC2387g0;
        this.f22357h = a8;
        this.f22352c = e8;
    }

    public static boolean f(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof U) {
            return ((U) obj).b();
        }
        return true;
    }

    public static final void h(int i8, Object obj, M m7) throws I0.u {
        if (!(obj instanceof String)) {
            m7.e(i8, (J) obj);
        } else {
            m7.f22280a.R(i8, (String) obj);
        }
    }

    public static C2405p0 i(InterfaceC2399m0 interfaceC2399m0, AbstractC2387g0 abstractC2387g0, A0 a8, N n7) {
        int i8;
        int iCharAt;
        int iCharAt2;
        int i9;
        int[] iArr;
        int i10;
        int i11;
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
        int[] iArr2;
        int iObjectFieldOffset;
        int i22;
        int iObjectFieldOffset2;
        int i23;
        Field fieldP;
        char cCharAt7;
        int i24;
        int i25;
        Field fieldP2;
        Field fieldP3;
        int i26;
        char cCharAt8;
        int i27;
        char cCharAt9;
        int i28;
        char cCharAt10;
        int i29;
        char cCharAt11;
        if (!(interfaceC2399m0 instanceof C2416v0)) {
            A0.O.I(interfaceC2399m0);
            throw null;
        }
        C2416v0 c2416v0 = (C2416v0) interfaceC2399m0;
        int iB = c2416v0.b();
        String strC = c2416v0.c();
        int length = strC.length();
        int i30 = 55296;
        if (strC.charAt(0) >= 55296) {
            int i31 = 1;
            while (true) {
                i8 = i31 + 1;
                if (strC.charAt(i31) < 55296) {
                    break;
                }
                i31 = i8;
            }
        } else {
            i8 = 1;
        }
        int i32 = i8 + 1;
        int iCharAt3 = strC.charAt(i8);
        if (iCharAt3 >= 55296) {
            int i33 = iCharAt3 & 8191;
            int i34 = 13;
            while (true) {
                i29 = i32 + 1;
                cCharAt11 = strC.charAt(i32);
                if (cCharAt11 < 55296) {
                    break;
                }
                i33 |= (cCharAt11 & 8191) << i34;
                i34 += 13;
                i32 = i29;
            }
            iCharAt3 = i33 | (cCharAt11 << i34);
            i32 = i29;
        }
        if (iCharAt3 == 0) {
            iArr = f22348i;
            i11 = 0;
            iCharAt = 0;
            iCharAt2 = 0;
            i9 = 0;
            i10 = 0;
        } else {
            int i35 = i32 + 1;
            int iCharAt4 = strC.charAt(i32);
            if (iCharAt4 >= 55296) {
                int i36 = iCharAt4 & 8191;
                int i37 = 13;
                while (true) {
                    i19 = i35 + 1;
                    cCharAt6 = strC.charAt(i35);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i36 |= (cCharAt6 & 8191) << i37;
                    i37 += 13;
                    i35 = i19;
                }
                iCharAt4 = i36 | (cCharAt6 << i37);
                i35 = i19;
            }
            int i38 = i35 + 1;
            int iCharAt5 = strC.charAt(i35);
            if (iCharAt5 >= 55296) {
                int i39 = iCharAt5 & 8191;
                int i40 = 13;
                while (true) {
                    i18 = i38 + 1;
                    cCharAt5 = strC.charAt(i38);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i39 |= (cCharAt5 & 8191) << i40;
                    i40 += 13;
                    i38 = i18;
                }
                iCharAt5 = i39 | (cCharAt5 << i40);
                i38 = i18;
            }
            int i41 = i38 + 1;
            if (strC.charAt(i38) >= 55296) {
                while (true) {
                    i17 = i41 + 1;
                    if (strC.charAt(i41) < 55296) {
                        break;
                    }
                    i41 = i17;
                }
                i41 = i17;
            }
            int i42 = i41 + 1;
            if (strC.charAt(i41) >= 55296) {
                while (true) {
                    i16 = i42 + 1;
                    if (strC.charAt(i42) < 55296) {
                        break;
                    }
                    i42 = i16;
                }
                i42 = i16;
            }
            int i43 = i42 + 1;
            iCharAt = strC.charAt(i42);
            if (iCharAt >= 55296) {
                int i44 = iCharAt & 8191;
                int i45 = 13;
                while (true) {
                    i15 = i43 + 1;
                    cCharAt4 = strC.charAt(i43);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i44 |= (cCharAt4 & 8191) << i45;
                    i45 += 13;
                    i43 = i15;
                }
                iCharAt = i44 | (cCharAt4 << i45);
                i43 = i15;
            }
            int i46 = i43 + 1;
            iCharAt2 = strC.charAt(i43);
            if (iCharAt2 >= 55296) {
                int i47 = iCharAt2 & 8191;
                int i48 = 13;
                while (true) {
                    i14 = i46 + 1;
                    cCharAt3 = strC.charAt(i46);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i47 |= (cCharAt3 & 8191) << i48;
                    i48 += 13;
                    i46 = i14;
                }
                iCharAt2 = i47 | (cCharAt3 << i48);
                i46 = i14;
            }
            int i49 = i46 + 1;
            int iCharAt6 = strC.charAt(i46);
            if (iCharAt6 >= 55296) {
                int i50 = iCharAt6 & 8191;
                int i51 = 13;
                while (true) {
                    i13 = i49 + 1;
                    cCharAt2 = strC.charAt(i49);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i50 |= (cCharAt2 & 8191) << i51;
                    i51 += 13;
                    i49 = i13;
                }
                iCharAt6 = i50 | (cCharAt2 << i51);
                i49 = i13;
            }
            int i52 = i49 + 1;
            int iCharAt7 = strC.charAt(i49);
            if (iCharAt7 >= 55296) {
                int i53 = iCharAt7 & 8191;
                int i54 = 13;
                while (true) {
                    i12 = i52 + 1;
                    cCharAt = strC.charAt(i52);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i53 |= (cCharAt & 8191) << i54;
                    i54 += 13;
                    i52 = i12;
                }
                iCharAt7 = i53 | (cCharAt << i54);
                i52 = i12;
            }
            int i55 = iCharAt7 + iCharAt2 + iCharAt6;
            i9 = iCharAt4 + iCharAt4 + iCharAt5;
            iArr = new int[i55];
            i10 = iCharAt7;
            i11 = iCharAt4;
            i32 = i52;
        }
        Object[] objArrD = c2416v0.d();
        Class<?> cls = c2416v0.a().getClass();
        int i56 = i10 + iCharAt2;
        int i57 = iCharAt + iCharAt;
        int[] iArr3 = new int[iCharAt * 3];
        Object[] objArr = new Object[i57];
        int i58 = i10;
        int i59 = 0;
        int i60 = 0;
        while (true) {
            boolean z7 = iB == 2;
            if (i32 >= length) {
                return new C2405p0(iArr3, objArr, c2416v0.a(), z7, iArr, i10, abstractC2387g0, a8, n7);
            }
            int i61 = i32 + 1;
            int iCharAt8 = strC.charAt(i32);
            if (iCharAt8 >= i30) {
                int i62 = iCharAt8 & 8191;
                int i63 = i61;
                int i64 = 13;
                while (true) {
                    i28 = i63 + 1;
                    cCharAt10 = strC.charAt(i63);
                    i20 = iB;
                    if (cCharAt10 < 55296) {
                        break;
                    }
                    i62 |= (cCharAt10 & 8191) << i64;
                    i64 += 13;
                    i63 = i28;
                    iB = i20;
                }
                iCharAt8 = i62 | (cCharAt10 << i64);
                i21 = i28;
            } else {
                i20 = iB;
                i21 = i61;
            }
            int i65 = i21 + 1;
            int iCharAt9 = strC.charAt(i21);
            int i66 = length;
            char c8 = 55296;
            if (iCharAt9 >= 55296) {
                int i67 = iCharAt9 & 8191;
                int i68 = 13;
                while (true) {
                    i27 = i65 + 1;
                    cCharAt9 = strC.charAt(i65);
                    if (cCharAt9 < c8) {
                        break;
                    }
                    i67 |= (cCharAt9 & 8191) << i68;
                    i68 += 13;
                    i65 = i27;
                    c8 = 55296;
                }
                iCharAt9 = i67 | (cCharAt9 << i68);
                i65 = i27;
            }
            if ((iCharAt9 & 1024) != 0) {
                iArr[i60] = i59;
                i60++;
            }
            int i69 = iCharAt9 & 255;
            C2416v0 c2416v1 = c2416v0;
            Unsafe unsafe = f22349j;
            int i70 = iCharAt8;
            if (i69 >= 51) {
                int i71 = i65 + 1;
                int iCharAt10 = strC.charAt(i65);
                char c9 = 55296;
                if (iCharAt10 >= 55296) {
                    int i72 = 13;
                    int i73 = iCharAt10 & 8191;
                    int i74 = i71;
                    while (true) {
                        i26 = i74 + 1;
                        cCharAt8 = strC.charAt(i74);
                        if (cCharAt8 < c9) {
                            break;
                        }
                        i73 |= (cCharAt8 & 8191) << i72;
                        i72 += 13;
                        i74 = i26;
                        c9 = 55296;
                    }
                    iCharAt10 = i73 | (cCharAt8 << i72);
                    i25 = i26;
                } else {
                    i25 = i71;
                }
                int i75 = i25;
                int i76 = i69 - 51;
                iArr2 = iArr3;
                if (i76 == 9 || i76 == 17) {
                    objArr[p000a.r.t(i59, 3, 1)] = objArrD[i9];
                    i9++;
                } else if (i76 == 12 && !z7) {
                    objArr[p000a.r.t(i59, 3, 1)] = objArrD[i9];
                    i9++;
                }
                int i77 = iCharAt10 + iCharAt10;
                Object obj = objArrD[i77];
                if (obj instanceof Field) {
                    fieldP2 = (Field) obj;
                } else {
                    fieldP2 = p(cls, (String) obj);
                    objArrD[i77] = fieldP2;
                }
                int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldP2);
                int i78 = i77 + 1;
                Object obj2 = objArrD[i78];
                if (obj2 instanceof Field) {
                    fieldP3 = (Field) obj2;
                } else {
                    fieldP3 = p(cls, (String) obj2);
                    objArrD[i78] = fieldP3;
                }
                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldP3);
                iObjectFieldOffset = iObjectFieldOffset3;
                i32 = i75;
                i23 = 0;
            } else {
                iArr2 = iArr3;
                int i79 = i9 + 1;
                Field fieldP4 = p(cls, (String) objArrD[i9]);
                int i80 = i56;
                if (i69 == 9 || i69 == 17) {
                    objArr[p000a.r.t(i59, 3, 1)] = fieldP4.getType();
                } else {
                    if (i69 == 27 || i69 == 49) {
                        i24 = i9 + 2;
                        objArr[p000a.r.t(i59, 3, 1)] = objArrD[i79];
                    } else if (i69 == 12 || i69 == 30 || i69 == 44) {
                        if (!z7) {
                            i24 = i9 + 2;
                            objArr[p000a.r.t(i59, 3, 1)] = objArrD[i79];
                        }
                    } else if (i69 == 50) {
                        int i81 = i58 + 1;
                        iArr[i58] = i59;
                        int i82 = i59 / 3;
                        int i83 = i9 + 2;
                        int i84 = i82 + i82;
                        objArr[i84] = objArrD[i79];
                        if ((iCharAt9 & 2048) != 0) {
                            i79 = i9 + 3;
                            objArr[i84 + 1] = objArrD[i83];
                        } else {
                            i79 = i83;
                        }
                        i58 = i81;
                    }
                    i79 = i24;
                }
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldP4);
                if ((iCharAt9 & 4096) != 4096 || i69 > 17) {
                    i22 = i65;
                    iObjectFieldOffset2 = 1048575;
                    i23 = 0;
                } else {
                    int i85 = i65 + 1;
                    int iCharAt11 = strC.charAt(i65);
                    if (iCharAt11 >= 55296) {
                        int i86 = iCharAt11 & 8191;
                        int i87 = 13;
                        while (true) {
                            i22 = i85 + 1;
                            cCharAt7 = strC.charAt(i85);
                            if (cCharAt7 < 55296) {
                                break;
                            }
                            i86 |= (cCharAt7 & 8191) << i87;
                            i87 += 13;
                            i85 = i22;
                        }
                        iCharAt11 = i86 | (cCharAt7 << i87);
                    } else {
                        i22 = i85;
                    }
                    int i88 = (iCharAt11 / 32) + i11 + i11;
                    Object obj3 = objArrD[i88];
                    if (obj3 instanceof Field) {
                        fieldP = (Field) obj3;
                    } else {
                        fieldP = p(cls, (String) obj3);
                        objArrD[i88] = fieldP;
                    }
                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldP);
                    i23 = iCharAt11 % 32;
                }
                if (i69 < 18 || i69 > 49) {
                    i9 = i79;
                    i32 = i22;
                    i56 = i80;
                } else {
                    i56 = i80 + 1;
                    iArr[i80] = iObjectFieldOffset;
                    i9 = i79;
                    i32 = i22;
                }
            }
            int i89 = i59 + 1;
            iArr2[i59] = i70;
            int i90 = i59 + 2;
            String str = strC;
            iArr2[i89] = ((iCharAt9 & 256) != 0 ? 268435456 : 0) | ((iCharAt9 & IMediaList.Event.ItemAdded) != 0 ? 536870912 : 0) | (i69 << 20) | iObjectFieldOffset;
            i59 += 3;
            iArr2[i90] = iObjectFieldOffset2 | (i23 << 20);
            length = i66;
            c2416v0 = c2416v1;
            iB = i20;
            strC = str;
            iArr3 = iArr2;
            i30 = 55296;
        }
    }

    public static int k(Object obj, long j8) {
        return ((Integer) I0.i(obj, j8)).intValue();
    }

    public static int l(int i8) {
        return (i8 >>> 20) & 255;
    }

    public static long n(Object obj, long j8) {
        return ((Long) I0.i(obj, j8)).longValue();
    }

    public static Field p(Class cls, String str) {
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
            StringBuilder sbQ = U2.q("Field ", str, " for ", name, " not found. Known fields are ");
            sbQ.append(string);
            throw new RuntimeException(sbQ.toString());
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0061  */
    /* JADX WARN: Code duplicated, block: B:29:0x0067  */
    /* JADX WARN: Code duplicated, block: B:39:0x0072 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.atv_ads_framework.InterfaceC2418w0
    public final void a(Object obj) {
        if (f(obj)) {
            if (obj instanceof U) {
                U u7 = (U) obj;
                u7.k();
                u7.zza = 0;
                u7.i();
            }
            int[] iArr = this.f22350a;
            int length = iArr.length;
            for (int i8 = 0; i8 < length; i8 += 3) {
                int iM = m(i8);
                int i9 = 1048575 & iM;
                int iL = l(iM);
                long j8 = i9;
                Unsafe unsafe = f22349j;
                if (iL != 9) {
                    if (iL != 60 && iL != 68) {
                        switch (iL) {
                            case 17:
                                if (e(i8, obj)) {
                                    o(i8).a(unsafe.getObject(obj, j8));
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
                                this.f22356g.a(obj, j8);
                                break;
                            case 50:
                                Object object = unsafe.getObject(obj, j8);
                                if (object != null) {
                                    U2.u(object);
                                    throw null;
                                }
                                break;
                                break;
                        }
                    } else if (g(iArr[i8], obj, i8)) {
                        o(i8).a(unsafe.getObject(obj, j8));
                    }
                } else if (e(i8, obj)) {
                    o(i8).a(unsafe.getObject(obj, j8));
                }
            }
            this.f22357h.getClass();
            A0.c(obj);
        }
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.InterfaceC2418w0
    public final void b(Object obj, Object obj2) {
        if (!f(obj)) {
            throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
        }
        obj2.getClass();
        int i8 = 0;
        while (true) {
            int[] iArr = this.f22350a;
            if (i8 >= iArr.length) {
                y0.a(this.f22357h, obj, obj2);
                return;
            }
            int iM = m(i8);
            int i9 = iArr[i8];
            long j8 = iM & 1048575;
            switch (l(iM)) {
                case 0:
                    if (e(i8, obj2)) {
                        H0 h8 = I0.f22265c;
                        h8.e(obj, j8, h8.a(obj2, j8));
                        s(i8, obj);
                    }
                    break;
                case 1:
                    if (e(i8, obj2)) {
                        H0 h9 = I0.f22265c;
                        h9.f(obj, j8, h9.b(obj2, j8));
                        s(i8, obj);
                    }
                    break;
                case 2:
                    if (e(i8, obj2)) {
                        I0.l(obj, j8, I0.g(obj2, j8));
                        s(i8, obj);
                    }
                    break;
                case 3:
                    if (e(i8, obj2)) {
                        I0.l(obj, j8, I0.g(obj2, j8));
                        s(i8, obj);
                    }
                    break;
                case 4:
                    if (e(i8, obj2)) {
                        I0.k(obj, j8, I0.f(obj2, j8));
                        s(i8, obj);
                    }
                    break;
                case 5:
                    if (e(i8, obj2)) {
                        I0.l(obj, j8, I0.g(obj2, j8));
                        s(i8, obj);
                    }
                    break;
                case 6:
                    if (e(i8, obj2)) {
                        I0.k(obj, j8, I0.f(obj2, j8));
                        s(i8, obj);
                    }
                    break;
                case 7:
                    if (e(i8, obj2)) {
                        H0 h10 = I0.f22265c;
                        h10.c(obj, j8, h10.g(obj2, j8));
                        s(i8, obj);
                    }
                    break;
                case 8:
                    if (e(i8, obj2)) {
                        I0.m(obj, j8, I0.i(obj2, j8));
                        s(i8, obj);
                    }
                    break;
                case 9:
                    q(i8, obj, obj2);
                    break;
                case 10:
                    if (e(i8, obj2)) {
                        I0.m(obj, j8, I0.i(obj2, j8));
                        s(i8, obj);
                    }
                    break;
                case 11:
                    if (e(i8, obj2)) {
                        I0.k(obj, j8, I0.f(obj2, j8));
                        s(i8, obj);
                    }
                    break;
                case 12:
                    if (e(i8, obj2)) {
                        I0.k(obj, j8, I0.f(obj2, j8));
                        s(i8, obj);
                    }
                    break;
                case 13:
                    if (e(i8, obj2)) {
                        I0.k(obj, j8, I0.f(obj2, j8));
                        s(i8, obj);
                    }
                    break;
                case 14:
                    if (e(i8, obj2)) {
                        I0.l(obj, j8, I0.g(obj2, j8));
                        s(i8, obj);
                    }
                    break;
                case 15:
                    if (e(i8, obj2)) {
                        I0.k(obj, j8, I0.f(obj2, j8));
                        s(i8, obj);
                    }
                    break;
                case 16:
                    if (e(i8, obj2)) {
                        I0.l(obj, j8, I0.g(obj2, j8));
                        s(i8, obj);
                    }
                    break;
                case 17:
                    q(i8, obj, obj2);
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
                    this.f22356g.b(obj, j8, obj2);
                    break;
                case 50:
                    Class cls = y0.f22396a;
                    Object objI = I0.i(obj, j8);
                    Object objI2 = I0.i(obj2, j8);
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
                    if (g(i9, obj2, i8)) {
                        I0.m(obj, j8, I0.i(obj2, j8));
                        I0.k(obj, iArr[i8 + 2] & 1048575, i9);
                    }
                    break;
                case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                    r(i8, obj, obj2);
                    break;
                case 61:
                case 62:
                case 63:
                case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                case 65:
                case 66:
                case 67:
                    if (g(i9, obj2, i8)) {
                        I0.m(obj, j8, I0.i(obj2, j8));
                        I0.k(obj, iArr[i8 + 2] & 1048575, i9);
                    }
                    break;
                case 68:
                    r(i8, obj, obj2);
                    break;
            }
            i8 += 3;
        }
    }

    /* JADX WARN: Code duplicated, block: B:42:0x0088  */
    /* JADX WARN: Code duplicated, block: B:44:0x0097  */
    /* JADX WARN: Code duplicated, block: B:47:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:50:0x00ad A[LOOP:1: B:45:0x009c->B:50:0x00ad, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:57:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:67:0x00ac A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:68:0x00cd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:71:0x00ce A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:75:0x00ce A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.atv_ads_framework.InterfaceC2418w0
    public final boolean c(Object obj) {
        List list;
        InterfaceC2418w0 interfaceC2418w0O;
        int i8;
        int i9 = 1048575;
        int i10 = 0;
        for (int i11 = 0; i11 < this.f22355f; i11++) {
            int i12 = this.f22354e[i11];
            int[] iArr = this.f22350a;
            int i13 = iArr[i12];
            int iM = m(i12);
            int i14 = iArr[i12 + 2];
            int i15 = i14 & 1048575;
            int i16 = 1 << (i14 >>> 20);
            if (i15 != i9) {
                if (i15 != 1048575) {
                    i10 = f22349j.getInt(obj, i15);
                }
                i9 = i15;
            }
            if ((268435456 & iM) != 0) {
                if (i9 == 1048575) {
                    if (!e(i12, obj)) {
                        return false;
                    }
                } else if ((i10 & i16) == 0) {
                    return false;
                }
            }
            int iL = l(iM);
            if (iL == 9 || iL == 17) {
                if (i9 == 1048575) {
                    if (!e(i12, obj)) {
                        continue;
                    } else if (!o(i12).c(I0.i(obj, iM & 1048575))) {
                        return false;
                    }
                } else if ((i16 & i10) == 0) {
                    continue;
                } else if (!o(i12).c(I0.i(obj, iM & 1048575))) {
                    return false;
                }
            } else if (iL == 27) {
                list = (List) I0.i(obj, iM & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    interfaceC2418w0O = o(i12);
                    for (i8 = 0; i8 < list.size(); i8++) {
                        if (!interfaceC2418w0O.c(list.get(i8))) {
                            return false;
                        }
                    }
                }
            } else if (iL == 60 || iL == 68) {
                if (g(i13, obj, i12) && !o(i12).c(I0.i(obj, iM & 1048575))) {
                    return false;
                }
            } else if (iL == 49) {
                list = (List) I0.i(obj, iM & 1048575);
                if (list.isEmpty()) {
                    interfaceC2418w0O = o(i12);
                    while (i8 < list.size()) {
                        if (!interfaceC2418w0O.c(list.get(i8))) {
                            return false;
                        }
                    }
                } else {
                    continue;
                }
            } else if (iL == 50) {
                A0.O.I(I0.i(obj, iM & 1048575));
                throw null;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.InterfaceC2418w0
    public final void d(Object obj, M m7) throws I0.u {
        int i8;
        int i9;
        Object[] objArr = this.f22351b;
        boolean z7 = this.f22353d;
        A0 a8 = this.f22357h;
        int[] iArr = this.f22350a;
        int i10 = 1048575;
        if (z7) {
            int length = iArr.length;
            for (int i11 = 0; i11 < length; i11 += 3) {
                int iM = m(i11);
                int i12 = iArr[i11];
                switch (l(iM)) {
                    case 0:
                        if (e(i11, obj)) {
                            m7.f(i12, I0.d(obj, iM & 1048575));
                        }
                        break;
                    case 1:
                        if (e(i11, obj)) {
                            m7.j(i12, I0.e(obj, iM & 1048575));
                        }
                        break;
                    case 2:
                        if (e(i11, obj)) {
                            m7.m(i12, I0.g(obj, iM & 1048575));
                        }
                        break;
                    case 3:
                        if (e(i11, obj)) {
                            m7.c(i12, I0.g(obj, iM & 1048575));
                        }
                        break;
                    case 4:
                        if (e(i11, obj)) {
                            m7.l(i12, I0.f(obj, iM & 1048575));
                        }
                        break;
                    case 5:
                        if (e(i11, obj)) {
                            m7.i(i12, I0.g(obj, iM & 1048575));
                        }
                        break;
                    case 6:
                        if (e(i11, obj)) {
                            m7.h(i12, I0.f(obj, iM & 1048575));
                        }
                        break;
                    case 7:
                        if (e(i11, obj)) {
                            m7.d(i12, I0.q(obj, iM & 1048575));
                        }
                        break;
                    case 8:
                        if (e(i11, obj)) {
                            h(i12, I0.i(obj, iM & 1048575), m7);
                        }
                        break;
                    case 9:
                        if (e(i11, obj)) {
                            m7.n(i12, o(i11), I0.i(obj, iM & 1048575));
                        }
                        break;
                    case 10:
                        if (e(i11, obj)) {
                            m7.e(i12, (J) I0.i(obj, iM & 1048575));
                        }
                        break;
                    case 11:
                        if (e(i11, obj)) {
                            m7.b(i12, I0.f(obj, iM & 1048575));
                        }
                        break;
                    case 12:
                        if (e(i11, obj)) {
                            m7.g(i12, I0.f(obj, iM & 1048575));
                        }
                        break;
                    case 13:
                        if (e(i11, obj)) {
                            m7.o(i12, I0.f(obj, iM & 1048575));
                        }
                        break;
                    case 14:
                        if (e(i11, obj)) {
                            m7.p(i12, I0.g(obj, iM & 1048575));
                        }
                        break;
                    case 15:
                        if (e(i11, obj)) {
                            m7.q(i12, I0.f(obj, iM & 1048575));
                        }
                        break;
                    case 16:
                        if (e(i11, obj)) {
                            m7.a(i12, I0.g(obj, iM & 1048575));
                        }
                        break;
                    case 17:
                        if (e(i11, obj)) {
                            m7.k(i12, o(i11), I0.i(obj, iM & 1048575));
                        }
                        break;
                    case 18:
                        y0.d(i12, (List) I0.i(obj, iM & 1048575), m7, false);
                        break;
                    case 19:
                        y0.h(i12, (List) I0.i(obj, iM & 1048575), m7, false);
                        break;
                    case 20:
                        y0.k(i12, (List) I0.i(obj, iM & 1048575), m7, false);
                        break;
                    case 21:
                        y0.s(i12, (List) I0.i(obj, iM & 1048575), m7, false);
                        break;
                    case 22:
                        y0.j(i12, (List) I0.i(obj, iM & 1048575), m7, false);
                        break;
                    case 23:
                        y0.g(i12, (List) I0.i(obj, iM & 1048575), m7, false);
                        break;
                    case 24:
                        y0.f(i12, (List) I0.i(obj, iM & 1048575), m7, false);
                        break;
                    case 25:
                        y0.b(i12, (List) I0.i(obj, iM & 1048575), m7, false);
                        break;
                    case Service.BILLING_FIELD_NUMBER /* 26 */:
                        y0.q(i12, (List) I0.i(obj, iM & 1048575), m7);
                        break;
                    case 27:
                        y0.l(i12, (List) I0.i(obj, iM & 1048575), m7, o(i11));
                        break;
                    case Service.MONITORING_FIELD_NUMBER /* 28 */:
                        y0.c(i12, (List) I0.i(obj, iM & 1048575), m7);
                        break;
                    case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                        y0.r(i12, (List) I0.i(obj, iM & 1048575), m7, false);
                        break;
                    case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                        y0.e(i12, (List) I0.i(obj, iM & 1048575), m7, false);
                        break;
                    case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                        y0.m(i12, (List) I0.i(obj, iM & 1048575), m7, false);
                        break;
                    case 32:
                        y0.n(i12, (List) I0.i(obj, iM & 1048575), m7, false);
                        break;
                    case 33:
                        y0.o(i12, (List) I0.i(obj, iM & 1048575), m7, false);
                        break;
                    case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                        y0.p(i12, (List) I0.i(obj, iM & 1048575), m7, false);
                        break;
                    case 35:
                        y0.d(i12, (List) I0.i(obj, iM & 1048575), m7, true);
                        break;
                    case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                        y0.h(i12, (List) I0.i(obj, iM & 1048575), m7, true);
                        break;
                    case 37:
                        y0.k(i12, (List) I0.i(obj, iM & 1048575), m7, true);
                        break;
                    case 38:
                        y0.s(i12, (List) I0.i(obj, iM & 1048575), m7, true);
                        break;
                    case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                        y0.j(i12, (List) I0.i(obj, iM & 1048575), m7, true);
                        break;
                    case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                        y0.g(i12, (List) I0.i(obj, iM & 1048575), m7, true);
                        break;
                    case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
                        y0.f(i12, (List) I0.i(obj, iM & 1048575), m7, true);
                        break;
                    case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                        y0.b(i12, (List) I0.i(obj, iM & 1048575), m7, true);
                        break;
                    case 43:
                        y0.r(i12, (List) I0.i(obj, iM & 1048575), m7, true);
                        break;
                    case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                        y0.e(i12, (List) I0.i(obj, iM & 1048575), m7, true);
                        break;
                    case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                        y0.m(i12, (List) I0.i(obj, iM & 1048575), m7, true);
                        break;
                    case 46:
                        y0.n(i12, (List) I0.i(obj, iM & 1048575), m7, true);
                        break;
                    case 47:
                        y0.o(i12, (List) I0.i(obj, iM & 1048575), m7, true);
                        break;
                    case 48:
                        y0.p(i12, (List) I0.i(obj, iM & 1048575), m7, true);
                        break;
                    case 49:
                        y0.i(i12, (List) I0.i(obj, iM & 1048575), m7, o(i11));
                        break;
                    case 50:
                        if (I0.i(obj, iM & 1048575) != null) {
                            int i13 = i11 / 3;
                            A0.O.I(objArr[i13 + i13]);
                            throw null;
                        }
                        break;
                        break;
                    case 51:
                        if (g(i12, obj, i11)) {
                            m7.f(i12, ((Double) I0.i(obj, iM & 1048575)).doubleValue());
                        }
                        break;
                    case 52:
                        if (g(i12, obj, i11)) {
                            m7.j(i12, ((Float) I0.i(obj, iM & 1048575)).floatValue());
                        }
                        break;
                    case 53:
                        if (g(i12, obj, i11)) {
                            m7.m(i12, n(obj, iM & 1048575));
                        }
                        break;
                    case 54:
                        if (g(i12, obj, i11)) {
                            m7.c(i12, n(obj, iM & 1048575));
                        }
                        break;
                    case 55:
                        if (g(i12, obj, i11)) {
                            m7.l(i12, k(obj, iM & 1048575));
                        }
                        break;
                    case 56:
                        if (g(i12, obj, i11)) {
                            m7.i(i12, n(obj, iM & 1048575));
                        }
                        break;
                    case 57:
                        if (g(i12, obj, i11)) {
                            m7.h(i12, k(obj, iM & 1048575));
                        }
                        break;
                    case 58:
                        if (g(i12, obj, i11)) {
                            m7.d(i12, ((Boolean) I0.i(obj, iM & 1048575)).booleanValue());
                        }
                        break;
                    case 59:
                        if (g(i12, obj, i11)) {
                            h(i12, I0.i(obj, iM & 1048575), m7);
                        }
                        break;
                    case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                        if (g(i12, obj, i11)) {
                            m7.n(i12, o(i11), I0.i(obj, iM & 1048575));
                        }
                        break;
                    case 61:
                        if (g(i12, obj, i11)) {
                            m7.e(i12, (J) I0.i(obj, iM & 1048575));
                        }
                        break;
                    case 62:
                        if (g(i12, obj, i11)) {
                            m7.b(i12, k(obj, iM & 1048575));
                        }
                        break;
                    case 63:
                        if (g(i12, obj, i11)) {
                            m7.g(i12, k(obj, iM & 1048575));
                        }
                        break;
                    case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                        if (g(i12, obj, i11)) {
                            m7.o(i12, k(obj, iM & 1048575));
                        }
                        break;
                    case 65:
                        if (g(i12, obj, i11)) {
                            m7.p(i12, n(obj, iM & 1048575));
                        }
                        break;
                    case 66:
                        if (g(i12, obj, i11)) {
                            m7.q(i12, k(obj, iM & 1048575));
                        }
                        break;
                    case 67:
                        if (g(i12, obj, i11)) {
                            m7.a(i12, n(obj, iM & 1048575));
                        }
                        break;
                    case 68:
                        if (g(i12, obj, i11)) {
                            m7.k(i12, o(i11), I0.i(obj, iM & 1048575));
                        }
                        break;
                }
            }
            a8.getClass();
            A0.b(obj);
            return;
        }
        int length2 = iArr.length;
        int i14 = 0;
        int i15 = 1048575;
        int i16 = 0;
        while (i14 < length2) {
            int iM2 = m(i14);
            int i17 = iArr[i14];
            int iL = l(iM2);
            Unsafe unsafe = f22349j;
            if (iL <= 17) {
                int i18 = iArr[i14 + 2];
                int i19 = i18 & i10;
                if (i19 != i15) {
                    i16 = unsafe.getInt(obj, i19);
                    i15 = i19;
                }
                i8 = 1 << (i18 >>> 20);
            } else {
                i8 = 0;
            }
            int i20 = i14;
            long j8 = iM2 & i10;
            switch (iL) {
                case 0:
                    i9 = i20;
                    if ((i8 & i16) != 0) {
                        m7.f(i17, I0.d(obj, j8));
                    }
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 1:
                    i9 = i20;
                    if ((i8 & i16) != 0) {
                        m7.j(i17, I0.e(obj, j8));
                    }
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 2:
                    i9 = i20;
                    if ((i8 & i16) != 0) {
                        m7.m(i17, unsafe.getLong(obj, j8));
                    }
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 3:
                    i9 = i20;
                    if ((i8 & i16) != 0) {
                        m7.c(i17, unsafe.getLong(obj, j8));
                    }
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 4:
                    i9 = i20;
                    if ((i8 & i16) != 0) {
                        m7.l(i17, unsafe.getInt(obj, j8));
                    }
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 5:
                    i9 = i20;
                    if ((i8 & i16) != 0) {
                        m7.i(i17, unsafe.getLong(obj, j8));
                    }
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 6:
                    i9 = i20;
                    if ((i8 & i16) != 0) {
                        m7.h(i17, unsafe.getInt(obj, j8));
                    }
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 7:
                    i9 = i20;
                    if ((i8 & i16) != 0) {
                        m7.d(i17, I0.q(obj, j8));
                    }
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 8:
                    i9 = i20;
                    if ((i8 & i16) != 0) {
                        h(i17, unsafe.getObject(obj, j8), m7);
                    }
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 9:
                    i9 = i20;
                    if ((i8 & i16) != 0) {
                        m7.n(i17, o(i9), unsafe.getObject(obj, j8));
                    }
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 10:
                    i9 = i20;
                    if ((i8 & i16) != 0) {
                        m7.e(i17, (J) unsafe.getObject(obj, j8));
                    }
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 11:
                    i9 = i20;
                    if ((i8 & i16) != 0) {
                        m7.b(i17, unsafe.getInt(obj, j8));
                    }
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 12:
                    i9 = i20;
                    if ((i8 & i16) != 0) {
                        m7.g(i17, unsafe.getInt(obj, j8));
                    }
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 13:
                    i9 = i20;
                    if ((i8 & i16) != 0) {
                        m7.o(i17, unsafe.getInt(obj, j8));
                    }
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 14:
                    i9 = i20;
                    if ((i8 & i16) != 0) {
                        m7.p(i17, unsafe.getLong(obj, j8));
                    }
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 15:
                    i9 = i20;
                    if ((i8 & i16) != 0) {
                        m7.q(i17, unsafe.getInt(obj, j8));
                    }
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 16:
                    i9 = i20;
                    if ((i8 & i16) != 0) {
                        m7.a(i17, unsafe.getLong(obj, j8));
                    }
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 17:
                    i9 = i20;
                    if ((i8 & i16) != 0) {
                        m7.k(i17, o(i9), unsafe.getObject(obj, j8));
                    }
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 18:
                    i9 = i20;
                    y0.d(iArr[i9], (List) unsafe.getObject(obj, j8), m7, false);
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 19:
                    i9 = i20;
                    y0.h(iArr[i9], (List) unsafe.getObject(obj, j8), m7, false);
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 20:
                    i9 = i20;
                    y0.k(iArr[i9], (List) unsafe.getObject(obj, j8), m7, false);
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 21:
                    i9 = i20;
                    y0.s(iArr[i9], (List) unsafe.getObject(obj, j8), m7, false);
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 22:
                    i9 = i20;
                    y0.j(iArr[i9], (List) unsafe.getObject(obj, j8), m7, false);
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 23:
                    i9 = i20;
                    y0.g(iArr[i9], (List) unsafe.getObject(obj, j8), m7, false);
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 24:
                    i9 = i20;
                    y0.f(iArr[i9], (List) unsafe.getObject(obj, j8), m7, false);
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 25:
                    i9 = i20;
                    y0.b(iArr[i9], (List) unsafe.getObject(obj, j8), m7, false);
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case Service.BILLING_FIELD_NUMBER /* 26 */:
                    i9 = i20;
                    y0.q(iArr[i9], (List) unsafe.getObject(obj, j8), m7);
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 27:
                    i9 = i20;
                    y0.l(iArr[i9], (List) unsafe.getObject(obj, j8), m7, o(i9));
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case Service.MONITORING_FIELD_NUMBER /* 28 */:
                    i9 = i20;
                    y0.c(iArr[i9], (List) unsafe.getObject(obj, j8), m7);
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                    i9 = i20;
                    y0.r(iArr[i9], (List) unsafe.getObject(obj, j8), m7, false);
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                    i9 = i20;
                    y0.e(iArr[i9], (List) unsafe.getObject(obj, j8), m7, false);
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                    i9 = i20;
                    y0.m(iArr[i9], (List) unsafe.getObject(obj, j8), m7, false);
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 32:
                    i9 = i20;
                    y0.n(iArr[i9], (List) unsafe.getObject(obj, j8), m7, false);
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 33:
                    i9 = i20;
                    y0.o(iArr[i9], (List) unsafe.getObject(obj, j8), m7, false);
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                    i9 = i20;
                    y0.p(iArr[i9], (List) unsafe.getObject(obj, j8), m7, false);
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 35:
                    i9 = i20;
                    y0.d(iArr[i9], (List) unsafe.getObject(obj, j8), m7, true);
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                    i9 = i20;
                    y0.h(iArr[i9], (List) unsafe.getObject(obj, j8), m7, true);
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 37:
                    i9 = i20;
                    y0.k(iArr[i9], (List) unsafe.getObject(obj, j8), m7, true);
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 38:
                    i9 = i20;
                    y0.s(iArr[i9], (List) unsafe.getObject(obj, j8), m7, true);
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                    i9 = i20;
                    y0.j(iArr[i9], (List) unsafe.getObject(obj, j8), m7, true);
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                    i9 = i20;
                    y0.g(iArr[i9], (List) unsafe.getObject(obj, j8), m7, true);
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
                    i9 = i20;
                    y0.f(iArr[i9], (List) unsafe.getObject(obj, j8), m7, true);
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                    i9 = i20;
                    y0.b(iArr[i9], (List) unsafe.getObject(obj, j8), m7, true);
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 43:
                    i9 = i20;
                    y0.r(iArr[i9], (List) unsafe.getObject(obj, j8), m7, true);
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                    i9 = i20;
                    y0.e(iArr[i9], (List) unsafe.getObject(obj, j8), m7, true);
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                    i9 = i20;
                    y0.m(iArr[i9], (List) unsafe.getObject(obj, j8), m7, true);
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 46:
                    i9 = i20;
                    y0.n(iArr[i9], (List) unsafe.getObject(obj, j8), m7, true);
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 47:
                    i9 = i20;
                    y0.o(iArr[i9], (List) unsafe.getObject(obj, j8), m7, true);
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 48:
                    i9 = i20;
                    y0.p(iArr[i9], (List) unsafe.getObject(obj, j8), m7, true);
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 49:
                    i9 = i20;
                    y0.i(iArr[i9], (List) unsafe.getObject(obj, j8), m7, o(i9));
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 50:
                    i9 = i20;
                    if (unsafe.getObject(obj, j8) != null) {
                        int i21 = i9 / 3;
                        A0.O.I(objArr[i21 + i21]);
                        throw null;
                    }
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 51:
                    i9 = i20;
                    if (g(i17, obj, i9)) {
                        m7.f(i17, ((Double) I0.i(obj, j8)).doubleValue());
                    }
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 52:
                    i9 = i20;
                    if (g(i17, obj, i9)) {
                        m7.j(i17, ((Float) I0.i(obj, j8)).floatValue());
                    }
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 53:
                    i9 = i20;
                    if (g(i17, obj, i9)) {
                        m7.m(i17, n(obj, j8));
                    }
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 54:
                    i9 = i20;
                    if (g(i17, obj, i9)) {
                        m7.c(i17, n(obj, j8));
                    }
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 55:
                    i9 = i20;
                    if (g(i17, obj, i9)) {
                        m7.l(i17, k(obj, j8));
                    }
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 56:
                    i9 = i20;
                    if (g(i17, obj, i9)) {
                        m7.i(i17, n(obj, j8));
                    }
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 57:
                    i9 = i20;
                    if (g(i17, obj, i9)) {
                        m7.h(i17, k(obj, j8));
                    }
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 58:
                    i9 = i20;
                    if (g(i17, obj, i9)) {
                        m7.d(i17, ((Boolean) I0.i(obj, j8)).booleanValue());
                    }
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 59:
                    i9 = i20;
                    if (g(i17, obj, i9)) {
                        h(i17, unsafe.getObject(obj, j8), m7);
                    }
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                    i9 = i20;
                    if (g(i17, obj, i9)) {
                        m7.n(i17, o(i9), unsafe.getObject(obj, j8));
                    }
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 61:
                    i9 = i20;
                    if (g(i17, obj, i9)) {
                        m7.e(i17, (J) unsafe.getObject(obj, j8));
                    }
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 62:
                    i9 = i20;
                    if (g(i17, obj, i9)) {
                        m7.b(i17, k(obj, j8));
                    }
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 63:
                    i9 = i20;
                    if (g(i17, obj, i9)) {
                        m7.g(i17, k(obj, j8));
                    }
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                    i9 = i20;
                    if (g(i17, obj, i9)) {
                        m7.o(i17, k(obj, j8));
                    }
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 65:
                    i9 = i20;
                    if (g(i17, obj, i9)) {
                        m7.p(i17, n(obj, j8));
                    }
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 66:
                    i9 = i20;
                    if (g(i17, obj, i9)) {
                        m7.q(i17, k(obj, j8));
                    }
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 67:
                    i9 = i20;
                    if (g(i17, obj, i9)) {
                        m7.a(i17, n(obj, j8));
                    }
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                case 68:
                    i9 = i20;
                    if (g(i17, obj, i9)) {
                        m7.k(i17, o(i9), unsafe.getObject(obj, j8));
                    }
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
                default:
                    i9 = i20;
                    i14 = i9 + 3;
                    length2 = length2;
                    i10 = 1048575;
                    break;
            }
        }
        a8.getClass();
        A0.b(obj);
    }

    public final boolean e(int i8, Object obj) {
        int i9 = this.f22350a[i8 + 2];
        long j8 = i9 & 1048575;
        if (j8 != 1048575) {
            return ((1 << (i9 >>> 20)) & I0.f(obj, j8)) != 0;
        }
        int iM = m(i8);
        long j9 = iM & 1048575;
        switch (l(iM)) {
            case 0:
                return Double.doubleToRawLongBits(I0.f22265c.a(obj, j9)) != 0;
            case 1:
                return Float.floatToRawIntBits(I0.f22265c.b(obj, j9)) != 0;
            case 2:
                return I0.g(obj, j9) != 0;
            case 3:
                return I0.g(obj, j9) != 0;
            case 4:
                return I0.f(obj, j9) != 0;
            case 5:
                return I0.g(obj, j9) != 0;
            case 6:
                return I0.f(obj, j9) != 0;
            case 7:
                return I0.f22265c.g(obj, j9);
            case 8:
                Object objI = I0.i(obj, j9);
                if (objI instanceof String) {
                    return !((String) objI).isEmpty();
                }
                if (objI instanceof J) {
                    return !J.f22270H.equals(objI);
                }
                throw new IllegalArgumentException();
            case 9:
                return I0.i(obj, j9) != null;
            case 10:
                return !J.f22270H.equals(I0.i(obj, j9));
            case 11:
                return I0.f(obj, j9) != 0;
            case 12:
                return I0.f(obj, j9) != 0;
            case 13:
                return I0.f(obj, j9) != 0;
            case 14:
                return I0.g(obj, j9) != 0;
            case 15:
                return I0.f(obj, j9) != 0;
            case 16:
                return I0.g(obj, j9) != 0;
            case 17:
                return I0.i(obj, j9) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    public final boolean g(int i8, Object obj, int i9) {
        return I0.f(obj, (long) (this.f22350a[i9 + 2] & 1048575)) == i8;
    }

    public final int j(Object obj) {
        int i8;
        int iH;
        int iZ;
        int iA0;
        int i9 = 1048575;
        int i10 = 0;
        int iW = 0;
        int i11 = 1048575;
        int i12 = 0;
        while (true) {
            int[] iArr = this.f22350a;
            if (i10 >= iArr.length) {
                this.f22357h.getClass();
                return A0.a(A0.b(obj)) + iW;
            }
            int iM = m(i10);
            int i13 = iArr[i10];
            int iL = l(iM);
            Unsafe unsafe = f22349j;
            if (iL <= 17) {
                int i14 = iArr[i10 + 2];
                int i15 = i14 & i9;
                int i16 = i14 >>> 20;
                if (i15 != i11) {
                    i12 = unsafe.getInt(obj, i15);
                    i11 = i15;
                }
                i8 = 1 << i16;
            } else {
                i8 = 0;
            }
            long j8 = iM & i9;
            switch (iL) {
                case 0:
                    if ((i12 & i8) != 0) {
                        iW = AbstractC2090uc.w(i13 << 3, 8, iW);
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 1:
                    if ((i12 & i8) != 0) {
                        iW = AbstractC2090uc.w(i13 << 3, 4, iW);
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 2:
                    if ((i8 & i12) != 0) {
                        iW = AbstractC2090uc.w(i13 << 3, L.a0(unsafe.getLong(obj, j8)), iW);
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 3:
                    if ((i8 & i12) != 0) {
                        iW = AbstractC2090uc.w(i13 << 3, L.a0(unsafe.getLong(obj, j8)), iW);
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 4:
                    if ((i8 & i12) != 0) {
                        iW = AbstractC2090uc.w(i13 << 3, L.X(unsafe.getInt(obj, j8)), iW);
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 5:
                    if ((i12 & i8) != 0) {
                        iW = AbstractC2090uc.w(i13 << 3, 8, iW);
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 6:
                    if ((i12 & i8) != 0) {
                        iW = AbstractC2090uc.w(i13 << 3, 4, iW);
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 7:
                    if ((i12 & i8) != 0) {
                        iW = AbstractC2090uc.w(i13 << 3, 1, iW);
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 8:
                    if ((i8 & i12) != 0) {
                        Object object = unsafe.getObject(obj, j8);
                        if (object instanceof J) {
                            Logger logger = L.f22274g;
                            int iN = ((J) object).n();
                            iW = AbstractC2090uc.w(i13 << 3, L.Z(iN) + iN, iW);
                        } else {
                            iW = AbstractC2090uc.w(i13 << 3, L.Y((String) object), iW);
                        }
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 9:
                    if ((i8 & i12) != 0) {
                        iH = y0.H(i13, o(i10), unsafe.getObject(obj, j8));
                        iW += iH;
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 10:
                    if ((i8 & i12) != 0) {
                        J j9 = (J) unsafe.getObject(obj, j8);
                        Logger logger2 = L.f22274g;
                        int iN2 = j9.n();
                        iW = AbstractC2090uc.w(i13 << 3, L.Z(iN2) + iN2, iW);
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 11:
                    if ((i8 & i12) != 0) {
                        iW = AbstractC2090uc.w(i13 << 3, L.Z(unsafe.getInt(obj, j8)), iW);
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 12:
                    if ((i8 & i12) != 0) {
                        iW = AbstractC2090uc.w(i13 << 3, L.X(unsafe.getInt(obj, j8)), iW);
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 13:
                    if ((i12 & i8) != 0) {
                        iW = AbstractC2090uc.w(i13 << 3, 4, iW);
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 14:
                    if ((i12 & i8) != 0) {
                        iW = AbstractC2090uc.w(i13 << 3, 8, iW);
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 15:
                    if ((i8 & i12) != 0) {
                        int i17 = unsafe.getInt(obj, j8);
                        iW = AbstractC2090uc.w((i17 >> 31) ^ (i17 + i17), L.Z(i13 << 3), iW);
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 16:
                    if ((i8 & i12) != 0) {
                        long j10 = unsafe.getLong(obj, j8);
                        iZ = L.Z(i13 << 3);
                        iA0 = L.a0((j10 >> 63) ^ (j10 + j10));
                        iH = iA0 + iZ;
                        iW += iH;
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 17:
                    if ((i8 & i12) != 0) {
                        iH = L.W(i13, (E) unsafe.getObject(obj, j8), o(i10));
                        iW += iH;
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 18:
                    iH = y0.A(i13, (List) unsafe.getObject(obj, j8));
                    iW += iH;
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 19:
                    iH = y0.y(i13, (List) unsafe.getObject(obj, j8));
                    iW += iH;
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 20:
                    iH = y0.F(i13, (List) unsafe.getObject(obj, j8));
                    iW += iH;
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 21:
                    iH = y0.Q(i13, (List) unsafe.getObject(obj, j8));
                    iW += iH;
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 22:
                    iH = y0.D(i13, (List) unsafe.getObject(obj, j8));
                    iW += iH;
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 23:
                    iH = y0.A(i13, (List) unsafe.getObject(obj, j8));
                    iW += iH;
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 24:
                    iH = y0.y(i13, (List) unsafe.getObject(obj, j8));
                    iW += iH;
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 25:
                    iH = y0.u(i13, (List) unsafe.getObject(obj, j8));
                    iW += iH;
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case Service.BILLING_FIELD_NUMBER /* 26 */:
                    iH = y0.N(i13, (List) unsafe.getObject(obj, j8));
                    iW += iH;
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 27:
                    iH = y0.I(i13, (List) unsafe.getObject(obj, j8), o(i10));
                    iW += iH;
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case Service.MONITORING_FIELD_NUMBER /* 28 */:
                    iH = y0.v(i13, (List) unsafe.getObject(obj, j8));
                    iW += iH;
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                    iH = y0.O(i13, (List) unsafe.getObject(obj, j8));
                    iW += iH;
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                    iH = y0.w(i13, (List) unsafe.getObject(obj, j8));
                    iW += iH;
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                    iH = y0.y(i13, (List) unsafe.getObject(obj, j8));
                    iW += iH;
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 32:
                    iH = y0.A(i13, (List) unsafe.getObject(obj, j8));
                    iW += iH;
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 33:
                    iH = y0.J(i13, (List) unsafe.getObject(obj, j8));
                    iW += iH;
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                    iH = y0.L(i13, (List) unsafe.getObject(obj, j8));
                    iW += iH;
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 35:
                    int iB = y0.B((List) unsafe.getObject(obj, j8));
                    if (iB > 0) {
                        iW = AbstractC2090uc.n(i13 << 3, L.Z(iB), iB, iW);
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                    int iZ2 = y0.z((List) unsafe.getObject(obj, j8));
                    if (iZ2 > 0) {
                        iW = AbstractC2090uc.n(i13 << 3, L.Z(iZ2), iZ2, iW);
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 37:
                    int iG = y0.G((List) unsafe.getObject(obj, j8));
                    if (iG > 0) {
                        iW = AbstractC2090uc.n(i13 << 3, L.Z(iG), iG, iW);
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 38:
                    int iR = y0.R((List) unsafe.getObject(obj, j8));
                    if (iR > 0) {
                        iW = AbstractC2090uc.n(i13 << 3, L.Z(iR), iR, iW);
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                    int iE = y0.E((List) unsafe.getObject(obj, j8));
                    if (iE > 0) {
                        iW = AbstractC2090uc.n(i13 << 3, L.Z(iE), iE, iW);
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                    int iB2 = y0.B((List) unsafe.getObject(obj, j8));
                    if (iB2 > 0) {
                        iW = AbstractC2090uc.n(i13 << 3, L.Z(iB2), iB2, iW);
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
                    int iZ3 = y0.z((List) unsafe.getObject(obj, j8));
                    if (iZ3 > 0) {
                        iW = AbstractC2090uc.n(i13 << 3, L.Z(iZ3), iZ3, iW);
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                    List list = (List) unsafe.getObject(obj, j8);
                    Class cls = y0.f22396a;
                    int size = list.size();
                    if (size > 0) {
                        iW = AbstractC2090uc.n(i13 << 3, L.Z(size), size, iW);
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 43:
                    int iP = y0.P((List) unsafe.getObject(obj, j8));
                    if (iP > 0) {
                        iW = AbstractC2090uc.n(i13 << 3, L.Z(iP), iP, iW);
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                    int iX = y0.x((List) unsafe.getObject(obj, j8));
                    if (iX > 0) {
                        iW = AbstractC2090uc.n(i13 << 3, L.Z(iX), iX, iW);
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                    int iZ4 = y0.z((List) unsafe.getObject(obj, j8));
                    if (iZ4 > 0) {
                        iW = AbstractC2090uc.n(i13 << 3, L.Z(iZ4), iZ4, iW);
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 46:
                    int iB3 = y0.B((List) unsafe.getObject(obj, j8));
                    if (iB3 > 0) {
                        iW = AbstractC2090uc.n(i13 << 3, L.Z(iB3), iB3, iW);
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 47:
                    int iK = y0.K((List) unsafe.getObject(obj, j8));
                    if (iK > 0) {
                        iW = AbstractC2090uc.n(i13 << 3, L.Z(iK), iK, iW);
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 48:
                    int iM2 = y0.M((List) unsafe.getObject(obj, j8));
                    if (iM2 > 0) {
                        iW = AbstractC2090uc.n(i13 << 3, L.Z(iM2), iM2, iW);
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 49:
                    iH = y0.C(i13, (List) unsafe.getObject(obj, j8), o(i10));
                    iW += iH;
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 50:
                    int i18 = i10 / 3;
                    C2395k0.a(unsafe.getObject(obj, j8), this.f22351b[i18 + i18]);
                    throw null;
                case 51:
                    if (g(i13, obj, i10)) {
                        iW = AbstractC2090uc.w(i13 << 3, 8, iW);
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 52:
                    if (g(i13, obj, i10)) {
                        iW = AbstractC2090uc.w(i13 << 3, 4, iW);
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 53:
                    if (g(i13, obj, i10)) {
                        iW = AbstractC2090uc.w(i13 << 3, L.a0(n(obj, j8)), iW);
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 54:
                    if (g(i13, obj, i10)) {
                        iW = AbstractC2090uc.w(i13 << 3, L.a0(n(obj, j8)), iW);
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 55:
                    if (g(i13, obj, i10)) {
                        iW = AbstractC2090uc.w(i13 << 3, L.X(k(obj, j8)), iW);
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 56:
                    if (g(i13, obj, i10)) {
                        iW = AbstractC2090uc.w(i13 << 3, 8, iW);
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 57:
                    if (g(i13, obj, i10)) {
                        iW = AbstractC2090uc.w(i13 << 3, 4, iW);
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 58:
                    if (g(i13, obj, i10)) {
                        iW = AbstractC2090uc.w(i13 << 3, 1, iW);
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 59:
                    if (g(i13, obj, i10)) {
                        Object object2 = unsafe.getObject(obj, j8);
                        if (object2 instanceof J) {
                            Logger logger3 = L.f22274g;
                            int iN3 = ((J) object2).n();
                            iW = AbstractC2090uc.w(i13 << 3, L.Z(iN3) + iN3, iW);
                        } else {
                            iW = AbstractC2090uc.w(i13 << 3, L.Y((String) object2), iW);
                        }
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                    if (g(i13, obj, i10)) {
                        iH = y0.H(i13, o(i10), unsafe.getObject(obj, j8));
                        iW += iH;
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 61:
                    if (g(i13, obj, i10)) {
                        J j11 = (J) unsafe.getObject(obj, j8);
                        Logger logger4 = L.f22274g;
                        int iN4 = j11.n();
                        iW = AbstractC2090uc.w(i13 << 3, L.Z(iN4) + iN4, iW);
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 62:
                    if (g(i13, obj, i10)) {
                        iW = AbstractC2090uc.w(i13 << 3, L.Z(k(obj, j8)), iW);
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 63:
                    if (g(i13, obj, i10)) {
                        iW = AbstractC2090uc.w(i13 << 3, L.X(k(obj, j8)), iW);
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                    if (g(i13, obj, i10)) {
                        iW = AbstractC2090uc.w(i13 << 3, 4, iW);
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 65:
                    if (g(i13, obj, i10)) {
                        iW = AbstractC2090uc.w(i13 << 3, 8, iW);
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 66:
                    if (g(i13, obj, i10)) {
                        int iK2 = k(obj, j8);
                        iW = AbstractC2090uc.w((iK2 >> 31) ^ (iK2 + iK2), L.Z(i13 << 3), iW);
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 67:
                    if (g(i13, obj, i10)) {
                        long jN = n(obj, j8);
                        iZ = L.Z(i13 << 3);
                        iA0 = L.a0((jN >> 63) ^ (jN + jN));
                        iH = iA0 + iZ;
                        iW += iH;
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                case 68:
                    if (g(i13, obj, i10)) {
                        iH = L.W(i13, (E) unsafe.getObject(obj, j8), o(i10));
                        iW += iH;
                    }
                    i10 += 3;
                    i9 = 1048575;
                    break;
                default:
                    i10 += 3;
                    i9 = 1048575;
                    break;
            }
        }
    }

    public final int m(int i8) {
        return this.f22350a[i8 + 1];
    }

    public final InterfaceC2418w0 o(int i8) {
        int i9 = i8 / 3;
        int i10 = i9 + i9;
        Object[] objArr = this.f22351b;
        InterfaceC2418w0 interfaceC2418w0 = (InterfaceC2418w0) objArr[i10];
        if (interfaceC2418w0 != null) {
            return interfaceC2418w0;
        }
        InterfaceC2418w0 interfaceC2418w0A = C2414u0.f22373c.a((Class) objArr[i10 + 1]);
        objArr[i10] = interfaceC2418w0A;
        return interfaceC2418w0A;
    }

    public final void q(int i8, Object obj, Object obj2) {
        if (e(i8, obj2)) {
            long jM = m(i8) & 1048575;
            Unsafe unsafe = f22349j;
            Object object = unsafe.getObject(obj2, jM);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.f22350a[i8] + " is present but null: " + obj2.toString());
            }
            InterfaceC2418w0 interfaceC2418w0O = o(i8);
            if (!e(i8, obj)) {
                if (f(object)) {
                    U uZzc = interfaceC2418w0O.zzc();
                    interfaceC2418w0O.b(uZzc, object);
                    unsafe.putObject(obj, jM, uZzc);
                } else {
                    unsafe.putObject(obj, jM, object);
                }
                s(i8, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, jM);
            if (!f(object2)) {
                U uZzc2 = interfaceC2418w0O.zzc();
                interfaceC2418w0O.b(uZzc2, object2);
                unsafe.putObject(obj, jM, uZzc2);
                object2 = uZzc2;
            }
            interfaceC2418w0O.b(object2, object);
        }
    }

    public final void r(int i8, Object obj, Object obj2) {
        int[] iArr = this.f22350a;
        int i9 = iArr[i8];
        if (g(i9, obj2, i8)) {
            long jM = m(i8) & 1048575;
            Unsafe unsafe = f22349j;
            Object object = unsafe.getObject(obj2, jM);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + iArr[i8] + " is present but null: " + obj2.toString());
            }
            InterfaceC2418w0 interfaceC2418w0O = o(i8);
            if (!g(i9, obj, i8)) {
                if (f(object)) {
                    U uZzc = interfaceC2418w0O.zzc();
                    interfaceC2418w0O.b(uZzc, object);
                    unsafe.putObject(obj, jM, uZzc);
                } else {
                    unsafe.putObject(obj, jM, object);
                }
                I0.k(obj, iArr[i8 + 2] & 1048575, i9);
                return;
            }
            Object object2 = unsafe.getObject(obj, jM);
            if (!f(object2)) {
                U uZzc2 = interfaceC2418w0O.zzc();
                interfaceC2418w0O.b(uZzc2, object2);
                unsafe.putObject(obj, jM, uZzc2);
                object2 = uZzc2;
            }
            interfaceC2418w0O.b(object2, object);
        }
    }

    public final void s(int i8, Object obj) {
        int i9 = this.f22350a[i8 + 2];
        long j8 = 1048575 & i9;
        if (j8 == 1048575) {
            return;
        }
        I0.k(obj, j8, (1 << (i9 >>> 20)) | I0.f(obj, j8));
    }

    public final boolean t(int i8, Object obj, Object obj2) {
        return e(i8, obj) == e(i8, obj2);
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.InterfaceC2418w0
    public final int zza(Object obj) {
        int iH;
        int iZ;
        int iA0;
        if (!this.f22353d) {
            return j(obj);
        }
        int i8 = 0;
        int iW = 0;
        while (true) {
            int[] iArr = this.f22350a;
            if (i8 >= iArr.length) {
                this.f22357h.getClass();
                return A0.a(A0.b(obj)) + iW;
            }
            int iM = m(i8);
            int iL = l(iM);
            int i9 = iArr[i8];
            int i10 = iM & 1048575;
            if (iL >= Q.f22285H.zza() && iL <= Q.f22286I.zza()) {
                int i11 = iArr[i8 + 2];
            }
            long j8 = i10;
            Unsafe unsafe = f22349j;
            switch (iL) {
                case 0:
                    if (e(i8, obj)) {
                        iW = AbstractC2090uc.w(i9 << 3, 8, iW);
                    }
                    i8 += 3;
                    break;
                case 1:
                    if (e(i8, obj)) {
                        iW = AbstractC2090uc.w(i9 << 3, 4, iW);
                    }
                    i8 += 3;
                    break;
                case 2:
                    if (e(i8, obj)) {
                        iW = AbstractC2090uc.w(i9 << 3, L.a0(I0.g(obj, j8)), iW);
                    }
                    i8 += 3;
                    break;
                case 3:
                    if (e(i8, obj)) {
                        iW = AbstractC2090uc.w(i9 << 3, L.a0(I0.g(obj, j8)), iW);
                    }
                    i8 += 3;
                    break;
                case 4:
                    if (e(i8, obj)) {
                        iW = AbstractC2090uc.w(i9 << 3, L.X(I0.f(obj, j8)), iW);
                    }
                    i8 += 3;
                    break;
                case 5:
                    if (e(i8, obj)) {
                        iW = AbstractC2090uc.w(i9 << 3, 8, iW);
                    }
                    i8 += 3;
                    break;
                case 6:
                    if (e(i8, obj)) {
                        iW = AbstractC2090uc.w(i9 << 3, 4, iW);
                    }
                    i8 += 3;
                    break;
                case 7:
                    if (e(i8, obj)) {
                        iW = AbstractC2090uc.w(i9 << 3, 1, iW);
                    }
                    i8 += 3;
                    break;
                case 8:
                    if (e(i8, obj)) {
                        Object objI = I0.i(obj, j8);
                        if (objI instanceof J) {
                            Logger logger = L.f22274g;
                            int iN = ((J) objI).n();
                            iW = AbstractC2090uc.w(i9 << 3, L.Z(iN) + iN, iW);
                        } else {
                            iW = AbstractC2090uc.w(i9 << 3, L.Y((String) objI), iW);
                        }
                    }
                    i8 += 3;
                    break;
                case 9:
                    if (e(i8, obj)) {
                        iH = y0.H(i9, o(i8), I0.i(obj, j8));
                        iW = iH + iW;
                    }
                    i8 += 3;
                    break;
                case 10:
                    if (e(i8, obj)) {
                        J j9 = (J) I0.i(obj, j8);
                        Logger logger2 = L.f22274g;
                        int iN2 = j9.n();
                        iW = AbstractC2090uc.w(i9 << 3, L.Z(iN2) + iN2, iW);
                    }
                    i8 += 3;
                    break;
                case 11:
                    if (e(i8, obj)) {
                        iW = AbstractC2090uc.w(i9 << 3, L.Z(I0.f(obj, j8)), iW);
                    }
                    i8 += 3;
                    break;
                case 12:
                    if (e(i8, obj)) {
                        iW = AbstractC2090uc.w(i9 << 3, L.X(I0.f(obj, j8)), iW);
                    }
                    i8 += 3;
                    break;
                case 13:
                    if (e(i8, obj)) {
                        iW = AbstractC2090uc.w(i9 << 3, 4, iW);
                    }
                    i8 += 3;
                    break;
                case 14:
                    if (e(i8, obj)) {
                        iW = AbstractC2090uc.w(i9 << 3, 8, iW);
                    }
                    i8 += 3;
                    break;
                case 15:
                    if (e(i8, obj)) {
                        int iF = I0.f(obj, j8);
                        iW = AbstractC2090uc.w((iF >> 31) ^ (iF + iF), L.Z(i9 << 3), iW);
                    }
                    i8 += 3;
                    break;
                case 16:
                    if (e(i8, obj)) {
                        long jG = I0.g(obj, j8);
                        iZ = L.Z(i9 << 3);
                        iA0 = L.a0((jG >> 63) ^ (jG + jG));
                        iH = iA0 + iZ;
                        iW = iH + iW;
                    }
                    i8 += 3;
                    break;
                case 17:
                    if (e(i8, obj)) {
                        iH = L.W(i9, (E) I0.i(obj, j8), o(i8));
                        iW = iH + iW;
                    }
                    i8 += 3;
                    break;
                case 18:
                    iH = y0.A(i9, (List) I0.i(obj, j8));
                    iW = iH + iW;
                    i8 += 3;
                    break;
                case 19:
                    iH = y0.y(i9, (List) I0.i(obj, j8));
                    iW = iH + iW;
                    i8 += 3;
                    break;
                case 20:
                    iH = y0.F(i9, (List) I0.i(obj, j8));
                    iW = iH + iW;
                    i8 += 3;
                    break;
                case 21:
                    iH = y0.Q(i9, (List) I0.i(obj, j8));
                    iW = iH + iW;
                    i8 += 3;
                    break;
                case 22:
                    iH = y0.D(i9, (List) I0.i(obj, j8));
                    iW = iH + iW;
                    i8 += 3;
                    break;
                case 23:
                    iH = y0.A(i9, (List) I0.i(obj, j8));
                    iW = iH + iW;
                    i8 += 3;
                    break;
                case 24:
                    iH = y0.y(i9, (List) I0.i(obj, j8));
                    iW = iH + iW;
                    i8 += 3;
                    break;
                case 25:
                    iH = y0.u(i9, (List) I0.i(obj, j8));
                    iW = iH + iW;
                    i8 += 3;
                    break;
                case Service.BILLING_FIELD_NUMBER /* 26 */:
                    iH = y0.N(i9, (List) I0.i(obj, j8));
                    iW = iH + iW;
                    i8 += 3;
                    break;
                case 27:
                    iH = y0.I(i9, (List) I0.i(obj, j8), o(i8));
                    iW = iH + iW;
                    i8 += 3;
                    break;
                case Service.MONITORING_FIELD_NUMBER /* 28 */:
                    iH = y0.v(i9, (List) I0.i(obj, j8));
                    iW = iH + iW;
                    i8 += 3;
                    break;
                case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                    iH = y0.O(i9, (List) I0.i(obj, j8));
                    iW = iH + iW;
                    i8 += 3;
                    break;
                case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                    iH = y0.w(i9, (List) I0.i(obj, j8));
                    iW = iH + iW;
                    i8 += 3;
                    break;
                case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                    iH = y0.y(i9, (List) I0.i(obj, j8));
                    iW = iH + iW;
                    i8 += 3;
                    break;
                case 32:
                    iH = y0.A(i9, (List) I0.i(obj, j8));
                    iW = iH + iW;
                    i8 += 3;
                    break;
                case 33:
                    iH = y0.J(i9, (List) I0.i(obj, j8));
                    iW = iH + iW;
                    i8 += 3;
                    break;
                case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                    iH = y0.L(i9, (List) I0.i(obj, j8));
                    iW = iH + iW;
                    i8 += 3;
                    break;
                case 35:
                    int iB = y0.B((List) unsafe.getObject(obj, j8));
                    if (iB > 0) {
                        iW = AbstractC2090uc.n(i9 << 3, L.Z(iB), iB, iW);
                    }
                    i8 += 3;
                    break;
                case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                    int iZ2 = y0.z((List) unsafe.getObject(obj, j8));
                    if (iZ2 > 0) {
                        iW = AbstractC2090uc.n(i9 << 3, L.Z(iZ2), iZ2, iW);
                    }
                    i8 += 3;
                    break;
                case 37:
                    int iG = y0.G((List) unsafe.getObject(obj, j8));
                    if (iG > 0) {
                        iW = AbstractC2090uc.n(i9 << 3, L.Z(iG), iG, iW);
                    }
                    i8 += 3;
                    break;
                case 38:
                    int iR = y0.R((List) unsafe.getObject(obj, j8));
                    if (iR > 0) {
                        iW = AbstractC2090uc.n(i9 << 3, L.Z(iR), iR, iW);
                    }
                    i8 += 3;
                    break;
                case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                    int iE = y0.E((List) unsafe.getObject(obj, j8));
                    if (iE > 0) {
                        iW = AbstractC2090uc.n(i9 << 3, L.Z(iE), iE, iW);
                    }
                    i8 += 3;
                    break;
                case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                    int iB2 = y0.B((List) unsafe.getObject(obj, j8));
                    if (iB2 > 0) {
                        iW = AbstractC2090uc.n(i9 << 3, L.Z(iB2), iB2, iW);
                    }
                    i8 += 3;
                    break;
                case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
                    int iZ3 = y0.z((List) unsafe.getObject(obj, j8));
                    if (iZ3 > 0) {
                        iW = AbstractC2090uc.n(i9 << 3, L.Z(iZ3), iZ3, iW);
                    }
                    i8 += 3;
                    break;
                case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                    List list = (List) unsafe.getObject(obj, j8);
                    Class cls = y0.f22396a;
                    int size = list.size();
                    if (size > 0) {
                        iW = AbstractC2090uc.n(i9 << 3, L.Z(size), size, iW);
                    }
                    i8 += 3;
                    break;
                case 43:
                    int iP = y0.P((List) unsafe.getObject(obj, j8));
                    if (iP > 0) {
                        iW = AbstractC2090uc.n(i9 << 3, L.Z(iP), iP, iW);
                    }
                    i8 += 3;
                    break;
                case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                    int iX = y0.x((List) unsafe.getObject(obj, j8));
                    if (iX > 0) {
                        iW = AbstractC2090uc.n(i9 << 3, L.Z(iX), iX, iW);
                    }
                    i8 += 3;
                    break;
                case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                    int iZ4 = y0.z((List) unsafe.getObject(obj, j8));
                    if (iZ4 > 0) {
                        iW = AbstractC2090uc.n(i9 << 3, L.Z(iZ4), iZ4, iW);
                    }
                    i8 += 3;
                    break;
                case 46:
                    int iB3 = y0.B((List) unsafe.getObject(obj, j8));
                    if (iB3 > 0) {
                        iW = AbstractC2090uc.n(i9 << 3, L.Z(iB3), iB3, iW);
                    }
                    i8 += 3;
                    break;
                case 47:
                    int iK = y0.K((List) unsafe.getObject(obj, j8));
                    if (iK > 0) {
                        iW = AbstractC2090uc.n(i9 << 3, L.Z(iK), iK, iW);
                    }
                    i8 += 3;
                    break;
                case 48:
                    int iM2 = y0.M((List) unsafe.getObject(obj, j8));
                    if (iM2 > 0) {
                        iW = AbstractC2090uc.n(i9 << 3, L.Z(iM2), iM2, iW);
                    }
                    i8 += 3;
                    break;
                case 49:
                    iH = y0.C(i9, (List) I0.i(obj, j8), o(i8));
                    iW = iH + iW;
                    i8 += 3;
                    break;
                case 50:
                    int i12 = i8 / 3;
                    C2395k0.a(I0.i(obj, j8), this.f22351b[i12 + i12]);
                    throw null;
                case 51:
                    if (g(i9, obj, i8)) {
                        iW = AbstractC2090uc.w(i9 << 3, 8, iW);
                    }
                    i8 += 3;
                    break;
                case 52:
                    if (g(i9, obj, i8)) {
                        iW = AbstractC2090uc.w(i9 << 3, 4, iW);
                    }
                    i8 += 3;
                    break;
                case 53:
                    if (g(i9, obj, i8)) {
                        iW = AbstractC2090uc.w(i9 << 3, L.a0(n(obj, j8)), iW);
                    }
                    i8 += 3;
                    break;
                case 54:
                    if (g(i9, obj, i8)) {
                        iW = AbstractC2090uc.w(i9 << 3, L.a0(n(obj, j8)), iW);
                    }
                    i8 += 3;
                    break;
                case 55:
                    if (g(i9, obj, i8)) {
                        iW = AbstractC2090uc.w(i9 << 3, L.X(k(obj, j8)), iW);
                    }
                    i8 += 3;
                    break;
                case 56:
                    if (g(i9, obj, i8)) {
                        iW = AbstractC2090uc.w(i9 << 3, 8, iW);
                    }
                    i8 += 3;
                    break;
                case 57:
                    if (g(i9, obj, i8)) {
                        iW = AbstractC2090uc.w(i9 << 3, 4, iW);
                    }
                    i8 += 3;
                    break;
                case 58:
                    if (g(i9, obj, i8)) {
                        iW = AbstractC2090uc.w(i9 << 3, 1, iW);
                    }
                    i8 += 3;
                    break;
                case 59:
                    if (g(i9, obj, i8)) {
                        Object objI2 = I0.i(obj, j8);
                        if (objI2 instanceof J) {
                            Logger logger3 = L.f22274g;
                            int iN3 = ((J) objI2).n();
                            iW = AbstractC2090uc.w(i9 << 3, L.Z(iN3) + iN3, iW);
                        } else {
                            iW = AbstractC2090uc.w(i9 << 3, L.Y((String) objI2), iW);
                        }
                    }
                    i8 += 3;
                    break;
                case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                    if (g(i9, obj, i8)) {
                        iH = y0.H(i9, o(i8), I0.i(obj, j8));
                        iW = iH + iW;
                    }
                    i8 += 3;
                    break;
                case 61:
                    if (g(i9, obj, i8)) {
                        J j10 = (J) I0.i(obj, j8);
                        Logger logger4 = L.f22274g;
                        int iN4 = j10.n();
                        iW = AbstractC2090uc.w(i9 << 3, L.Z(iN4) + iN4, iW);
                    }
                    i8 += 3;
                    break;
                case 62:
                    if (g(i9, obj, i8)) {
                        iW = AbstractC2090uc.w(i9 << 3, L.Z(k(obj, j8)), iW);
                    }
                    i8 += 3;
                    break;
                case 63:
                    if (g(i9, obj, i8)) {
                        iW = AbstractC2090uc.w(i9 << 3, L.X(k(obj, j8)), iW);
                    }
                    i8 += 3;
                    break;
                case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                    if (g(i9, obj, i8)) {
                        iW = AbstractC2090uc.w(i9 << 3, 4, iW);
                    }
                    i8 += 3;
                    break;
                case 65:
                    if (g(i9, obj, i8)) {
                        iW = AbstractC2090uc.w(i9 << 3, 8, iW);
                    }
                    i8 += 3;
                    break;
                case 66:
                    if (g(i9, obj, i8)) {
                        int iK2 = k(obj, j8);
                        iW = AbstractC2090uc.w((iK2 >> 31) ^ (iK2 + iK2), L.Z(i9 << 3), iW);
                    }
                    i8 += 3;
                    break;
                case 67:
                    if (g(i9, obj, i8)) {
                        long jN = n(obj, j8);
                        iZ = L.Z(i9 << 3);
                        iA0 = L.a0((jN >> 63) ^ (jN + jN));
                        iH = iA0 + iZ;
                        iW = iH + iW;
                    }
                    i8 += 3;
                    break;
                case 68:
                    if (g(i9, obj, i8)) {
                        iH = L.W(i9, (E) I0.i(obj, j8), o(i8));
                        iW = iH + iW;
                    }
                    i8 += 3;
                    break;
                default:
                    i8 += 3;
                    break;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00db A[PHI: r3
      0x00db: PHI (r3v33 int) = (r3v11 int), (r3v34 int) binds: [B:84:0x01e9, B:42:0x00d9] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.gms.internal.atv_ads_framework.InterfaceC2418w0
    public final int zzb(Object obj) {
        int i8;
        long jDoubleToLongBits;
        int i9;
        int iFloatToIntBits;
        int i10;
        int[] iArr = this.f22350a;
        int length = iArr.length;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12 += 3) {
            int iM = m(i12);
            int i13 = iArr[i12];
            long j8 = 1048575 & iM;
            int i14 = 1237;
            int iHashCode = 37;
            switch (l(iM)) {
                case 0:
                    i8 = i11 * 53;
                    jDoubleToLongBits = Double.doubleToLongBits(I0.f22265c.a(obj, j8));
                    Charset charset = Z.f22301a;
                    i11 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 1:
                    i9 = i11 * 53;
                    iFloatToIntBits = Float.floatToIntBits(I0.f22265c.b(obj, j8));
                    i11 = iFloatToIntBits + i9;
                    break;
                case 2:
                    i8 = i11 * 53;
                    jDoubleToLongBits = I0.g(obj, j8);
                    Charset charset2 = Z.f22301a;
                    i11 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 3:
                    i8 = i11 * 53;
                    jDoubleToLongBits = I0.g(obj, j8);
                    Charset charset3 = Z.f22301a;
                    i11 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 4:
                    i9 = i11 * 53;
                    iFloatToIntBits = I0.f(obj, j8);
                    i11 = iFloatToIntBits + i9;
                    break;
                case 5:
                    i8 = i11 * 53;
                    jDoubleToLongBits = I0.g(obj, j8);
                    Charset charset4 = Z.f22301a;
                    i11 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 6:
                    i9 = i11 * 53;
                    iFloatToIntBits = I0.f(obj, j8);
                    i11 = iFloatToIntBits + i9;
                    break;
                case 7:
                    i10 = i11 * 53;
                    boolean zG = I0.f22265c.g(obj, j8);
                    Charset charset5 = Z.f22301a;
                    if (zG) {
                        i14 = 1231;
                    }
                    i11 = i14 + i10;
                    break;
                case 8:
                    i9 = i11 * 53;
                    iFloatToIntBits = ((String) I0.i(obj, j8)).hashCode();
                    i11 = iFloatToIntBits + i9;
                    break;
                case 9:
                    Object objI = I0.i(obj, j8);
                    if (objI != null) {
                        iHashCode = objI.hashCode();
                    }
                    i11 = (i11 * 53) + iHashCode;
                    break;
                case 10:
                    i9 = i11 * 53;
                    iFloatToIntBits = I0.i(obj, j8).hashCode();
                    i11 = iFloatToIntBits + i9;
                    break;
                case 11:
                    i9 = i11 * 53;
                    iFloatToIntBits = I0.f(obj, j8);
                    i11 = iFloatToIntBits + i9;
                    break;
                case 12:
                    i9 = i11 * 53;
                    iFloatToIntBits = I0.f(obj, j8);
                    i11 = iFloatToIntBits + i9;
                    break;
                case 13:
                    i9 = i11 * 53;
                    iFloatToIntBits = I0.f(obj, j8);
                    i11 = iFloatToIntBits + i9;
                    break;
                case 14:
                    i8 = i11 * 53;
                    jDoubleToLongBits = I0.g(obj, j8);
                    Charset charset6 = Z.f22301a;
                    i11 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 15:
                    i9 = i11 * 53;
                    iFloatToIntBits = I0.f(obj, j8);
                    i11 = iFloatToIntBits + i9;
                    break;
                case 16:
                    i8 = i11 * 53;
                    jDoubleToLongBits = I0.g(obj, j8);
                    Charset charset7 = Z.f22301a;
                    i11 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 17:
                    Object objI2 = I0.i(obj, j8);
                    if (objI2 != null) {
                        iHashCode = objI2.hashCode();
                    }
                    i11 = (i11 * 53) + iHashCode;
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
                    i9 = i11 * 53;
                    iFloatToIntBits = I0.i(obj, j8).hashCode();
                    i11 = iFloatToIntBits + i9;
                    break;
                case 50:
                    i9 = i11 * 53;
                    iFloatToIntBits = I0.i(obj, j8).hashCode();
                    i11 = iFloatToIntBits + i9;
                    break;
                case 51:
                    if (g(i13, obj, i12)) {
                        i8 = i11 * 53;
                        jDoubleToLongBits = Double.doubleToLongBits(((Double) I0.i(obj, j8)).doubleValue());
                        Charset charset8 = Z.f22301a;
                        i11 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 52:
                    if (g(i13, obj, i12)) {
                        i9 = i11 * 53;
                        iFloatToIntBits = Float.floatToIntBits(((Float) I0.i(obj, j8)).floatValue());
                        i11 = iFloatToIntBits + i9;
                    }
                    break;
                case 53:
                    if (g(i13, obj, i12)) {
                        i8 = i11 * 53;
                        jDoubleToLongBits = n(obj, j8);
                        Charset charset9 = Z.f22301a;
                        i11 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 54:
                    if (g(i13, obj, i12)) {
                        i8 = i11 * 53;
                        jDoubleToLongBits = n(obj, j8);
                        Charset charset10 = Z.f22301a;
                        i11 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 55:
                    if (g(i13, obj, i12)) {
                        i9 = i11 * 53;
                        iFloatToIntBits = k(obj, j8);
                        i11 = iFloatToIntBits + i9;
                    }
                    break;
                case 56:
                    if (g(i13, obj, i12)) {
                        i8 = i11 * 53;
                        jDoubleToLongBits = n(obj, j8);
                        Charset charset11 = Z.f22301a;
                        i11 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 57:
                    if (g(i13, obj, i12)) {
                        i9 = i11 * 53;
                        iFloatToIntBits = k(obj, j8);
                        i11 = iFloatToIntBits + i9;
                    }
                    break;
                case 58:
                    if (g(i13, obj, i12)) {
                        i10 = i11 * 53;
                        boolean zBooleanValue = ((Boolean) I0.i(obj, j8)).booleanValue();
                        Charset charset12 = Z.f22301a;
                        if (zBooleanValue) {
                            i14 = 1231;
                        }
                        i11 = i14 + i10;
                    }
                    break;
                case 59:
                    if (g(i13, obj, i12)) {
                        i9 = i11 * 53;
                        iFloatToIntBits = ((String) I0.i(obj, j8)).hashCode();
                        i11 = iFloatToIntBits + i9;
                    }
                    break;
                case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                    if (g(i13, obj, i12)) {
                        i9 = i11 * 53;
                        iFloatToIntBits = I0.i(obj, j8).hashCode();
                        i11 = iFloatToIntBits + i9;
                    }
                    break;
                case 61:
                    if (g(i13, obj, i12)) {
                        i9 = i11 * 53;
                        iFloatToIntBits = I0.i(obj, j8).hashCode();
                        i11 = iFloatToIntBits + i9;
                    }
                    break;
                case 62:
                    if (g(i13, obj, i12)) {
                        i9 = i11 * 53;
                        iFloatToIntBits = k(obj, j8);
                        i11 = iFloatToIntBits + i9;
                    }
                    break;
                case 63:
                    if (g(i13, obj, i12)) {
                        i9 = i11 * 53;
                        iFloatToIntBits = k(obj, j8);
                        i11 = iFloatToIntBits + i9;
                    }
                    break;
                case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                    if (g(i13, obj, i12)) {
                        i9 = i11 * 53;
                        iFloatToIntBits = k(obj, j8);
                        i11 = iFloatToIntBits + i9;
                    }
                    break;
                case 65:
                    if (g(i13, obj, i12)) {
                        i8 = i11 * 53;
                        jDoubleToLongBits = n(obj, j8);
                        Charset charset13 = Z.f22301a;
                        i11 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 66:
                    if (g(i13, obj, i12)) {
                        i9 = i11 * 53;
                        iFloatToIntBits = k(obj, j8);
                        i11 = iFloatToIntBits + i9;
                    }
                    break;
                case 67:
                    if (g(i13, obj, i12)) {
                        i8 = i11 * 53;
                        jDoubleToLongBits = n(obj, j8);
                        Charset charset14 = Z.f22301a;
                        i11 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 68:
                    if (g(i13, obj, i12)) {
                        i9 = i11 * 53;
                        iFloatToIntBits = I0.i(obj, j8).hashCode();
                        i11 = iFloatToIntBits + i9;
                    }
                    break;
            }
        }
        this.f22357h.getClass();
        ((U) obj).zzc.getClass();
        return (i11 * 53) + 506991;
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.InterfaceC2418w0
    public final U zzc() {
        return (U) ((U) this.f22352c).d(4);
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.InterfaceC2418w0
    public final boolean zzg(Object obj, Object obj2) {
        boolean zT;
        int[] iArr = this.f22350a;
        int length = iArr.length;
        for (int i8 = 0; i8 < length; i8 += 3) {
            int iM = m(i8);
            long j8 = iM & 1048575;
            switch (l(iM)) {
                case 0:
                    if (t(i8, obj, obj2)) {
                        H0 h8 = I0.f22265c;
                        if (Double.doubleToLongBits(h8.a(obj, j8)) == Double.doubleToLongBits(h8.a(obj2, j8))) {
                            continue;
                            break;
                        }
                    }
                    return false;
                case 1:
                    if (t(i8, obj, obj2)) {
                        H0 h9 = I0.f22265c;
                        if (Float.floatToIntBits(h9.b(obj, j8)) == Float.floatToIntBits(h9.b(obj2, j8))) {
                            continue;
                            break;
                        }
                    }
                    return false;
                case 2:
                    if (!t(i8, obj, obj2) || I0.g(obj, j8) != I0.g(obj2, j8)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 3:
                    if (!t(i8, obj, obj2) || I0.g(obj, j8) != I0.g(obj2, j8)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 4:
                    if (!t(i8, obj, obj2) || I0.f(obj, j8) != I0.f(obj2, j8)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 5:
                    if (!t(i8, obj, obj2) || I0.g(obj, j8) != I0.g(obj2, j8)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 6:
                    if (!t(i8, obj, obj2) || I0.f(obj, j8) != I0.f(obj2, j8)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 7:
                    if (t(i8, obj, obj2)) {
                        H0 h10 = I0.f22265c;
                        if (h10.g(obj, j8) == h10.g(obj2, j8)) {
                            continue;
                            break;
                        }
                    }
                    return false;
                case 8:
                    if (!t(i8, obj, obj2) || !y0.t(I0.i(obj, j8), I0.i(obj2, j8))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 9:
                    if (!t(i8, obj, obj2) || !y0.t(I0.i(obj, j8), I0.i(obj2, j8))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 10:
                    if (!t(i8, obj, obj2) || !y0.t(I0.i(obj, j8), I0.i(obj2, j8))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 11:
                    if (!t(i8, obj, obj2) || I0.f(obj, j8) != I0.f(obj2, j8)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 12:
                    if (!t(i8, obj, obj2) || I0.f(obj, j8) != I0.f(obj2, j8)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 13:
                    if (!t(i8, obj, obj2) || I0.f(obj, j8) != I0.f(obj2, j8)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 14:
                    if (!t(i8, obj, obj2) || I0.g(obj, j8) != I0.g(obj2, j8)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 15:
                    if (!t(i8, obj, obj2) || I0.f(obj, j8) != I0.f(obj2, j8)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 16:
                    if (!t(i8, obj, obj2) || I0.g(obj, j8) != I0.g(obj2, j8)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 17:
                    if (!t(i8, obj, obj2) || !y0.t(I0.i(obj, j8), I0.i(obj2, j8))) {
                        return false;
                    }
                    continue;
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
                    zT = y0.t(I0.i(obj, j8), I0.i(obj2, j8));
                    break;
                case 50:
                    zT = y0.t(I0.i(obj, j8), I0.i(obj2, j8));
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
                    if (I0.f(obj, j9) != I0.f(obj2, j9) || !y0.t(I0.i(obj, j8), I0.i(obj2, j8))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                default:
                    continue;
                    break;
            }
            if (!zT) {
                return false;
            }
        }
        this.f22357h.getClass();
        return ((U) obj).zzc.equals(((U) obj2).zzc);
    }
}
