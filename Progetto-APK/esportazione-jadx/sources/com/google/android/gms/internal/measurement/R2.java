package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.ads.AbstractC2090uc;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.ads.SG;
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
public final class R2 implements Y2 {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int[] f22990j = new int[0];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Unsafe f22991k = AbstractC2565g3.j();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f22992a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object[] f22993b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f22994c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f22995d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final P2 f22996e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int[] f22997f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f22998g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f22999h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final C2622q2 f23000i;

    public R2(int[] iArr, Object[] objArr, int i8, int i9, P2 p7, int[] iArr2, int i10, int i11, C2622q2 c2622q2, S3.g gVar) {
        this.f22992a = iArr;
        this.f22993b = objArr;
        this.f22994c = i8;
        this.f22995d = i9;
        this.f22997f = iArr2;
        this.f22998g = i10;
        this.f22999h = i11;
        this.f23000i = c2622q2;
        this.f22996e = p7;
    }

    public static boolean m(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof AbstractC2631s2) {
            return ((AbstractC2631s2) obj).n();
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:169:0x0357  */
    /* JADX WARN: Code duplicated, block: B:184:0x03ad  */
    /* JADX WARN: Code duplicated, block: B:187:0x03bb  */
    public static R2 p(N2 n7, C2622q2 c2622q2, S3.g gVar) {
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
        Field fieldZ;
        int i29;
        char cCharAt9;
        int i30;
        int i31;
        int i32;
        Field fieldZ2;
        Field fieldZ3;
        int i33;
        char cCharAt10;
        int i34;
        char cCharAt11;
        int i35;
        char cCharAt12;
        int i36;
        char cCharAt13;
        if (!(n7 instanceof X2)) {
            A0.O.I(n7);
            throw null;
        }
        X2 x7 = (X2) n7;
        String strC = x7.c();
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
            iArr = f22990j;
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
        Object[] objArrD = x7.d();
        Class<?> cls2 = x7.a().getClass();
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
            Unsafe unsafe = f22991k;
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
                    if (x7.b() == 1 || i82 != 0) {
                        objArr[p000a.r.t(i70, 3, 1)] = objArrD[i10];
                        i10++;
                    } else {
                        i82 = 0;
                    }
                }
                int i91 = iCharAt12 + iCharAt12;
                Object obj = objArrD[i91];
                if (obj instanceof Field) {
                    fieldZ2 = (Field) obj;
                } else {
                    fieldZ2 = z(cls2, (String) obj);
                    objArrD[i91] = fieldZ2;
                }
                i25 = iCharAt11;
                int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldZ2);
                int i92 = i91 + 1;
                Object obj2 = objArrD[i92];
                if (obj2 instanceof Field) {
                    fieldZ3 = (Field) obj2;
                } else {
                    fieldZ3 = z(cls2, (String) obj2);
                    objArrD[i92] = fieldZ3;
                }
                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZ3);
                strC = strC;
                i38 = i90;
                iObjectFieldOffset = iObjectFieldOffset3;
                i27 = 0;
                x7 = x7;
                i28 = i10;
                cls = cls2;
            } else {
                iArr2 = iArr4;
                i25 = iCharAt11;
                int i93 = i10 + 1;
                Field fieldZ4 = z(cls2, (String) objArrD[i10]);
                Class<?> cls3 = cls2;
                if (i80 == 9 || i80 == 17) {
                    objArr[p000a.r.t(i70, 3, 1)] = fieldZ4.getType();
                } else {
                    if (i80 != 27) {
                        if (i80 == 49) {
                            i31 = i10 + 2;
                            i30 = 1;
                        } else if (i80 == 12 || i80 == 30 || i80 == 44) {
                            x7 = x7;
                            if (x7.b() == 1 || i82 != 0) {
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
                                x7 = x7;
                            } else {
                                i93 = i94;
                                i68 = i95;
                                i82 = 0;
                            }
                        }
                        iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZ4);
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
                                fieldZ = (Field) obj3;
                                cls = cls3;
                            } else {
                                cls = cls3;
                                fieldZ = z(cls, (String) obj3);
                                objArrD[i101] = fieldZ;
                            }
                            i27 = iCharAt13 % 32;
                            iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZ);
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
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZ4);
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
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZ4);
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
            x7 = x7;
            iArr4 = iArr2;
            c8 = 55296;
        }
        return new R2(iArr4, objArr, i9, i12, x7.a(), iArr, i11, i66, c2622q2, gVar);
    }

    public static int q(Object obj, long j8) {
        return ((Integer) AbstractC2565g3.i(obj, j8)).intValue();
    }

    public static int s(int i8) {
        return (i8 >>> 20) & 255;
    }

    public static long u(Object obj, long j8) {
        return ((Long) AbstractC2565g3.i(obj, j8)).longValue();
    }

    public static Field z(Class cls, String str) {
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

    /* JADX WARN: Code duplicated, block: B:42:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:44:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:47:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:50:0x00cc A[LOOP:1: B:45:0x00bb->B:50:0x00cc, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:62:0x00cb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:0x00f0 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.measurement.Y2
    public final boolean a(Object obj) {
        int i8;
        int i9;
        List list;
        Y2 y2W;
        int i10;
        int i11 = 1048575;
        int i12 = 0;
        int i13 = 0;
        while (i13 < this.f22998g) {
            int i14 = this.f22997f[i13];
            int[] iArr = this.f22992a;
            int i15 = iArr[i14];
            int iT = t(i14);
            int i16 = iArr[i14 + 2];
            int i17 = i16 & 1048575;
            int i18 = 1 << (i16 >>> 20);
            if (i17 != i11) {
                if (i17 != 1048575) {
                    i12 = f22991k.getInt(obj, i17);
                }
                i9 = i12;
                i8 = i17;
            } else {
                i8 = i11;
                i9 = i12;
            }
            if ((268435456 & iT) != 0 && !l(obj, i14, i8, i9, i18)) {
                return false;
            }
            int iS = s(iT);
            if (iS == 9 || iS == 17) {
                if (l(obj, i14, i8, i9, i18) && !w(i14).a(AbstractC2565g3.i(obj, iT & 1048575))) {
                    return false;
                }
            } else if (iS == 27) {
                list = (List) AbstractC2565g3.i(obj, iT & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    y2W = w(i14);
                    for (i10 = 0; i10 < list.size(); i10++) {
                        if (!y2W.a(list.get(i10))) {
                            return false;
                        }
                    }
                }
            } else if (iS == 60 || iS == 68) {
                if (n(i15, obj, i14) && !w(i14).a(AbstractC2565g3.i(obj, iT & 1048575))) {
                    return false;
                }
            } else if (iS == 49) {
                list = (List) AbstractC2565g3.i(obj, iT & 1048575);
                if (list.isEmpty()) {
                    y2W = w(i14);
                    while (i10 < list.size()) {
                        if (!y2W.a(list.get(i10))) {
                            return false;
                        }
                    }
                } else {
                    continue;
                }
            } else if (iS == 50 && !((L2) AbstractC2565g3.i(obj, iT & 1048575)).isEmpty()) {
                int i19 = i14 / 3;
                A0.O.I(this.f22993b[i19 + i19]);
                throw null;
            }
            i13++;
            i11 = i8;
            i12 = i9;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.Y2
    public final void b(Object obj, C2594l2 c2594l2) throws I0.u {
        int i8;
        int i9;
        int i10;
        int i11 = 1048575;
        boolean z7 = false;
        int i12 = 1048575;
        int i13 = 0;
        int i14 = 0;
        while (true) {
            int[] iArr = this.f22992a;
            if (i14 >= iArr.length) {
                ((AbstractC2631s2) obj).zzc.d(c2594l2);
                return;
            }
            int iT = t(i14);
            int iS = s(iT);
            int i15 = iArr[i14];
            Unsafe unsafe = f22991k;
            if (iS <= 17) {
                int i16 = iArr[i14 + 2];
                int i17 = i16 & i11;
                if (i17 != i12) {
                    i13 = i17 == i11 ? 0 : unsafe.getInt(obj, i17);
                    i12 = i17;
                }
                i9 = i13;
                i10 = 1 << (i16 >>> 20);
                i8 = i12;
            } else {
                i8 = i12;
                i9 = i13;
                i10 = 0;
            }
            long j8 = iT & i11;
            switch (iS) {
                case 0:
                    if (l(obj, i14, i8, i9, i10)) {
                        c2594l2.i(i15, AbstractC2565g3.d(obj, j8));
                    }
                    break;
                case 1:
                    if (l(obj, i14, i8, i9, i10)) {
                        c2594l2.m(i15, AbstractC2565g3.e(obj, j8));
                    }
                    break;
                case 2:
                    if (l(obj, i14, i8, i9, i10)) {
                        c2594l2.p(i15, unsafe.getLong(obj, j8));
                    }
                    break;
                case 3:
                    if (l(obj, i14, i8, i9, i10)) {
                        c2594l2.e(i15, unsafe.getLong(obj, j8));
                    }
                    break;
                case 4:
                    if (l(obj, i14, i8, i9, i10)) {
                        c2594l2.o(i15, unsafe.getInt(obj, j8));
                    }
                    break;
                case 5:
                    if (l(obj, i14, i8, i9, i10)) {
                        c2594l2.l(i15, unsafe.getLong(obj, j8));
                    }
                    break;
                case 6:
                    if (l(obj, i14, i8, i9, i10)) {
                        c2594l2.k(i15, unsafe.getInt(obj, j8));
                    }
                    break;
                case 7:
                    if (l(obj, i14, i8, i9, i10)) {
                        c2594l2.f(i15, AbstractC2565g3.t(obj, j8));
                    }
                    break;
                case 8:
                    if (l(obj, i14, i8, i9, i10)) {
                        Object object = unsafe.getObject(obj, j8);
                        if (object instanceof String) {
                            c2594l2.f23193a.x(i15, (String) object);
                        } else {
                            c2594l2.g(i15, (AbstractC2576i2) object);
                        }
                    }
                    break;
                case 9:
                    if (l(obj, i14, i8, i9, i10)) {
                        c2594l2.q(i15, w(i14), unsafe.getObject(obj, j8));
                    }
                    break;
                case 10:
                    if (l(obj, i14, i8, i9, i10)) {
                        c2594l2.g(i15, (AbstractC2576i2) unsafe.getObject(obj, j8));
                    }
                    break;
                case 11:
                    if (l(obj, i14, i8, i9, i10)) {
                        c2594l2.d(i15, unsafe.getInt(obj, j8));
                    }
                    break;
                case 12:
                    if (l(obj, i14, i8, i9, i10)) {
                        c2594l2.j(i15, unsafe.getInt(obj, j8));
                    }
                    break;
                case 13:
                    if (l(obj, i14, i8, i9, i10)) {
                        c2594l2.r(i15, unsafe.getInt(obj, j8));
                    }
                    break;
                case 14:
                    if (l(obj, i14, i8, i9, i10)) {
                        c2594l2.s(i15, unsafe.getLong(obj, j8));
                    }
                    break;
                case 15:
                    if (l(obj, i14, i8, i9, i10)) {
                        c2594l2.a(i15, unsafe.getInt(obj, j8));
                    }
                    break;
                case 16:
                    if (l(obj, i14, i8, i9, i10)) {
                        c2594l2.b(i15, unsafe.getLong(obj, j8));
                    }
                    break;
                case 17:
                    if (l(obj, i14, i8, i9, i10)) {
                        c2594l2.n(i15, w(i14), unsafe.getObject(obj, j8));
                    }
                    break;
                case 18:
                    Z2.u(iArr[i14], (List) unsafe.getObject(obj, j8), c2594l2, z7);
                    break;
                case 19:
                    Z2.y(iArr[i14], (List) unsafe.getObject(obj, j8), c2594l2, z7);
                    break;
                case 20:
                    Z2.A(iArr[i14], (List) unsafe.getObject(obj, j8), c2594l2, z7);
                    break;
                case 21:
                    Z2.d(iArr[i14], (List) unsafe.getObject(obj, j8), c2594l2, z7);
                    break;
                case 22:
                    Z2.z(iArr[i14], (List) unsafe.getObject(obj, j8), c2594l2, z7);
                    break;
                case 23:
                    Z2.x(iArr[i14], (List) unsafe.getObject(obj, j8), c2594l2, z7);
                    break;
                case 24:
                    Z2.w(iArr[i14], (List) unsafe.getObject(obj, j8), c2594l2, z7);
                    break;
                case 25:
                    Z2.t(iArr[i14], (List) unsafe.getObject(obj, j8), c2594l2, z7);
                    break;
                case Service.BILLING_FIELD_NUMBER /* 26 */:
                    int i18 = iArr[i14];
                    List list = (List) unsafe.getObject(obj, j8);
                    C2622q2 c2622q2 = Z2.f23065a;
                    if (list != null && !list.isEmpty()) {
                        c2594l2.c(i18, list);
                    }
                    break;
                case 27:
                    int i19 = iArr[i14];
                    List list2 = (List) unsafe.getObject(obj, j8);
                    Y2 y2W = w(i14);
                    C2622q2 c2622q3 = Z2.f23065a;
                    if (list2 != null && !list2.isEmpty()) {
                        for (int i20 = 0; i20 < list2.size(); i20++) {
                            c2594l2.q(i19, y2W, list2.get(i20));
                        }
                    }
                    break;
                case Service.MONITORING_FIELD_NUMBER /* 28 */:
                    int i21 = iArr[i14];
                    List list3 = (List) unsafe.getObject(obj, j8);
                    C2622q2 c2622q4 = Z2.f23065a;
                    if (list3 != null && !list3.isEmpty()) {
                        c2594l2.h(i21, list3);
                    }
                    break;
                case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                    Z2.c(iArr[i14], (List) unsafe.getObject(obj, j8), c2594l2, z7);
                    break;
                case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                    Z2.v(iArr[i14], (List) unsafe.getObject(obj, j8), c2594l2, z7);
                    break;
                case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                    Z2.B(iArr[i14], (List) unsafe.getObject(obj, j8), c2594l2, z7);
                    break;
                case 32:
                    Z2.C(iArr[i14], (List) unsafe.getObject(obj, j8), c2594l2, z7);
                    break;
                case 33:
                    Z2.a(iArr[i14], (List) unsafe.getObject(obj, j8), c2594l2, z7);
                    break;
                case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                    Z2.b(iArr[i14], (List) unsafe.getObject(obj, j8), c2594l2, z7);
                    break;
                case 35:
                    Z2.u(iArr[i14], (List) unsafe.getObject(obj, j8), c2594l2, true);
                    break;
                case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                    Z2.y(iArr[i14], (List) unsafe.getObject(obj, j8), c2594l2, true);
                    break;
                case 37:
                    Z2.A(iArr[i14], (List) unsafe.getObject(obj, j8), c2594l2, true);
                    break;
                case 38:
                    Z2.d(iArr[i14], (List) unsafe.getObject(obj, j8), c2594l2, true);
                    break;
                case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                    Z2.z(iArr[i14], (List) unsafe.getObject(obj, j8), c2594l2, true);
                    break;
                case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                    Z2.x(iArr[i14], (List) unsafe.getObject(obj, j8), c2594l2, true);
                    break;
                case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
                    Z2.w(iArr[i14], (List) unsafe.getObject(obj, j8), c2594l2, true);
                    break;
                case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                    Z2.t(iArr[i14], (List) unsafe.getObject(obj, j8), c2594l2, true);
                    break;
                case 43:
                    Z2.c(iArr[i14], (List) unsafe.getObject(obj, j8), c2594l2, true);
                    break;
                case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                    Z2.v(iArr[i14], (List) unsafe.getObject(obj, j8), c2594l2, true);
                    break;
                case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                    Z2.B(iArr[i14], (List) unsafe.getObject(obj, j8), c2594l2, true);
                    break;
                case 46:
                    Z2.C(iArr[i14], (List) unsafe.getObject(obj, j8), c2594l2, true);
                    break;
                case 47:
                    Z2.a(iArr[i14], (List) unsafe.getObject(obj, j8), c2594l2, true);
                    break;
                case 48:
                    Z2.b(iArr[i14], (List) unsafe.getObject(obj, j8), c2594l2, true);
                    break;
                case 49:
                    int i22 = iArr[i14];
                    List list4 = (List) unsafe.getObject(obj, j8);
                    Y2 y2W2 = w(i14);
                    C2622q2 c2622q5 = Z2.f23065a;
                    if (list4 != null && !list4.isEmpty()) {
                        for (int i23 = 0; i23 < list4.size(); i23++) {
                            c2594l2.n(i22, y2W2, list4.get(i23));
                        }
                    }
                    break;
                case 50:
                    if (unsafe.getObject(obj, j8) != null) {
                        int i24 = i14 / 3;
                        A0.O.I(this.f22993b[i24 + i24]);
                        throw null;
                    }
                    break;
                    break;
                case 51:
                    if (n(i15, obj, i14)) {
                        c2594l2.i(i15, ((Double) AbstractC2565g3.i(obj, j8)).doubleValue());
                    }
                    break;
                case 52:
                    if (n(i15, obj, i14)) {
                        c2594l2.m(i15, ((Float) AbstractC2565g3.i(obj, j8)).floatValue());
                    }
                    break;
                case 53:
                    if (n(i15, obj, i14)) {
                        c2594l2.p(i15, u(obj, j8));
                    }
                    break;
                case 54:
                    if (n(i15, obj, i14)) {
                        c2594l2.e(i15, u(obj, j8));
                    }
                    break;
                case 55:
                    if (n(i15, obj, i14)) {
                        c2594l2.o(i15, q(obj, j8));
                    }
                    break;
                case 56:
                    if (n(i15, obj, i14)) {
                        c2594l2.l(i15, u(obj, j8));
                    }
                    break;
                case 57:
                    if (n(i15, obj, i14)) {
                        c2594l2.k(i15, q(obj, j8));
                    }
                    break;
                case 58:
                    if (n(i15, obj, i14)) {
                        c2594l2.f(i15, ((Boolean) AbstractC2565g3.i(obj, j8)).booleanValue());
                    }
                    break;
                case 59:
                    if (n(i15, obj, i14)) {
                        Object object2 = unsafe.getObject(obj, j8);
                        if (object2 instanceof String) {
                            c2594l2.f23193a.x(i15, (String) object2);
                        } else {
                            c2594l2.g(i15, (AbstractC2576i2) object2);
                        }
                    }
                    break;
                case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                    if (n(i15, obj, i14)) {
                        c2594l2.q(i15, w(i14), unsafe.getObject(obj, j8));
                    }
                    break;
                case 61:
                    if (n(i15, obj, i14)) {
                        c2594l2.g(i15, (AbstractC2576i2) unsafe.getObject(obj, j8));
                    }
                    break;
                case 62:
                    if (n(i15, obj, i14)) {
                        c2594l2.d(i15, q(obj, j8));
                    }
                    break;
                case 63:
                    if (n(i15, obj, i14)) {
                        c2594l2.j(i15, q(obj, j8));
                    }
                    break;
                case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                    if (n(i15, obj, i14)) {
                        c2594l2.r(i15, q(obj, j8));
                    }
                    break;
                case 65:
                    if (n(i15, obj, i14)) {
                        c2594l2.s(i15, u(obj, j8));
                    }
                    break;
                case 66:
                    if (n(i15, obj, i14)) {
                        c2594l2.a(i15, q(obj, j8));
                    }
                    break;
                case 67:
                    if (n(i15, obj, i14)) {
                        c2594l2.b(i15, u(obj, j8));
                    }
                    break;
                case 68:
                    if (n(i15, obj, i14)) {
                        c2594l2.n(i15, w(i14), unsafe.getObject(obj, j8));
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

    @Override // com.google.android.gms.internal.measurement.Y2
    public final void c(Object obj, byte[] bArr, int i8, int i9, SG sg) {
        o(obj, bArr, i8, i9, 0, sg);
    }

    @Override // com.google.android.gms.internal.measurement.Y2
    public final boolean d(Object obj, Object obj2) {
        boolean zE;
        int i8 = 0;
        while (true) {
            int[] iArr = this.f22992a;
            if (i8 >= iArr.length) {
                return ((AbstractC2631s2) obj).zzc.equals(((AbstractC2631s2) obj2).zzc);
            }
            int iT = t(i8);
            long j8 = iT & 1048575;
            switch (s(iT)) {
                case 0:
                    if (j(i8, obj, obj2)) {
                        AbstractC2559f3 abstractC2559f3 = AbstractC2565g3.f23138c;
                        if (Double.doubleToLongBits(abstractC2559f3.a(obj, j8)) == Double.doubleToLongBits(abstractC2559f3.a(obj2, j8))) {
                            continue;
                            i8 += 3;
                            break;
                        }
                    }
                    return false;
                case 1:
                    if (j(i8, obj, obj2)) {
                        AbstractC2559f3 abstractC2559f4 = AbstractC2565g3.f23138c;
                        if (Float.floatToIntBits(abstractC2559f4.b(obj, j8)) == Float.floatToIntBits(abstractC2559f4.b(obj2, j8))) {
                            continue;
                            i8 += 3;
                            break;
                        }
                    }
                    return false;
                case 2:
                    if (!j(i8, obj, obj2) || AbstractC2565g3.g(obj, j8) != AbstractC2565g3.g(obj2, j8)) {
                        return false;
                    }
                    continue;
                    i8 += 3;
                    break;
                    break;
                case 3:
                    if (!j(i8, obj, obj2) || AbstractC2565g3.g(obj, j8) != AbstractC2565g3.g(obj2, j8)) {
                        return false;
                    }
                    continue;
                    i8 += 3;
                    break;
                    break;
                case 4:
                    if (!j(i8, obj, obj2) || AbstractC2565g3.f(obj, j8) != AbstractC2565g3.f(obj2, j8)) {
                        return false;
                    }
                    continue;
                    i8 += 3;
                    break;
                    break;
                case 5:
                    if (!j(i8, obj, obj2) || AbstractC2565g3.g(obj, j8) != AbstractC2565g3.g(obj2, j8)) {
                        return false;
                    }
                    continue;
                    i8 += 3;
                    break;
                    break;
                case 6:
                    if (!j(i8, obj, obj2) || AbstractC2565g3.f(obj, j8) != AbstractC2565g3.f(obj2, j8)) {
                        return false;
                    }
                    continue;
                    i8 += 3;
                    break;
                    break;
                case 7:
                    if (j(i8, obj, obj2)) {
                        AbstractC2559f3 abstractC2559f5 = AbstractC2565g3.f23138c;
                        if (abstractC2559f5.g(obj, j8) == abstractC2559f5.g(obj2, j8)) {
                            continue;
                            i8 += 3;
                            break;
                        }
                    }
                    return false;
                case 8:
                    if (!j(i8, obj, obj2) || !Z2.e(AbstractC2565g3.i(obj, j8), AbstractC2565g3.i(obj2, j8))) {
                        return false;
                    }
                    continue;
                    i8 += 3;
                    break;
                    break;
                case 9:
                    if (!j(i8, obj, obj2) || !Z2.e(AbstractC2565g3.i(obj, j8), AbstractC2565g3.i(obj2, j8))) {
                        return false;
                    }
                    continue;
                    i8 += 3;
                    break;
                    break;
                case 10:
                    if (!j(i8, obj, obj2) || !Z2.e(AbstractC2565g3.i(obj, j8), AbstractC2565g3.i(obj2, j8))) {
                        return false;
                    }
                    continue;
                    i8 += 3;
                    break;
                    break;
                case 11:
                    if (!j(i8, obj, obj2) || AbstractC2565g3.f(obj, j8) != AbstractC2565g3.f(obj2, j8)) {
                        return false;
                    }
                    continue;
                    i8 += 3;
                    break;
                    break;
                case 12:
                    if (!j(i8, obj, obj2) || AbstractC2565g3.f(obj, j8) != AbstractC2565g3.f(obj2, j8)) {
                        return false;
                    }
                    continue;
                    i8 += 3;
                    break;
                    break;
                case 13:
                    if (!j(i8, obj, obj2) || AbstractC2565g3.f(obj, j8) != AbstractC2565g3.f(obj2, j8)) {
                        return false;
                    }
                    continue;
                    i8 += 3;
                    break;
                    break;
                case 14:
                    if (!j(i8, obj, obj2) || AbstractC2565g3.g(obj, j8) != AbstractC2565g3.g(obj2, j8)) {
                        return false;
                    }
                    continue;
                    i8 += 3;
                    break;
                    break;
                case 15:
                    if (!j(i8, obj, obj2) || AbstractC2565g3.f(obj, j8) != AbstractC2565g3.f(obj2, j8)) {
                        return false;
                    }
                    continue;
                    i8 += 3;
                    break;
                    break;
                case 16:
                    if (!j(i8, obj, obj2) || AbstractC2565g3.g(obj, j8) != AbstractC2565g3.g(obj2, j8)) {
                        return false;
                    }
                    continue;
                    i8 += 3;
                    break;
                    break;
                case 17:
                    if (!j(i8, obj, obj2) || !Z2.e(AbstractC2565g3.i(obj, j8), AbstractC2565g3.i(obj2, j8))) {
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
                    zE = Z2.e(AbstractC2565g3.i(obj, j8), AbstractC2565g3.i(obj2, j8));
                    break;
                case 50:
                    zE = Z2.e(AbstractC2565g3.i(obj, j8), AbstractC2565g3.i(obj2, j8));
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
                    if (AbstractC2565g3.f(obj, j9) != AbstractC2565g3.f(obj2, j9) || !Z2.e(AbstractC2565g3.i(obj, j8), AbstractC2565g3.i(obj2, j8))) {
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

    public final void e(int i8, Object obj, Object obj2) {
        if (k(i8, obj2)) {
            long jT = t(i8) & 1048575;
            Unsafe unsafe = f22991k;
            Object object = unsafe.getObject(obj2, jT);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.f22992a[i8] + " is present but null: " + obj2.toString());
            }
            Y2 y2W = w(i8);
            if (!k(i8, obj)) {
                if (m(object)) {
                    AbstractC2631s2 abstractC2631s2Zze = y2W.zze();
                    y2W.zzg(abstractC2631s2Zze, object);
                    unsafe.putObject(obj, jT, abstractC2631s2Zze);
                } else {
                    unsafe.putObject(obj, jT, object);
                }
                g(i8, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, jT);
            if (!m(object2)) {
                AbstractC2631s2 abstractC2631s2Zze2 = y2W.zze();
                y2W.zzg(abstractC2631s2Zze2, object2);
                unsafe.putObject(obj, jT, abstractC2631s2Zze2);
                object2 = abstractC2631s2Zze2;
            }
            y2W.zzg(object2, object);
        }
    }

    public final void f(int i8, Object obj, Object obj2) {
        int[] iArr = this.f22992a;
        int i9 = iArr[i8];
        if (n(i9, obj2, i8)) {
            long jT = t(i8) & 1048575;
            Unsafe unsafe = f22991k;
            Object object = unsafe.getObject(obj2, jT);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + iArr[i8] + " is present but null: " + obj2.toString());
            }
            Y2 y2W = w(i8);
            if (!n(i9, obj, i8)) {
                if (m(object)) {
                    AbstractC2631s2 abstractC2631s2Zze = y2W.zze();
                    y2W.zzg(abstractC2631s2Zze, object);
                    unsafe.putObject(obj, jT, abstractC2631s2Zze);
                } else {
                    unsafe.putObject(obj, jT, object);
                }
                AbstractC2565g3.n(obj, iArr[i8 + 2] & 1048575, i9);
                return;
            }
            Object object2 = unsafe.getObject(obj, jT);
            if (!m(object2)) {
                AbstractC2631s2 abstractC2631s2Zze2 = y2W.zze();
                y2W.zzg(abstractC2631s2Zze2, object2);
                unsafe.putObject(obj, jT, abstractC2631s2Zze2);
                object2 = abstractC2631s2Zze2;
            }
            y2W.zzg(object2, object);
        }
    }

    public final void g(int i8, Object obj) {
        int i9 = this.f22992a[i8 + 2];
        long j8 = 1048575 & i9;
        if (j8 == 1048575) {
            return;
        }
        AbstractC2565g3.n(obj, j8, (1 << (i9 >>> 20)) | AbstractC2565g3.f(obj, j8));
    }

    public final void h(int i8, Object obj, Object obj2) {
        f22991k.putObject(obj, t(i8) & 1048575, obj2);
        g(i8, obj);
    }

    public final void i(Object obj, int i8, int i9, Object obj2) {
        f22991k.putObject(obj, t(i9) & 1048575, obj2);
        AbstractC2565g3.n(obj, this.f22992a[i9 + 2] & 1048575, i8);
    }

    public final boolean j(int i8, Object obj, Object obj2) {
        return k(i8, obj) == k(i8, obj2);
    }

    public final boolean k(int i8, Object obj) {
        int i9 = this.f22992a[i8 + 2];
        long j8 = i9 & 1048575;
        if (j8 != 1048575) {
            return ((1 << (i9 >>> 20)) & AbstractC2565g3.f(obj, j8)) != 0;
        }
        int iT = t(i8);
        long j9 = iT & 1048575;
        switch (s(iT)) {
            case 0:
                return Double.doubleToRawLongBits(AbstractC2565g3.f23138c.a(obj, j9)) != 0;
            case 1:
                return Float.floatToRawIntBits(AbstractC2565g3.f23138c.b(obj, j9)) != 0;
            case 2:
                return AbstractC2565g3.g(obj, j9) != 0;
            case 3:
                return AbstractC2565g3.g(obj, j9) != 0;
            case 4:
                return AbstractC2565g3.f(obj, j9) != 0;
            case 5:
                return AbstractC2565g3.g(obj, j9) != 0;
            case 6:
                return AbstractC2565g3.f(obj, j9) != 0;
            case 7:
                return AbstractC2565g3.f23138c.g(obj, j9);
            case 8:
                Object objI = AbstractC2565g3.i(obj, j9);
                if (objI instanceof String) {
                    return !((String) objI).isEmpty();
                }
                if (objI instanceof AbstractC2576i2) {
                    return !AbstractC2576i2.f23165H.equals(objI);
                }
                throw new IllegalArgumentException();
            case 9:
                return AbstractC2565g3.i(obj, j9) != null;
            case 10:
                return !AbstractC2576i2.f23165H.equals(AbstractC2565g3.i(obj, j9));
            case 11:
                return AbstractC2565g3.f(obj, j9) != 0;
            case 12:
                return AbstractC2565g3.f(obj, j9) != 0;
            case 13:
                return AbstractC2565g3.f(obj, j9) != 0;
            case 14:
                return AbstractC2565g3.g(obj, j9) != 0;
            case 15:
                return AbstractC2565g3.f(obj, j9) != 0;
            case 16:
                return AbstractC2565g3.g(obj, j9) != 0;
            case 17:
                return AbstractC2565g3.i(obj, j9) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    public final boolean l(Object obj, int i8, int i9, int i10, int i11) {
        if (i9 == 1048575) {
            return k(i8, obj);
        }
        return (i10 & i11) != 0;
    }

    public final boolean n(int i8, Object obj, int i9) {
        return AbstractC2565g3.f(obj, (long) (this.f22992a[i9 + 2] & 1048575)) == i8;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x02d7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:103:0x02d9  */
    /* JADX WARN: Code duplicated, block: B:107:0x02f6  */
    /* JADX WARN: Code duplicated, block: B:109:0x02fe  */
    /* JADX WARN: Code duplicated, block: B:111:0x0302  */
    /* JADX WARN: Code duplicated, block: B:115:0x0324  */
    /* JADX WARN: Code duplicated, block: B:117:0x0328  */
    /* JADX WARN: Code duplicated, block: B:543:0x0e28 A[PHI: r2 r4 r10 r13 r14 r34
      0x0e28: PHI (r2v99 com.google.android.gms.internal.measurement.b3) = 
      (r2v84 com.google.android.gms.internal.measurement.b3)
      (r2v85 com.google.android.gms.internal.measurement.b3)
      (r2v86 com.google.android.gms.internal.measurement.b3)
      (r2v87 com.google.android.gms.internal.measurement.b3)
      (r2v88 com.google.android.gms.internal.measurement.b3)
      (r2v89 com.google.android.gms.internal.measurement.b3)
      (r2v91 com.google.android.gms.internal.measurement.b3)
      (r2v92 com.google.android.gms.internal.measurement.b3)
      (r2v96 com.google.android.gms.internal.measurement.b3)
      (r2v100 com.google.android.gms.internal.measurement.b3)
     binds: [B:541:0x0e10, B:538:0x0ded, B:535:0x0dcf, B:532:0x0db2, B:529:0x0d95, B:526:0x0d77, B:518:0x0d50, B:503:0x0d0f, B:474:0x0c27, B:461:0x0bb3] A[DONT_GENERATE, DONT_INLINE]
      0x0e28: PHI (r4v83 int) = 
      (r4v57 int)
      (r4v58 int)
      (r4v59 int)
      (r4v60 int)
      (r4v61 int)
      (r4v62 int)
      (r4v64 int)
      (r4v65 int)
      (r2v78 int)
      (r2v78 int)
     binds: [B:541:0x0e10, B:538:0x0ded, B:535:0x0dcf, B:532:0x0db2, B:529:0x0d95, B:526:0x0d77, B:518:0x0d50, B:503:0x0d0f, B:474:0x0c27, B:461:0x0bb3] A[DONT_GENERATE, DONT_INLINE]
      0x0e28: PHI (r10v106 com.google.android.gms.internal.ads.SG) = 
      (r10v79 com.google.android.gms.internal.ads.SG)
      (r10v80 com.google.android.gms.internal.ads.SG)
      (r10v81 com.google.android.gms.internal.ads.SG)
      (r10v82 com.google.android.gms.internal.ads.SG)
      (r10v83 com.google.android.gms.internal.ads.SG)
      (r10v84 com.google.android.gms.internal.ads.SG)
      (r10v86 com.google.android.gms.internal.ads.SG)
      (r10v87 com.google.android.gms.internal.ads.SG)
      (r10v95 com.google.android.gms.internal.ads.SG)
      (r45v0 com.google.android.gms.internal.ads.SG A[IMMUTABLE_TYPE, METHOD_ARGUMENT])
     binds: [B:541:0x0e10, B:538:0x0ded, B:535:0x0dcf, B:532:0x0db2, B:529:0x0d95, B:526:0x0d77, B:518:0x0d50, B:503:0x0d0f, B:474:0x0c27, B:461:0x0bb3] A[DONT_GENERATE, DONT_INLINE]
      0x0e28: PHI (r13v93 byte[]) = 
      (r13v67 byte[])
      (r13v68 byte[])
      (r13v69 byte[])
      (r13v70 byte[])
      (r13v71 byte[])
      (r13v72 byte[])
      (r13v74 byte[])
      (r13v75 byte[])
      (r13v83 byte[])
      (r13v94 byte[])
     binds: [B:541:0x0e10, B:538:0x0ded, B:535:0x0dcf, B:532:0x0db2, B:529:0x0d95, B:526:0x0d77, B:518:0x0d50, B:503:0x0d0f, B:474:0x0c27, B:461:0x0bb3] A[DONT_GENERATE, DONT_INLINE]
      0x0e28: PHI (r14v96 int) = 
      (r14v69 int)
      (r14v70 int)
      (r14v71 int)
      (r14v72 int)
      (r14v73 int)
      (r14v74 int)
      (r14v76 int)
      (r14v77 int)
      (r14v87 int)
      (r14v97 int)
     binds: [B:541:0x0e10, B:538:0x0ded, B:535:0x0dcf, B:532:0x0db2, B:529:0x0d95, B:526:0x0d77, B:518:0x0d50, B:503:0x0d0f, B:474:0x0c27, B:461:0x0bb3] A[DONT_GENERATE, DONT_INLINE]
      0x0e28: PHI (r34v24 int) = 
      (r34v0 int)
      (r34v1 int)
      (r34v2 int)
      (r34v3 int)
      (r34v4 int)
      (r34v5 int)
      (r34v7 int)
      (r34v8 int)
      (r34v15 int)
      (r34v25 int)
     binds: [B:541:0x0e10, B:538:0x0ded, B:535:0x0dcf, B:532:0x0db2, B:529:0x0d95, B:526:0x0d77, B:518:0x0d50, B:503:0x0d0f, B:474:0x0c27, B:461:0x0bb3] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:588:0x0e2b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:629:0x0b1c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:657:0x02ee A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:658:0x031e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:659:0x0346 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:673:0x0b30 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:674:0x0e3d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:731:0x02d3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:732:0x02b4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:736:0x02ce A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:92:0x02a8  */
    /* JADX WARN: Code duplicated, block: B:96:0x02bd  */
    /* JADX WARN: Code duplicated, block: B:98:0x02c5 A[LOOP:19: B:95:0x02bb->B:98:0x02c5, LOOP_END] */
    /* JADX WARN: Multi-variable type inference failed */
    public final int o(Object obj, byte[] bArr, int i8, int i9, int i10, SG sg) {
        Unsafe unsafe;
        int i11;
        int[] iArr;
        Object[] objArr;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        C2535b3 c2535b3;
        int i18;
        int i19;
        byte[] bArr2;
        int i20;
        int i21;
        int i22;
        byte[] bArr3;
        int i23;
        SG sg2;
        int i24;
        int i25;
        int i26;
        int iV0;
        int i27;
        int iV1;
        int i28;
        int i29;
        byte b8;
        byte b9;
        String str;
        int i30;
        int i31;
        int i32;
        int iS0;
        C2535b3 c2535b4;
        int i33;
        int i34;
        int i35;
        byte[] bArr4;
        AbstractC2546d2 abstractC2546d2;
        int i36;
        byte[] bArr5;
        int i37;
        int i38;
        int i39;
        int i40;
        int iV2;
        byte[] bArr6;
        int i41;
        SG sg3;
        int iS1;
        int iS2;
        SG sg4;
        int i42;
        int i43;
        int i44;
        int i45;
        Unsafe unsafe2;
        int iU0;
        int i46;
        int i47;
        int i48;
        int iV3;
        C2535b3 c2535b5;
        byte[] bArr7;
        int i49;
        int i50;
        int i51;
        int iS3;
        R2 r7 = this;
        Object obj2 = obj;
        byte[] bArr8 = bArr;
        int i52 = i9;
        i10 = i10;
        SG sg5 = sg;
        if (!m(obj)) {
            throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
        }
        int iW0 = i8;
        int i53 = -1;
        int i54 = 0;
        int i55 = 1048575;
        int i56 = 0;
        int i57 = 0;
        while (true) {
            Object[] objArr2 = r7.f22993b;
            int[] iArr2 = r7.f22992a;
            unsafe = f22991k;
            if (iW0 < i52) {
                int iT0 = iW0 + 1;
                int i58 = bArr8[iW0];
                if (i58 < 0) {
                    iT0 = p190y4.k.t0(i58, bArr8, iT0, sg5);
                    i58 = sg5.f16417a;
                }
                int i59 = (i58 == true ? 1 : 0) >>> 3;
                int i60 = r7.f22995d;
                int i61 = r7.f22994c;
                int iR = i59 > i53 ? (i59 < i61 || i59 > i60) ? -1 : r7.r(i59, i54 / 3) : (i59 < i61 || i59 > i60) ? -1 : r7.r(i59, 0);
                C2535b3 c2535b6 = C2535b3.f23099f;
                if (iR != -1) {
                    int i62 = (i58 == true ? 1 : 0) & 7;
                    int i63 = iArr2[iR + 1];
                    int iS = s(i63);
                    boolean z7 = i58 == true ? 1 : 0;
                    long j8 = i63 & 1048575;
                    objArr = objArr2;
                    String str2 = "Protocol message had invalid UTF-8.";
                    if (iS <= 17) {
                        int i64 = iArr2[iR + 2];
                        int i65 = 1 << (i64 >>> 20);
                        int i66 = 1048575;
                        int i67 = i64 & 1048575;
                        if (i67 != i55) {
                            if (i55 != 1048575) {
                                unsafe.putInt(obj2, i55, i56);
                                i66 = 1048575;
                            }
                            i56 = i67 == i66 ? 0 : unsafe.getInt(obj2, i67);
                            i20 = i67;
                        } else {
                            i20 = i55;
                        }
                        switch (iS) {
                            case 0:
                                bArr3 = bArr;
                                i23 = iR;
                                i21 = i59;
                                i24 = z7 ? 1 : 0;
                                i22 = i20;
                                sg2 = sg5;
                                if (i62 == 1) {
                                    i25 = iT0 + 8;
                                    i56 |= i65;
                                    AbstractC2565g3.l(obj2, j8, Double.longBitsToDouble(p190y4.k.y0(bArr3, iT0)));
                                    i55 = i22;
                                    i52 = i9;
                                    iW0 = i25;
                                    i57 = i24;
                                    sg5 = sg2;
                                    i53 = i21;
                                    i54 = i23;
                                    bArr8 = bArr3;
                                } else {
                                    i11 = i10;
                                    unsafe = unsafe;
                                    i18 = iT0;
                                    c2535b3 = c2535b6;
                                    i58 = i24;
                                    sg = sg2;
                                    i19 = i21;
                                    iArr = iArr2;
                                    objArr = objArr;
                                    i17 = i23;
                                    i16 = i22;
                                    bArr2 = bArr3;
                                }
                                break;
                            case 1:
                                bArr3 = bArr;
                                i23 = iR;
                                i21 = i59;
                                i24 = z7 ? 1 : 0;
                                i22 = i20;
                                sg2 = sg5;
                                if (i62 == 5) {
                                    i25 = iT0 + 4;
                                    i56 |= i65;
                                    AbstractC2565g3.m(obj2, j8, Float.intBitsToFloat(p190y4.k.n0(bArr3, iT0)));
                                    i55 = i22;
                                    i52 = i9;
                                    iW0 = i25;
                                    i57 = i24;
                                    sg5 = sg2;
                                    i53 = i21;
                                    i54 = i23;
                                    bArr8 = bArr3;
                                } else {
                                    i11 = i10;
                                    unsafe = unsafe;
                                    i18 = iT0;
                                    c2535b3 = c2535b6;
                                    i58 = i24;
                                    sg = sg2;
                                    i19 = i21;
                                    iArr = iArr2;
                                    objArr = objArr;
                                    i17 = i23;
                                    i16 = i22;
                                    bArr2 = bArr3;
                                }
                                break;
                            case 2:
                            case 3:
                                bArr3 = bArr;
                                i26 = i9;
                                i23 = iR;
                                i21 = i59;
                                i24 = z7 ? 1 : 0;
                                i22 = i20;
                                sg2 = sg5;
                                if (i62 == 0) {
                                    i56 |= i65;
                                    iV0 = p190y4.k.v0(bArr3, iT0, sg2);
                                    i27 = i26;
                                    unsafe.putLong(obj, j8, sg2.f16418b);
                                    i55 = i22;
                                    i52 = i27;
                                    iW0 = iV0;
                                    i57 = i24;
                                    sg5 = sg2;
                                    i53 = i21;
                                    i54 = i23;
                                    bArr8 = bArr3;
                                } else {
                                    i11 = i10;
                                    unsafe = unsafe;
                                    i18 = iT0;
                                    c2535b3 = c2535b6;
                                    i58 = i24;
                                    sg = sg2;
                                    i19 = i21;
                                    iArr = iArr2;
                                    objArr = objArr;
                                    i17 = i23;
                                    i16 = i22;
                                    bArr2 = bArr3;
                                }
                                break;
                            case 4:
                            case 11:
                                bArr3 = bArr;
                                i26 = i9;
                                i23 = iR;
                                i21 = i59;
                                i24 = z7 ? 1 : 0;
                                i22 = i20;
                                sg2 = sg5;
                                if (i62 == 0) {
                                    i56 |= i65;
                                    int iS4 = p190y4.k.s0(bArr3, iT0, sg2);
                                    unsafe.putInt(obj2, j8, sg2.f16417a);
                                    i55 = i22;
                                    iW0 = iS4;
                                    i52 = i26;
                                    i57 = i24 == true ? 1 : 0;
                                    sg5 = sg2;
                                    i53 = i21;
                                    i54 = i23;
                                    i10 = i10;
                                    bArr8 = bArr3;
                                } else {
                                    i11 = i10;
                                    unsafe = unsafe;
                                    i18 = iT0;
                                    c2535b3 = c2535b6;
                                    i58 = i24;
                                    sg = sg2;
                                    i19 = i21;
                                    iArr = iArr2;
                                    objArr = objArr;
                                    i17 = i23;
                                    i16 = i22;
                                    bArr2 = bArr3;
                                }
                                break;
                            case 5:
                            case 14:
                                bArr3 = bArr;
                                i23 = iR;
                                i21 = i59;
                                i24 = z7 ? 1 : 0;
                                i22 = i20;
                                sg2 = sg5;
                                if (i62 == 1) {
                                    iV0 = iT0 + 8;
                                    i56 |= i65;
                                    i27 = i9;
                                    unsafe.putLong(obj, j8, p190y4.k.y0(bArr3, iT0));
                                    i55 = i22;
                                    i52 = i27;
                                    iW0 = iV0;
                                    i57 = i24;
                                    sg5 = sg2;
                                    i53 = i21;
                                    i54 = i23;
                                    bArr8 = bArr3;
                                } else {
                                    i11 = i10;
                                    unsafe = unsafe;
                                    i18 = iT0;
                                    c2535b3 = c2535b6;
                                    i58 = i24;
                                    sg = sg2;
                                    i19 = i21;
                                    iArr = iArr2;
                                    objArr = objArr;
                                    i17 = i23;
                                    i16 = i22;
                                    bArr2 = bArr3;
                                }
                                break;
                            case 6:
                            case 13:
                                bArr3 = bArr;
                                i23 = iR;
                                i21 = i59;
                                i24 = z7 ? 1 : 0;
                                i22 = i20;
                                sg2 = sg5;
                                if (i62 == 5) {
                                    iV1 = iT0 + 4;
                                    i56 |= i65;
                                    unsafe.putInt(obj2, j8, p190y4.k.n0(bArr3, iT0));
                                    i55 = i22;
                                    i52 = i9;
                                    iW0 = iV1;
                                    i57 = i24;
                                    sg5 = sg2;
                                    i53 = i21;
                                    i54 = i23;
                                    bArr8 = bArr3;
                                } else {
                                    i11 = i10;
                                    unsafe = unsafe;
                                    i18 = iT0;
                                    c2535b3 = c2535b6;
                                    i58 = i24;
                                    sg = sg2;
                                    i19 = i21;
                                    iArr = iArr2;
                                    objArr = objArr;
                                    i17 = i23;
                                    i16 = i22;
                                    bArr2 = bArr3;
                                }
                                break;
                            case 7:
                                bArr3 = bArr;
                                i23 = iR;
                                i21 = i59;
                                i24 = z7 ? 1 : 0;
                                i22 = i20;
                                sg2 = sg5;
                                if (i62 == 0) {
                                    i56 |= i65;
                                    iV1 = p190y4.k.v0(bArr3, iT0, sg2);
                                    AbstractC2565g3.k(obj2, j8, sg2.f16418b != 0);
                                    i55 = i22;
                                    i52 = i9;
                                    iW0 = iV1;
                                    i57 = i24;
                                    sg5 = sg2;
                                    i53 = i21;
                                    i54 = i23;
                                    bArr8 = bArr3;
                                } else {
                                    i11 = i10;
                                    unsafe = unsafe;
                                    i18 = iT0;
                                    c2535b3 = c2535b6;
                                    i58 = i24;
                                    sg = sg2;
                                    i19 = i21;
                                    iArr = iArr2;
                                    objArr = objArr;
                                    i17 = i23;
                                    i16 = i22;
                                    bArr2 = bArr3;
                                }
                                break;
                            case 8:
                                bArr3 = bArr;
                                int i68 = iR;
                                i21 = i59;
                                i24 = z7 ? 1 : 0;
                                i22 = i20;
                                sg2 = sg5;
                                if (i62 == 2) {
                                    if ((i63 & 536870912) != 0) {
                                        iV1 = p190y4.k.s0(bArr3, iT0, sg2);
                                        int i69 = sg2.f16417a;
                                        if (i69 < 0) {
                                            throw new B2("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                        }
                                        int i70 = i56 | i65;
                                        if (i69 == 0) {
                                            sg2.f16419c = HttpUrl.FRAGMENT_ENCODE_SET;
                                            i56 = i70;
                                            i23 = i68;
                                        } else {
                                            int i71 = AbstractC2577i3.f23167a;
                                            int length = bArr3.length;
                                            if ((iV1 | i69 | ((length - iV1) - i69)) < 0) {
                                                throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(length), Integer.valueOf(iV1), Integer.valueOf(i69)));
                                            }
                                            int i72 = iV1 + i69;
                                            char[] cArr = new char[i69];
                                            int i73 = 0;
                                            while (iV1 < i72) {
                                                byte b10 = bArr3[iV1];
                                                if (Cw.s1(b10)) {
                                                    iV1++;
                                                    cArr[i73] = (char) b10;
                                                    i73++;
                                                } else {
                                                    i28 = i73;
                                                    while (iV1 < i72) {
                                                        i29 = iV1 + 1;
                                                        i70 = i70;
                                                        b8 = bArr3[iV1];
                                                        if (Cw.s1(b8)) {
                                                            cArr[i28] = (char) b8;
                                                            i28++;
                                                            iV1 = i29;
                                                            while (iV1 < i72) {
                                                                b9 = bArr3[iV1];
                                                                if (Cw.s1(b9)) {
                                                                    iV1++;
                                                                    cArr[i28] = (char) b9;
                                                                    i28++;
                                                                } else {
                                                                    i70 = i70;
                                                                }
                                                            }
                                                            i70 = i70;
                                                        } else if (b8 < -32) {
                                                            str = str2;
                                                            int i74 = i68;
                                                            if (b8 < -16) {
                                                                if (i29 < i72 - 1) {
                                                                    throw new B2(str);
                                                                }
                                                                int i75 = iV1 + 2;
                                                                iV1 += 3;
                                                                Cw.S0(b8, bArr3[i29], bArr3[i75], cArr, i28);
                                                                i28++;
                                                            } else {
                                                                if (i29 < i72 - 2) {
                                                                    throw new B2(str);
                                                                }
                                                                byte b11 = bArr3[i29];
                                                                int i76 = iV1 + 3;
                                                                byte b12 = bArr3[iV1 + 2];
                                                                iV1 += 4;
                                                                Cw.p0(b8, b11, b12, bArr3[i76], cArr, i28);
                                                                i28 += 2;
                                                            }
                                                            i68 = i74;
                                                            str2 = str;
                                                        } else {
                                                            if (i29 < i72) {
                                                                throw new B2(str2);
                                                            }
                                                            iV1 += 2;
                                                            Cw.j1(b8, bArr3[i29], cArr, i28);
                                                            i28++;
                                                            i70 = i70;
                                                        }
                                                    }
                                                    i56 = i70;
                                                    i23 = i68;
                                                    sg2.f16419c = new String(cArr, 0, i28);
                                                    iV1 = i72;
                                                }
                                            }
                                            i28 = i73;
                                            while (iV1 < i72) {
                                                i29 = iV1 + 1;
                                                i70 = i70;
                                                b8 = bArr3[iV1];
                                                if (Cw.s1(b8)) {
                                                    cArr[i28] = (char) b8;
                                                    i28++;
                                                    iV1 = i29;
                                                    while (iV1 < i72) {
                                                        b9 = bArr3[iV1];
                                                        if (Cw.s1(b9)) {
                                                            iV1++;
                                                            cArr[i28] = (char) b9;
                                                            i28++;
                                                        } else {
                                                            i70 = i70;
                                                        }
                                                    }
                                                    i70 = i70;
                                                } else if (b8 < -32) {
                                                    str = str2;
                                                    int i77 = i68;
                                                    if (b8 < -16) {
                                                        if (i29 < i72 - 1) {
                                                            throw new B2(str);
                                                        }
                                                        int i78 = iV1 + 2;
                                                        iV1 += 3;
                                                        Cw.S0(b8, bArr3[i29], bArr3[i78], cArr, i28);
                                                        i28++;
                                                    } else {
                                                        if (i29 < i72 - 2) {
                                                            throw new B2(str);
                                                        }
                                                        byte b13 = bArr3[i29];
                                                        int i79 = iV1 + 3;
                                                        byte b14 = bArr3[iV1 + 2];
                                                        iV1 += 4;
                                                        Cw.p0(b8, b13, b14, bArr3[i79], cArr, i28);
                                                        i28 += 2;
                                                    }
                                                    i68 = i77;
                                                    str2 = str;
                                                } else {
                                                    if (i29 < i72) {
                                                        throw new B2(str2);
                                                    }
                                                    iV1 += 2;
                                                    Cw.j1(b8, bArr3[i29], cArr, i28);
                                                    i28++;
                                                    i70 = i70;
                                                }
                                            }
                                            i56 = i70;
                                            i23 = i68;
                                            sg2.f16419c = new String(cArr, 0, i28);
                                            iV1 = i72;
                                        }
                                    } else {
                                        i23 = i68;
                                        iV1 = p190y4.k.s0(bArr3, iT0, sg2);
                                        int i80 = sg2.f16417a;
                                        if (i80 < 0) {
                                            throw new B2("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                        }
                                        int i81 = i56 | i65;
                                        if (i80 == 0) {
                                            sg2.f16419c = HttpUrl.FRAGMENT_ENCODE_SET;
                                        } else {
                                            sg2.f16419c = new String(bArr3, iV1, i80, AbstractC2666z2.f23416a);
                                            iV1 += i80;
                                        }
                                        i56 = i81;
                                    }
                                    unsafe.putObject(obj2, j8, sg2.f16419c);
                                    i55 = i22;
                                    i52 = i9;
                                    iW0 = iV1;
                                    i57 = i24;
                                    sg5 = sg2;
                                    i53 = i21;
                                    i54 = i23;
                                    bArr8 = bArr3;
                                } else {
                                    i23 = i68;
                                    i11 = i10;
                                    unsafe = unsafe;
                                    i18 = iT0;
                                    c2535b3 = c2535b6;
                                    i58 = i24;
                                    sg = sg2;
                                    i19 = i21;
                                    iArr = iArr2;
                                    objArr = objArr;
                                    i17 = i23;
                                    i16 = i22;
                                    bArr2 = bArr3;
                                }
                                break;
                            case 9:
                                bArr3 = bArr;
                                i30 = i9;
                                i31 = iR;
                                i21 = i59;
                                i24 = z7 ? 1 : 0;
                                i22 = i20;
                                sg2 = sg5;
                                if (i62 == 2) {
                                    i56 |= i65;
                                    Object objX = r7.x(i31, obj2);
                                    int iX0 = p190y4.k.x0(objX, r7.w(i31), bArr, iT0, i9, sg);
                                    r7.h(i31, obj2, objX);
                                    iW0 = iX0;
                                    i10 = i10;
                                    i52 = i30;
                                    i54 = i31;
                                    i57 = i24;
                                    sg5 = sg2;
                                    i53 = i21;
                                    i55 = i22;
                                    bArr8 = bArr3;
                                } else {
                                    i23 = i31;
                                    i11 = i10;
                                    unsafe = unsafe;
                                    i18 = iT0;
                                    c2535b3 = c2535b6;
                                    i58 = i24;
                                    sg = sg2;
                                    i19 = i21;
                                    iArr = iArr2;
                                    objArr = objArr;
                                    i17 = i23;
                                    i16 = i22;
                                    bArr2 = bArr3;
                                }
                                break;
                            case 10:
                                bArr3 = bArr;
                                i30 = i9;
                                i31 = iR;
                                i21 = i59;
                                i24 = z7 ? 1 : 0;
                                i22 = i20;
                                sg2 = sg5;
                                i32 = i10;
                                if (i62 == 2) {
                                    i56 |= i65;
                                    int iM0 = p190y4.k.m0(bArr3, iT0, sg2);
                                    unsafe.putObject(obj2, j8, sg2.f16419c);
                                    iW0 = iM0;
                                    i52 = i30;
                                    i54 = i31;
                                    i57 = i24;
                                    i53 = i21;
                                    i55 = i22;
                                    i10 = i32;
                                    sg5 = sg2;
                                    bArr8 = bArr3;
                                } else {
                                    i23 = i31;
                                    i11 = i10;
                                    unsafe = unsafe;
                                    i18 = iT0;
                                    c2535b3 = c2535b6;
                                    i58 = i24;
                                    sg = sg2;
                                    i19 = i21;
                                    iArr = iArr2;
                                    objArr = objArr;
                                    i17 = i23;
                                    i16 = i22;
                                    bArr2 = bArr3;
                                }
                                break;
                            case 12:
                                bArr3 = bArr;
                                i30 = i9;
                                i31 = iR;
                                i21 = i59;
                                i24 = z7 ? 1 : 0;
                                i22 = i20;
                                sg2 = sg5;
                                i32 = i10;
                                if (i62 == 0) {
                                    iS0 = p190y4.k.s0(bArr3, iT0, sg2);
                                    int i82 = sg2.f16417a;
                                    InterfaceC2646v2 interfaceC2646v2V = r7.v(i31);
                                    if ((i63 & Integer.MIN_VALUE) == 0 || interfaceC2646v2V == null || interfaceC2646v2V.zza(i82)) {
                                        i56 |= i65;
                                        unsafe.putInt(obj2, j8, i82);
                                    } else {
                                        AbstractC2631s2 abstractC2631s2 = (AbstractC2631s2) obj2;
                                        C2535b3 c2535b3B = abstractC2631s2.zzc;
                                        if (c2535b3B == c2535b6) {
                                            c2535b3B = C2535b3.b();
                                            abstractC2631s2.zzc = c2535b3B;
                                        }
                                        c2535b3B.c(i24 == true ? 1 : 0, Long.valueOf(i82));
                                    }
                                    iW0 = iS0;
                                    i52 = i30;
                                    i54 = i31;
                                    i57 = i24;
                                    i53 = i21;
                                    i55 = i22;
                                    i10 = i32;
                                    sg5 = sg2;
                                    bArr8 = bArr3;
                                } else {
                                    i23 = i31;
                                    i11 = i10;
                                    unsafe = unsafe;
                                    i18 = iT0;
                                    c2535b3 = c2535b6;
                                    i58 = i24;
                                    sg = sg2;
                                    i19 = i21;
                                    iArr = iArr2;
                                    objArr = objArr;
                                    i17 = i23;
                                    i16 = i22;
                                    bArr2 = bArr3;
                                }
                                break;
                            case 15:
                                bArr3 = bArr;
                                i30 = i9;
                                i31 = iR;
                                i21 = i59;
                                i24 = z7 ? 1 : 0;
                                i22 = i20;
                                sg2 = sg5;
                                i32 = i10;
                                if (i62 == 0) {
                                    i56 |= i65;
                                    iS0 = p190y4.k.s0(bArr3, iT0, sg2);
                                    unsafe.putInt(obj2, j8, E3.f.G(sg2.f16417a));
                                    iW0 = iS0;
                                    i52 = i30;
                                    i54 = i31;
                                    i57 = i24;
                                    i53 = i21;
                                    i55 = i22;
                                    i10 = i32;
                                    sg5 = sg2;
                                    bArr8 = bArr3;
                                } else {
                                    i23 = i31;
                                    i11 = i10;
                                    unsafe = unsafe;
                                    i18 = iT0;
                                    c2535b3 = c2535b6;
                                    i58 = i24;
                                    sg = sg2;
                                    i19 = i21;
                                    iArr = iArr2;
                                    objArr = objArr;
                                    i17 = i23;
                                    i16 = i22;
                                    bArr2 = bArr3;
                                }
                                break;
                            case 16:
                                i21 = i59;
                                i24 = z7 ? 1 : 0;
                                i22 = i20;
                                if (i62 == 0) {
                                    i56 |= i65;
                                    bArr3 = bArr;
                                    int iV4 = p190y4.k.v0(bArr3, iT0, sg5);
                                    i31 = iR;
                                    sg2 = sg5;
                                    unsafe.putLong(obj, j8, E3.f.H(sg5.f16418b));
                                    i52 = i9;
                                    i10 = i10;
                                    iW0 = iV4;
                                    i54 = i31;
                                    i57 = i24;
                                    sg5 = sg2;
                                    i53 = i21;
                                    i55 = i22;
                                    bArr8 = bArr3;
                                } else {
                                    bArr3 = bArr;
                                    sg2 = sg5;
                                    i23 = iR;
                                    i11 = i10;
                                    unsafe = unsafe;
                                    i18 = iT0;
                                    c2535b3 = c2535b6;
                                    i58 = i24;
                                    sg = sg2;
                                    i19 = i21;
                                    iArr = iArr2;
                                    objArr = objArr;
                                    i17 = i23;
                                    i16 = i22;
                                    bArr2 = bArr3;
                                }
                                break;
                            default:
                                if (i62 == 3) {
                                    i56 |= i65;
                                    Object objX2 = r7.x(iR, obj2);
                                    int i83 = i20;
                                    iW0 = p190y4.k.w0(objX2, r7.w(iR), bArr, iT0, i9, (i59 << 3) | 4, sg);
                                    r7.h(iR, obj2, objX2);
                                    bArr8 = bArr;
                                    i55 = i83;
                                    i10 = i10;
                                    i54 = iR;
                                    i57 = z7 ? 1 : 0;
                                    i53 = i59;
                                    i52 = i9;
                                } else {
                                    i21 = i59;
                                    i22 = i20;
                                    bArr3 = bArr;
                                    i23 = iR;
                                    sg2 = sg5;
                                    i24 = z7 ? 1 : 0;
                                    i11 = i10;
                                    unsafe = unsafe;
                                    i18 = iT0;
                                    c2535b3 = c2535b6;
                                    i58 = i24;
                                    sg = sg2;
                                    i19 = i21;
                                    iArr = iArr2;
                                    objArr = objArr;
                                    i17 = i23;
                                    i16 = i22;
                                    bArr2 = bArr3;
                                }
                                break;
                        }
                    } else {
                        iArr = iArr2;
                        int i84 = i59;
                        byte[] bArr9 = bArr8;
                        int i85 = iR;
                        C2535b3 c2535b7 = c2535b6;
                        if (iS != 27) {
                            i16 = i55;
                            if (iS <= 49) {
                                int i86 = z7 ? 1 : 0;
                                long j9 = i63;
                                AbstractC2546d2 abstractC2546d3 = (AbstractC2546d2) ((InterfaceC2661y2) unsafe.getObject(obj2, j8));
                                if (abstractC2546d3.zzc()) {
                                    abstractC2546d2 = abstractC2546d3;
                                } else {
                                    int size = abstractC2546d3.size();
                                    InterfaceC2661y2 interfaceC2661y2Zzd = abstractC2546d3.zzd(size + size);
                                    unsafe.putObject(obj2, j8, interfaceC2661y2Zzd);
                                    abstractC2546d2 = interfaceC2661y2Zzd;
                                }
                                AbstractC2546d2 abstractC2546d4 = abstractC2546d2;
                                switch (iS) {
                                    case 18:
                                    case 35:
                                        i36 = i9;
                                        sg = sg;
                                        unsafe = unsafe;
                                        bArr5 = bArr9;
                                        i37 = i85;
                                        i38 = i84;
                                        iArr = iArr;
                                        i39 = i86 == true ? 1 : 0;
                                        objArr = objArr;
                                        c2535b7 = c2535b7;
                                        i40 = iT0;
                                        if (i62 == 2) {
                                            AbstractC2090uc.u(abstractC2546d4);
                                            if (p190y4.k.s0(bArr5, i40, sg) + sg.f16417a > bArr5.length) {
                                                throw new B2("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                            throw null;
                                        }
                                        if (i62 == 1) {
                                            AbstractC2090uc.u(abstractC2546d4);
                                            Double.longBitsToDouble(p190y4.k.y0(bArr5, i40));
                                            throw null;
                                        }
                                        iV2 = i40;
                                        if (iV2 != i40) {
                                            i10 = i10;
                                            i57 = i39;
                                            iW0 = iV2;
                                            i52 = i36;
                                            bArr8 = bArr5;
                                            sg5 = sg;
                                            i53 = i38;
                                            i54 = i37;
                                            i55 = i16;
                                            r7 = this;
                                            obj2 = obj;
                                        } else {
                                            obj2 = obj;
                                            i18 = iV2;
                                            c2535b3 = c2535b7;
                                            i19 = i38;
                                            i17 = i37;
                                            i58 = i39;
                                            bArr2 = bArr5;
                                            i11 = i10;
                                        }
                                        break;
                                        break;
                                    case 19:
                                    case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                                        i36 = i9;
                                        sg = sg;
                                        unsafe = unsafe;
                                        bArr5 = bArr9;
                                        i37 = i85;
                                        i38 = i84;
                                        iArr = iArr;
                                        i39 = i86 == true ? 1 : 0;
                                        objArr = objArr;
                                        c2535b7 = c2535b7;
                                        i40 = iT0;
                                        if (i62 == 2) {
                                            AbstractC2090uc.u(abstractC2546d4);
                                            if (p190y4.k.s0(bArr5, i40, sg) + sg.f16417a > bArr5.length) {
                                                throw new B2("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                            throw null;
                                        }
                                        if (i62 == 5) {
                                            AbstractC2090uc.u(abstractC2546d4);
                                            Float.intBitsToFloat(p190y4.k.n0(bArr5, i40));
                                            throw null;
                                        }
                                        iV2 = i40;
                                        if (iV2 != i40) {
                                            i10 = i10;
                                            i57 = i39;
                                            iW0 = iV2;
                                            i52 = i36;
                                            bArr8 = bArr5;
                                            sg5 = sg;
                                            i53 = i38;
                                            i54 = i37;
                                            i55 = i16;
                                            r7 = this;
                                            obj2 = obj;
                                        } else {
                                            obj2 = obj;
                                            i18 = iV2;
                                            c2535b3 = c2535b7;
                                            i19 = i38;
                                            i17 = i37;
                                            i58 = i39;
                                            bArr2 = bArr5;
                                            i11 = i10;
                                        }
                                        break;
                                        break;
                                    case 20:
                                    case 21:
                                    case 37:
                                    case 38:
                                        i36 = i9;
                                        sg = sg;
                                        unsafe = unsafe;
                                        bArr5 = bArr9;
                                        i37 = i85;
                                        i38 = i84;
                                        iArr = iArr;
                                        i39 = i86 == true ? 1 : 0;
                                        objArr = objArr;
                                        c2535b7 = c2535b7;
                                        i40 = iT0;
                                        if (i62 == 2) {
                                            G2 g8 = (G2) abstractC2546d4;
                                            int iS5 = p190y4.k.s0(bArr5, i40, sg);
                                            int i87 = sg.f16417a + iS5;
                                            while (iS5 < i87) {
                                                iS5 = p190y4.k.v0(bArr5, iS5, sg);
                                                g8.l(sg.f16418b);
                                            }
                                            if (iS5 != i87) {
                                                throw new B2("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                            iV2 = iS5;
                                        } else if (i62 == 0) {
                                            G2 g9 = (G2) abstractC2546d4;
                                            iV2 = p190y4.k.v0(bArr5, i40, sg);
                                            g9.l(sg.f16418b);
                                            while (iV2 < i36) {
                                                int iS6 = p190y4.k.s0(bArr5, iV2, sg);
                                                if (i39 == sg.f16417a) {
                                                    iV2 = p190y4.k.v0(bArr5, iS6, sg);
                                                    g9.l(sg.f16418b);
                                                }
                                            }
                                        } else {
                                            iV2 = i40;
                                        }
                                        if (iV2 != i40) {
                                            i10 = i10;
                                            i57 = i39;
                                            iW0 = iV2;
                                            i52 = i36;
                                            bArr8 = bArr5;
                                            sg5 = sg;
                                            i53 = i38;
                                            i54 = i37;
                                            i55 = i16;
                                            r7 = this;
                                            obj2 = obj;
                                        } else {
                                            obj2 = obj;
                                            i18 = iV2;
                                            c2535b3 = c2535b7;
                                            i19 = i38;
                                            i17 = i37;
                                            i58 = i39;
                                            bArr2 = bArr5;
                                            i11 = i10;
                                        }
                                        break;
                                    case 22:
                                    case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                                    case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                    case 43:
                                        c2535b7 = c2535b7;
                                        i36 = i9;
                                        bArr6 = bArr9;
                                        i37 = i85;
                                        i41 = i84;
                                        iArr = iArr;
                                        i39 = i86 == true ? 1 : 0;
                                        objArr = objArr;
                                        i40 = iT0;
                                        sg3 = sg;
                                        if (i62 == 2) {
                                            iV2 = p190y4.k.q0(bArr6, i40, abstractC2546d4, sg3);
                                            i38 = i41;
                                            sg = sg3;
                                            bArr5 = bArr6;
                                        } else if (i62 == 0) {
                                            unsafe = unsafe;
                                            sg = sg3;
                                            i38 = i41;
                                            bArr5 = bArr6;
                                            iV2 = p190y4.k.u0(i39 == true ? 1 : 0, bArr, i40, i9, abstractC2546d4, sg);
                                        } else {
                                            i38 = i41;
                                            unsafe = unsafe;
                                            sg = sg3;
                                            bArr5 = bArr6;
                                            iV2 = i40;
                                        }
                                        if (iV2 != i40) {
                                            i10 = i10;
                                            i57 = i39;
                                            iW0 = iV2;
                                            i52 = i36;
                                            bArr8 = bArr5;
                                            sg5 = sg;
                                            i53 = i38;
                                            i54 = i37;
                                            i55 = i16;
                                            r7 = this;
                                            obj2 = obj;
                                        } else {
                                            obj2 = obj;
                                            i18 = iV2;
                                            c2535b3 = c2535b7;
                                            i19 = i38;
                                            i17 = i37;
                                            i58 = i39;
                                            bArr2 = bArr5;
                                            i11 = i10;
                                        }
                                        break;
                                    case 23:
                                    case 32:
                                    case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                                    case 46:
                                        i36 = i9;
                                        bArr6 = bArr9;
                                        i37 = i85;
                                        i39 = i86 == true ? 1 : 0;
                                        c2535b7 = c2535b7;
                                        i40 = iT0;
                                        i41 = i84;
                                        iArr = iArr;
                                        objArr = objArr;
                                        sg3 = sg;
                                        if (i62 != 2) {
                                            if (i62 == 1) {
                                                iV2 = i40 + 8;
                                                G2 g10 = (G2) abstractC2546d4;
                                                g10.l(p190y4.k.y0(bArr6, i40));
                                                while (iV2 < i36) {
                                                    int iS7 = p190y4.k.s0(bArr6, iV2, sg3);
                                                    if (i39 != sg3.f16417a) {
                                                        i38 = i41;
                                                        sg = sg3;
                                                        bArr5 = bArr6;
                                                        if (iV2 != i40) {
                                                            i10 = i10;
                                                            i57 = i39;
                                                            iW0 = iV2;
                                                            i52 = i36;
                                                            bArr8 = bArr5;
                                                            sg5 = sg;
                                                            i53 = i38;
                                                            i54 = i37;
                                                            i55 = i16;
                                                            r7 = this;
                                                            obj2 = obj;
                                                        } else {
                                                            obj2 = obj;
                                                            i18 = iV2;
                                                            c2535b3 = c2535b7;
                                                            i19 = i38;
                                                            i17 = i37;
                                                            i58 = i39;
                                                            bArr2 = bArr5;
                                                            i11 = i10;
                                                        }
                                                    } else {
                                                        g10.l(p190y4.k.y0(bArr6, iS7));
                                                        iV2 = iS7 + 8;
                                                    }
                                                    break;
                                                }
                                                i38 = i41;
                                                sg = sg3;
                                                bArr5 = bArr6;
                                                if (iV2 != i40) {
                                                    i10 = i10;
                                                    i57 = i39;
                                                    iW0 = iV2;
                                                    i52 = i36;
                                                    bArr8 = bArr5;
                                                    sg5 = sg;
                                                    i53 = i38;
                                                    i54 = i37;
                                                    i55 = i16;
                                                    r7 = this;
                                                    obj2 = obj;
                                                } else {
                                                    obj2 = obj;
                                                    i18 = iV2;
                                                    c2535b3 = c2535b7;
                                                    i19 = i38;
                                                    i17 = i37;
                                                    i58 = i39;
                                                    bArr2 = bArr5;
                                                    i11 = i10;
                                                }
                                            }
                                            i38 = i41;
                                            unsafe = unsafe;
                                            sg = sg3;
                                            bArr5 = bArr6;
                                            iV2 = i40;
                                            if (iV2 != i40) {
                                                i10 = i10;
                                                i57 = i39;
                                                iW0 = iV2;
                                                i52 = i36;
                                                bArr8 = bArr5;
                                                sg5 = sg;
                                                i53 = i38;
                                                i54 = i37;
                                                i55 = i16;
                                                r7 = this;
                                                obj2 = obj;
                                            } else {
                                                obj2 = obj;
                                                i18 = iV2;
                                                c2535b3 = c2535b7;
                                                i19 = i38;
                                                i17 = i37;
                                                i58 = i39;
                                                bArr2 = bArr5;
                                                i11 = i10;
                                            }
                                            break;
                                        } else {
                                            G2 g11 = (G2) abstractC2546d4;
                                            iS1 = p190y4.k.s0(bArr6, i40, sg3);
                                            int i88 = sg3.f16417a;
                                            int i89 = iS1 + i88;
                                            if (i89 > bArr6.length) {
                                                throw new B2("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                            g11.n((i88 / 8) + g11.size());
                                            while (iS1 < i89) {
                                                g11.l(p190y4.k.y0(bArr6, iS1));
                                                iS1 += 8;
                                            }
                                            if (iS1 != i89) {
                                                throw new B2("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                            i38 = i41;
                                            iV2 = iS1;
                                            sg = sg3;
                                            bArr5 = bArr6;
                                            if (iV2 != i40) {
                                                i10 = i10;
                                                i57 = i39;
                                                iW0 = iV2;
                                                i52 = i36;
                                                bArr8 = bArr5;
                                                sg5 = sg;
                                                i53 = i38;
                                                i54 = i37;
                                                i55 = i16;
                                                r7 = this;
                                                obj2 = obj;
                                            } else {
                                                obj2 = obj;
                                                i18 = iV2;
                                                c2535b3 = c2535b7;
                                                i19 = i38;
                                                i17 = i37;
                                                i58 = i39;
                                                bArr2 = bArr5;
                                                i11 = i10;
                                            }
                                        }
                                        break;
                                    case 24:
                                    case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                                    case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
                                    case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                                        i36 = i9;
                                        bArr6 = bArr9;
                                        i37 = i85;
                                        i39 = i86 == true ? 1 : 0;
                                        c2535b7 = c2535b7;
                                        i40 = iT0;
                                        i41 = i84;
                                        iArr = iArr;
                                        objArr = objArr;
                                        sg3 = sg;
                                        if (i62 != 2) {
                                            if (i62 == 5) {
                                                iV2 = i40 + 4;
                                                C2636t2 c2636t2 = (C2636t2) abstractC2546d4;
                                                c2636t2.l(p190y4.k.n0(bArr6, i40));
                                                while (iV2 < i36) {
                                                    int iS8 = p190y4.k.s0(bArr6, iV2, sg3);
                                                    if (i39 != sg3.f16417a) {
                                                        i38 = i41;
                                                        sg = sg3;
                                                        bArr5 = bArr6;
                                                        if (iV2 != i40) {
                                                            i10 = i10;
                                                            i57 = i39;
                                                            iW0 = iV2;
                                                            i52 = i36;
                                                            bArr8 = bArr5;
                                                            sg5 = sg;
                                                            i53 = i38;
                                                            i54 = i37;
                                                            i55 = i16;
                                                            r7 = this;
                                                            obj2 = obj;
                                                        } else {
                                                            obj2 = obj;
                                                            i18 = iV2;
                                                            c2535b3 = c2535b7;
                                                            i19 = i38;
                                                            i17 = i37;
                                                            i58 = i39;
                                                            bArr2 = bArr5;
                                                            i11 = i10;
                                                        }
                                                    } else {
                                                        c2636t2.l(p190y4.k.n0(bArr6, iS8));
                                                        iV2 = iS8 + 4;
                                                    }
                                                    break;
                                                }
                                                i38 = i41;
                                                sg = sg3;
                                                bArr5 = bArr6;
                                                if (iV2 != i40) {
                                                    i10 = i10;
                                                    i57 = i39;
                                                    iW0 = iV2;
                                                    i52 = i36;
                                                    bArr8 = bArr5;
                                                    sg5 = sg;
                                                    i53 = i38;
                                                    i54 = i37;
                                                    i55 = i16;
                                                    r7 = this;
                                                    obj2 = obj;
                                                } else {
                                                    obj2 = obj;
                                                    i18 = iV2;
                                                    c2535b3 = c2535b7;
                                                    i19 = i38;
                                                    i17 = i37;
                                                    i58 = i39;
                                                    bArr2 = bArr5;
                                                    i11 = i10;
                                                }
                                            }
                                            i38 = i41;
                                            unsafe = unsafe;
                                            sg = sg3;
                                            bArr5 = bArr6;
                                            iV2 = i40;
                                            if (iV2 != i40) {
                                                i10 = i10;
                                                i57 = i39;
                                                iW0 = iV2;
                                                i52 = i36;
                                                bArr8 = bArr5;
                                                sg5 = sg;
                                                i53 = i38;
                                                i54 = i37;
                                                i55 = i16;
                                                r7 = this;
                                                obj2 = obj;
                                            } else {
                                                obj2 = obj;
                                                i18 = iV2;
                                                c2535b3 = c2535b7;
                                                i19 = i38;
                                                i17 = i37;
                                                i58 = i39;
                                                bArr2 = bArr5;
                                                i11 = i10;
                                            }
                                            break;
                                        } else {
                                            C2636t2 c2636t3 = (C2636t2) abstractC2546d4;
                                            iS1 = p190y4.k.s0(bArr6, i40, sg3);
                                            int i90 = sg3.f16417a;
                                            int i91 = iS1 + i90;
                                            if (i91 > bArr6.length) {
                                                throw new B2("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                            c2636t3.n((i90 / 4) + c2636t3.size());
                                            while (iS1 < i91) {
                                                c2636t3.l(p190y4.k.n0(bArr6, iS1));
                                                iS1 += 4;
                                            }
                                            if (iS1 != i91) {
                                                throw new B2("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                            i38 = i41;
                                            iV2 = iS1;
                                            sg = sg3;
                                            bArr5 = bArr6;
                                            if (iV2 != i40) {
                                                i10 = i10;
                                                i57 = i39;
                                                iW0 = iV2;
                                                i52 = i36;
                                                bArr8 = bArr5;
                                                sg5 = sg;
                                                i53 = i38;
                                                i54 = i37;
                                                i55 = i16;
                                                r7 = this;
                                                obj2 = obj;
                                            } else {
                                                obj2 = obj;
                                                i18 = iV2;
                                                c2535b3 = c2535b7;
                                                i19 = i38;
                                                i17 = i37;
                                                i58 = i39;
                                                bArr2 = bArr5;
                                                i11 = i10;
                                            }
                                        }
                                        break;
                                    case 25:
                                    case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                                        i36 = i9;
                                        bArr6 = bArr9;
                                        i37 = i85;
                                        i39 = i86 == true ? 1 : 0;
                                        c2535b7 = c2535b7;
                                        i40 = iT0;
                                        i41 = i84;
                                        iArr = iArr;
                                        objArr = objArr;
                                        sg3 = sg;
                                        if (i62 == 2) {
                                            AbstractC2090uc.u(abstractC2546d4);
                                            iS1 = p190y4.k.s0(bArr6, i40, sg3);
                                            int i92 = sg3.f16417a + iS1;
                                            if (iS1 < i92) {
                                                p190y4.k.v0(bArr6, iS1, sg3);
                                                throw null;
                                            }
                                            if (iS1 != i92) {
                                                throw new B2("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                            i38 = i41;
                                            iV2 = iS1;
                                            sg = sg3;
                                            bArr5 = bArr6;
                                            if (iV2 != i40) {
                                                i10 = i10;
                                                i57 = i39;
                                                iW0 = iV2;
                                                i52 = i36;
                                                bArr8 = bArr5;
                                                sg5 = sg;
                                                i53 = i38;
                                                i54 = i37;
                                                i55 = i16;
                                                r7 = this;
                                                obj2 = obj;
                                            } else {
                                                obj2 = obj;
                                                i18 = iV2;
                                                c2535b3 = c2535b7;
                                                i19 = i38;
                                                i17 = i37;
                                                i58 = i39;
                                                bArr2 = bArr5;
                                                i11 = i10;
                                            }
                                        } else {
                                            if (i62 == 0) {
                                                AbstractC2090uc.u(abstractC2546d4);
                                                p190y4.k.v0(bArr6, i40, sg3);
                                                throw null;
                                            }
                                            i38 = i41;
                                            unsafe = unsafe;
                                            sg = sg3;
                                            bArr5 = bArr6;
                                            iV2 = i40;
                                            if (iV2 != i40) {
                                                i10 = i10;
                                                i57 = i39;
                                                iW0 = iV2;
                                                i52 = i36;
                                                bArr8 = bArr5;
                                                sg5 = sg;
                                                i53 = i38;
                                                i54 = i37;
                                                i55 = i16;
                                                r7 = this;
                                                obj2 = obj;
                                            } else {
                                                obj2 = obj;
                                                i18 = iV2;
                                                c2535b3 = c2535b7;
                                                i19 = i38;
                                                i17 = i37;
                                                i58 = i39;
                                                bArr2 = bArr5;
                                                i11 = i10;
                                            }
                                        }
                                        break;
                                    case Service.BILLING_FIELD_NUMBER /* 26 */:
                                        c2535b7 = c2535b7;
                                        i36 = i9;
                                        bArr6 = bArr9;
                                        i37 = i85;
                                        i41 = i84;
                                        iArr = iArr;
                                        i39 = i86 == true ? 1 : 0;
                                        objArr = objArr;
                                        i40 = iT0;
                                        sg3 = sg;
                                        if (i62 == 2) {
                                            if ((j9 & 536870912) == 0) {
                                                iS2 = p190y4.k.s0(bArr6, i40, sg3);
                                                int i93 = sg3.f16417a;
                                                if (i93 < 0) {
                                                    throw new B2("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                }
                                                if (i93 == 0) {
                                                    abstractC2546d4.add(HttpUrl.FRAGMENT_ENCODE_SET);
                                                } else {
                                                    abstractC2546d4.add(new String(bArr6, iS2, i93, AbstractC2666z2.f23416a));
                                                    iS2 += i93;
                                                }
                                                while (iS2 < i36) {
                                                    int iS9 = p190y4.k.s0(bArr6, iS2, sg3);
                                                    if (i39 == sg3.f16417a) {
                                                        iS2 = p190y4.k.s0(bArr6, iS9, sg3);
                                                        int i94 = sg3.f16417a;
                                                        if (i94 < 0) {
                                                            throw new B2("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                        }
                                                        if (i94 == 0) {
                                                            abstractC2546d4.add(HttpUrl.FRAGMENT_ENCODE_SET);
                                                        } else {
                                                            abstractC2546d4.add(new String(bArr6, iS2, i94, AbstractC2666z2.f23416a));
                                                            iS2 += i94;
                                                        }
                                                    }
                                                }
                                            } else {
                                                iS2 = p190y4.k.s0(bArr6, i40, sg3);
                                                int i95 = sg3.f16417a;
                                                if (i95 < 0) {
                                                    throw new B2("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                }
                                                if (i95 == 0) {
                                                    abstractC2546d4.add(HttpUrl.FRAGMENT_ENCODE_SET);
                                                } else {
                                                    int i96 = iS2 + i95;
                                                    if (!AbstractC2577i3.d(iS2, bArr6, i96)) {
                                                        throw new B2(
                                                        /*  JADX ERROR: Method code generation error
                                                            jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x0909: THROW 
                                                              (wrap com.google.android.gms.internal.measurement.B2:0x0906: CONSTRUCTOR (r14v49 ?? I:java.lang.String) A[MD:(java.lang.String):void (c), WRAPPED] (LINE:196) call: com.google.android.gms.internal.measurement.B2.<init>(java.lang.String):void type: CONSTRUCTOR)
                                                             (LINE:197) in method: com.google.android.gms.internal.measurement.R2.o(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.ads.SG):int, file: classes.dex
                                                            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:310)
                                                            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:273)
                                                            	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:94)
                                                            	at jadx.core.dex.nodes.IBlock.generate(IBlock.java:15)
                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:140)
                                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:140)
                                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                            	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:267)
                                                            	at jadx.core.dex.regions.SwitchRegion.generate(SwitchRegion.java:90)
                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:140)
                                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                            	at jadx.core.codegen.RegionGen.makeLoop(RegionGen.java:175)
                                                            	at jadx.core.dex.regions.loops.LoopRegion.generate(LoopRegion.java:173)
                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                            	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:291)
                                                            	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:270)
                                                            	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:420)
                                                            	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
                                                            	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:299)
                                                            	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:186)
                                                            	at java.base/java.util.ArrayList.forEach(ArrayList.java:1612)
                                                            	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                                                            	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
                                                            	at java.base/java.util.stream.ReferencePipeline$7$1FlatMap.end(ReferencePipeline.java:284)
                                                            	at java.base/java.util.stream.AbstractPipeline.copyInto(AbstractPipeline.java:571)
                                                            	at java.base/java.util.stream.AbstractPipeline.wrapAndCopyInto(AbstractPipeline.java:560)
                                                            	at java.base/java.util.stream.ForEachOps$ForEachOp.evaluateSequential(ForEachOps.java:153)
                                                            	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.evaluateSequential(ForEachOps.java:176)
                                                            	at java.base/java.util.stream.AbstractPipeline.evaluate(AbstractPipeline.java:265)
                                                            	at java.base/java.util.stream.ReferencePipeline.forEach(ReferencePipeline.java:632)
                                                            	at jadx.core.codegen.ClassGen.addInnerClsAndMethods(ClassGen.java:295)
                                                            	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:284)
                                                            	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:268)
                                                            	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:160)
                                                            	at jadx.core.codegen.ClassGen.makeClass(ClassGen.java:104)
                                                            	at jadx.core.codegen.CodeGen.wrapCodeGen(CodeGen.java:45)
                                                            	at jadx.core.codegen.CodeGen.generateJavaCode(CodeGen.java:34)
                                                            	at jadx.core.codegen.CodeGen.generate(CodeGen.java:22)
                                                            	at jadx.core.ProcessClass.process(ProcessClass.java:89)
                                                            	at jadx.core.ProcessClass.generateCode(ProcessClass.java:127)
                                                            	at jadx.core.dex.nodes.ClassNode.generateClassCode(ClassNode.java:405)
                                                            	at jadx.core.dex.nodes.ClassNode.decompile(ClassNode.java:393)
                                                            	at jadx.core.dex.nodes.ClassNode.getCode(ClassNode.java:343)
                                                            Caused by: jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r14v49 ??
                                                            	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
                                                            */
                                                        /*
                                                            Method dump skipped, instruction units count: 3976
                                                            To view this dump change 'Code comments level' option to 'DEBUG'
                                                        */
                                                        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.R2.o(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.ads.SG):int");
                                                    }

                                                    public final int r(int i8, int i9) {
                                                        int[] iArr = this.f22992a;
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

                                                    public final int t(int i8) {
                                                        return this.f22992a[i8 + 1];
                                                    }

                                                    public final InterfaceC2646v2 v(int i8) {
                                                        int i9 = i8 / 3;
                                                        return (InterfaceC2646v2) this.f22993b[i9 + i9 + 1];
                                                    }

                                                    public final Y2 w(int i8) {
                                                        int i9 = i8 / 3;
                                                        int i10 = i9 + i9;
                                                        Object[] objArr = this.f22993b;
                                                        Y2 y7 = (Y2) objArr[i10];
                                                        if (y7 != null) {
                                                            return y7;
                                                        }
                                                        Y2 y2A = V2.f23021c.a((Class) objArr[i10 + 1]);
                                                        objArr[i10] = y2A;
                                                        return y2A;
                                                    }

                                                    public final Object x(int i8, Object obj) {
                                                        Y2 y2W = w(i8);
                                                        int iT = t(i8) & 1048575;
                                                        if (!k(i8, obj)) {
                                                            return y2W.zze();
                                                        }
                                                        Object object = f22991k.getObject(obj, iT);
                                                        if (m(object)) {
                                                            return object;
                                                        }
                                                        AbstractC2631s2 abstractC2631s2Zze = y2W.zze();
                                                        if (object != null) {
                                                            y2W.zzg(abstractC2631s2Zze, object);
                                                        }
                                                        return abstractC2631s2Zze;
                                                    }

                                                    public final Object y(int i8, Object obj, int i9) {
                                                        Y2 y2W = w(i9);
                                                        if (!n(i8, obj, i9)) {
                                                            return y2W.zze();
                                                        }
                                                        Object object = f22991k.getObject(obj, t(i9) & 1048575);
                                                        if (m(object)) {
                                                            return object;
                                                        }
                                                        AbstractC2631s2 abstractC2631s2Zze = y2W.zze();
                                                        if (object != null) {
                                                            y2W.zzg(abstractC2631s2Zze, object);
                                                        }
                                                        return abstractC2631s2Zze;
                                                    }

                                                    /* JADX WARN: Code duplicated, block: B:138:0x0398  */
                                                    /* JADX WARN: Code duplicated, block: B:182:0x04b7  */
                                                    @Override // com.google.android.gms.internal.measurement.Y2
                                                    public final int zza(Object obj) {
                                                        int i8;
                                                        int i9;
                                                        int i10;
                                                        int iG;
                                                        int iO;
                                                        int iG2;
                                                        int iN;
                                                        int iG3;
                                                        int iM;
                                                        int iG4;
                                                        int size;
                                                        int iQ;
                                                        int iG5;
                                                        int iG6;
                                                        int iG7;
                                                        int iD;
                                                        int i11 = 1048575;
                                                        int i12 = 1048575;
                                                        int i13 = 0;
                                                        int i14 = 0;
                                                        int iZ = 0;
                                                        while (true) {
                                                            int[] iArr = this.f22992a;
                                                            if (i14 >= iArr.length) {
                                                                return ((AbstractC2631s2) obj).zzc.a() + iZ;
                                                            }
                                                            int iT = t(i14);
                                                            int iS = s(iT);
                                                            int i15 = iArr[i14];
                                                            int i16 = iArr[i14 + 2];
                                                            int i17 = i16 & i11;
                                                            Unsafe unsafe = f22991k;
                                                            if (iS <= 17) {
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
                                                            int i18 = iT & i11;
                                                            if (iS >= EnumC2612o2.f23225H.zza()) {
                                                                EnumC2612o2.f23226I.getClass();
                                                            }
                                                            long j8 = i18;
                                                            switch (iS) {
                                                                case 0:
                                                                    if (l(obj, i14, i8, i9, i10)) {
                                                                        iZ = AbstractC2090uc.z(i15 << 3, 8, iZ);
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 1:
                                                                    if (l(obj, i14, i8, i9, i10)) {
                                                                        iZ = AbstractC2090uc.z(i15 << 3, 4, iZ);
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 2:
                                                                    if (l(obj, i14, i8, i9, i10)) {
                                                                        long j9 = unsafe.getLong(obj, j8);
                                                                        iG = C2588k2.G(i15 << 3);
                                                                        iO = C2588k2.o(j9);
                                                                        iZ += iO + iG;
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 3:
                                                                    if (l(obj, i14, i8, i9, i10)) {
                                                                        long j10 = unsafe.getLong(obj, j8);
                                                                        iG = C2588k2.G(i15 << 3);
                                                                        iO = C2588k2.o(j10);
                                                                        iZ += iO + iG;
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 4:
                                                                    if (l(obj, i14, i8, i9, i10)) {
                                                                        long j11 = unsafe.getInt(obj, j8);
                                                                        iG = C2588k2.G(i15 << 3);
                                                                        iO = C2588k2.o(j11);
                                                                        iZ += iO + iG;
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 5:
                                                                    if (l(obj, i14, i8, i9, i10)) {
                                                                        iZ = AbstractC2090uc.z(i15 << 3, 8, iZ);
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 6:
                                                                    if (l(obj, i14, i8, i9, i10)) {
                                                                        iZ = AbstractC2090uc.z(i15 << 3, 4, iZ);
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 7:
                                                                    if (l(obj, i14, i8, i9, i10)) {
                                                                        iZ = AbstractC2090uc.z(i15 << 3, 1, iZ);
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 8:
                                                                    if (l(obj, i14, i8, i9, i10)) {
                                                                        int i19 = i15 << 3;
                                                                        Object object = unsafe.getObject(obj, j8);
                                                                        if (object instanceof AbstractC2576i2) {
                                                                            iG2 = C2588k2.G(i19);
                                                                            iN = ((AbstractC2576i2) object).n();
                                                                            iG3 = C2588k2.G(iN);
                                                                            iZ += iG3 + iN + iG2;
                                                                        } else {
                                                                            iG = C2588k2.G(i19);
                                                                            iO = C2588k2.F((String) object);
                                                                            iZ += iO + iG;
                                                                        }
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 9:
                                                                    if (l(obj, i14, i8, i9, i10)) {
                                                                        iM = Z2.m(i15, w(i14), unsafe.getObject(obj, j8));
                                                                        iZ += iM;
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 10:
                                                                    if (l(obj, i14, i8, i9, i10)) {
                                                                        AbstractC2576i2 abstractC2576i2 = (AbstractC2576i2) unsafe.getObject(obj, j8);
                                                                        iG2 = C2588k2.G(i15 << 3);
                                                                        iN = abstractC2576i2.n();
                                                                        iG3 = C2588k2.G(iN);
                                                                        iZ += iG3 + iN + iG2;
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 11:
                                                                    if (l(obj, i14, i8, i9, i10)) {
                                                                        iZ = AbstractC2090uc.z(unsafe.getInt(obj, j8), C2588k2.G(i15 << 3), iZ);
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 12:
                                                                    if (l(obj, i14, i8, i9, i10)) {
                                                                        long j12 = unsafe.getInt(obj, j8);
                                                                        iG = C2588k2.G(i15 << 3);
                                                                        iO = C2588k2.o(j12);
                                                                        iZ += iO + iG;
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 13:
                                                                    if (l(obj, i14, i8, i9, i10)) {
                                                                        iZ = AbstractC2090uc.z(i15 << 3, 4, iZ);
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 14:
                                                                    if (l(obj, i14, i8, i9, i10)) {
                                                                        iZ = AbstractC2090uc.z(i15 << 3, 8, iZ);
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 15:
                                                                    if (l(obj, i14, i8, i9, i10)) {
                                                                        int i20 = unsafe.getInt(obj, j8);
                                                                        iZ = AbstractC2090uc.z((i20 >> 31) ^ (i20 + i20), C2588k2.G(i15 << 3), iZ);
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 16:
                                                                    if (l(obj, i14, i8, i9, i10)) {
                                                                        long j13 = unsafe.getLong(obj, j8);
                                                                        iG = C2588k2.G(i15 << 3);
                                                                        iO = C2588k2.o((j13 >> 63) ^ (j13 + j13));
                                                                        iZ += iO + iG;
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 17:
                                                                    if (l(obj, i14, i8, i9, i10)) {
                                                                        iM = C2588k2.D(i15, (P2) unsafe.getObject(obj, j8), w(i14));
                                                                        iZ += iM;
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 18:
                                                                    iM = Z2.i(i15, (List) unsafe.getObject(obj, j8));
                                                                    iZ += iM;
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 19:
                                                                    iM = Z2.g(i15, (List) unsafe.getObject(obj, j8));
                                                                    iZ += iM;
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 20:
                                                                    List list = (List) unsafe.getObject(obj, j8);
                                                                    C2622q2 c2622q2 = Z2.f23065a;
                                                                    if (list.size() == 0) {
                                                                        iG4 = 0;
                                                                    } else {
                                                                        iG4 = (C2588k2.G(i15 << 3) * list.size()) + Z2.l(list);
                                                                    }
                                                                    iZ += iG4;
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 21:
                                                                    List list2 = (List) unsafe.getObject(obj, j8);
                                                                    C2622q2 c2622q3 = Z2.f23065a;
                                                                    size = list2.size();
                                                                    if (size == 0) {
                                                                        iG6 = 0;
                                                                    } else {
                                                                        iQ = Z2.q(list2);
                                                                        iG5 = C2588k2.G(i15 << 3);
                                                                        iG6 = (iG5 * size) + iQ;
                                                                    }
                                                                    iZ += iG6;
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 22:
                                                                    List list3 = (List) unsafe.getObject(obj, j8);
                                                                    C2622q2 c2622q4 = Z2.f23065a;
                                                                    size = list3.size();
                                                                    if (size == 0) {
                                                                        iG6 = 0;
                                                                    } else {
                                                                        iQ = Z2.k(list3);
                                                                        iG5 = C2588k2.G(i15 << 3);
                                                                        iG6 = (iG5 * size) + iQ;
                                                                    }
                                                                    iZ += iG6;
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 23:
                                                                    iM = Z2.i(i15, (List) unsafe.getObject(obj, j8));
                                                                    iZ += iM;
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 24:
                                                                    iM = Z2.g(i15, (List) unsafe.getObject(obj, j8));
                                                                    iZ += iM;
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 25:
                                                                    List list4 = (List) unsafe.getObject(obj, j8);
                                                                    C2622q2 c2622q5 = Z2.f23065a;
                                                                    int size2 = list4.size();
                                                                    if (size2 == 0) {
                                                                        iG4 = 0;
                                                                    } else {
                                                                        iG4 = (C2588k2.G(i15 << 3) + 1) * size2;
                                                                    }
                                                                    iZ += iG4;
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case Service.BILLING_FIELD_NUMBER /* 26 */:
                                                                    List list5 = (List) unsafe.getObject(obj, j8);
                                                                    C2622q2 c2622q6 = Z2.f23065a;
                                                                    int size3 = list5.size();
                                                                    if (size3 == 0) {
                                                                        iG6 = 0;
                                                                    } else {
                                                                        iG6 = C2588k2.G(i15 << 3) * size3;
                                                                        for (int i21 = 0; i21 < size3; i21++) {
                                                                            Object obj2 = list5.get(i21);
                                                                            if (obj2 instanceof AbstractC2576i2) {
                                                                                int iN2 = ((AbstractC2576i2) obj2).n();
                                                                                iG6 = AbstractC2090uc.z(iN2, iN2, iG6);
                                                                            } else {
                                                                                iG6 = C2588k2.F((String) obj2) + iG6;
                                                                            }
                                                                        }
                                                                    }
                                                                    iZ += iG6;
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 27:
                                                                    List list6 = (List) unsafe.getObject(obj, j8);
                                                                    Y2 y2W = w(i14);
                                                                    C2622q2 c2622q7 = Z2.f23065a;
                                                                    int size4 = list6.size();
                                                                    if (size4 == 0) {
                                                                        iG7 = 0;
                                                                    } else {
                                                                        iG7 = C2588k2.G(i15 << 3) * size4;
                                                                        for (int i22 = 0; i22 < size4; i22++) {
                                                                            iG7 += C2588k2.E((P2) list6.get(i22), y2W);
                                                                        }
                                                                    }
                                                                    iZ += iG7;
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case Service.MONITORING_FIELD_NUMBER /* 28 */:
                                                                    List list7 = (List) unsafe.getObject(obj, j8);
                                                                    C2622q2 c2622q8 = Z2.f23065a;
                                                                    int size5 = list7.size();
                                                                    if (size5 == 0) {
                                                                        iG6 = 0;
                                                                    } else {
                                                                        iG6 = C2588k2.G(i15 << 3) * size5;
                                                                        for (int i23 = 0; i23 < list7.size(); i23++) {
                                                                            int iN3 = ((AbstractC2576i2) list7.get(i23)).n();
                                                                            iG6 = AbstractC2090uc.z(iN3, iN3, iG6);
                                                                        }
                                                                    }
                                                                    iZ += iG6;
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                                                                    List list8 = (List) unsafe.getObject(obj, j8);
                                                                    C2622q2 c2622q9 = Z2.f23065a;
                                                                    size = list8.size();
                                                                    if (size == 0) {
                                                                        iG6 = 0;
                                                                    } else {
                                                                        iQ = Z2.p(list8);
                                                                        iG5 = C2588k2.G(i15 << 3);
                                                                        iG6 = (iG5 * size) + iQ;
                                                                    }
                                                                    iZ += iG6;
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                                                                    List list9 = (List) unsafe.getObject(obj, j8);
                                                                    C2622q2 c2622q10 = Z2.f23065a;
                                                                    size = list9.size();
                                                                    if (size == 0) {
                                                                        iG6 = 0;
                                                                    } else {
                                                                        iQ = Z2.f(list9);
                                                                        iG5 = C2588k2.G(i15 << 3);
                                                                        iG6 = (iG5 * size) + iQ;
                                                                    }
                                                                    iZ += iG6;
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                                                                    iM = Z2.g(i15, (List) unsafe.getObject(obj, j8));
                                                                    iZ += iM;
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 32:
                                                                    iM = Z2.i(i15, (List) unsafe.getObject(obj, j8));
                                                                    iZ += iM;
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 33:
                                                                    List list10 = (List) unsafe.getObject(obj, j8);
                                                                    C2622q2 c2622q11 = Z2.f23065a;
                                                                    size = list10.size();
                                                                    if (size == 0) {
                                                                        iG6 = 0;
                                                                    } else {
                                                                        iQ = Z2.n(list10);
                                                                        iG5 = C2588k2.G(i15 << 3);
                                                                        iG6 = (iG5 * size) + iQ;
                                                                    }
                                                                    iZ += iG6;
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                                                                    List list11 = (List) unsafe.getObject(obj, j8);
                                                                    C2622q2 c2622q12 = Z2.f23065a;
                                                                    size = list11.size();
                                                                    if (size == 0) {
                                                                        iG6 = 0;
                                                                    } else {
                                                                        iQ = Z2.o(list11);
                                                                        iG5 = C2588k2.G(i15 << 3);
                                                                        iG6 = (iG5 * size) + iQ;
                                                                    }
                                                                    iZ += iG6;
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 35:
                                                                    iG2 = Z2.j((List) unsafe.getObject(obj, j8));
                                                                    if (iG2 > 0) {
                                                                        iN = C2588k2.G(i15 << 3);
                                                                        iG3 = C2588k2.G(iG2);
                                                                        iZ += iG3 + iN + iG2;
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                                                                    iG2 = Z2.h((List) unsafe.getObject(obj, j8));
                                                                    if (iG2 > 0) {
                                                                        iN = C2588k2.G(i15 << 3);
                                                                        iG3 = C2588k2.G(iG2);
                                                                        iZ += iG3 + iN + iG2;
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 37:
                                                                    iG2 = Z2.l((List) unsafe.getObject(obj, j8));
                                                                    if (iG2 > 0) {
                                                                        iN = C2588k2.G(i15 << 3);
                                                                        iG3 = C2588k2.G(iG2);
                                                                        iZ += iG3 + iN + iG2;
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 38:
                                                                    iG2 = Z2.q((List) unsafe.getObject(obj, j8));
                                                                    if (iG2 > 0) {
                                                                        iN = C2588k2.G(i15 << 3);
                                                                        iG3 = C2588k2.G(iG2);
                                                                        iZ += iG3 + iN + iG2;
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                                                    iG2 = Z2.k((List) unsafe.getObject(obj, j8));
                                                                    if (iG2 > 0) {
                                                                        iN = C2588k2.G(i15 << 3);
                                                                        iG3 = C2588k2.G(iG2);
                                                                        iZ += iG3 + iN + iG2;
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                                                                    iG2 = Z2.j((List) unsafe.getObject(obj, j8));
                                                                    if (iG2 > 0) {
                                                                        iN = C2588k2.G(i15 << 3);
                                                                        iG3 = C2588k2.G(iG2);
                                                                        iZ += iG3 + iN + iG2;
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
                                                                    iG2 = Z2.h((List) unsafe.getObject(obj, j8));
                                                                    if (iG2 > 0) {
                                                                        iN = C2588k2.G(i15 << 3);
                                                                        iG3 = C2588k2.G(iG2);
                                                                        iZ += iG3 + iN + iG2;
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                                                                    List list12 = (List) unsafe.getObject(obj, j8);
                                                                    C2622q2 c2622q13 = Z2.f23065a;
                                                                    iG2 = list12.size();
                                                                    if (iG2 > 0) {
                                                                        iN = C2588k2.G(i15 << 3);
                                                                        iG3 = C2588k2.G(iG2);
                                                                        iZ += iG3 + iN + iG2;
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 43:
                                                                    iG2 = Z2.p((List) unsafe.getObject(obj, j8));
                                                                    if (iG2 > 0) {
                                                                        iN = C2588k2.G(i15 << 3);
                                                                        iG3 = C2588k2.G(iG2);
                                                                        iZ += iG3 + iN + iG2;
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                                                                    iG2 = Z2.f((List) unsafe.getObject(obj, j8));
                                                                    if (iG2 > 0) {
                                                                        iN = C2588k2.G(i15 << 3);
                                                                        iG3 = C2588k2.G(iG2);
                                                                        iZ += iG3 + iN + iG2;
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                                                                    iG2 = Z2.h((List) unsafe.getObject(obj, j8));
                                                                    if (iG2 > 0) {
                                                                        iN = C2588k2.G(i15 << 3);
                                                                        iG3 = C2588k2.G(iG2);
                                                                        iZ += iG3 + iN + iG2;
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 46:
                                                                    iG2 = Z2.j((List) unsafe.getObject(obj, j8));
                                                                    if (iG2 > 0) {
                                                                        iN = C2588k2.G(i15 << 3);
                                                                        iG3 = C2588k2.G(iG2);
                                                                        iZ += iG3 + iN + iG2;
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 47:
                                                                    iG2 = Z2.n((List) unsafe.getObject(obj, j8));
                                                                    if (iG2 > 0) {
                                                                        iN = C2588k2.G(i15 << 3);
                                                                        iG3 = C2588k2.G(iG2);
                                                                        iZ += iG3 + iN + iG2;
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 48:
                                                                    iG2 = Z2.o((List) unsafe.getObject(obj, j8));
                                                                    if (iG2 > 0) {
                                                                        iN = C2588k2.G(i15 << 3);
                                                                        iG3 = C2588k2.G(iG2);
                                                                        iZ += iG3 + iN + iG2;
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 49:
                                                                    List list13 = (List) unsafe.getObject(obj, j8);
                                                                    Y2 y2W2 = w(i14);
                                                                    C2622q2 c2622q14 = Z2.f23065a;
                                                                    int size6 = list13.size();
                                                                    if (size6 == 0) {
                                                                        iD = 0;
                                                                    } else {
                                                                        iD = 0;
                                                                        for (int i24 = 0; i24 < size6; i24++) {
                                                                            iD += C2588k2.D(i15, (P2) list13.get(i24), y2W2);
                                                                        }
                                                                    }
                                                                    iZ += iD;
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 50:
                                                                    int i25 = i14 / 3;
                                                                    L2 l4 = (L2) unsafe.getObject(obj, j8);
                                                                    A0.O.I(this.f22993b[i25 + i25]);
                                                                    if (l4.isEmpty()) {
                                                                        continue;
                                                                    } else {
                                                                        Iterator it = l4.entrySet().iterator();
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
                                                                    if (n(i15, obj, i14)) {
                                                                        iZ = AbstractC2090uc.z(i15 << 3, 8, iZ);
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 52:
                                                                    if (n(i15, obj, i14)) {
                                                                        iZ = AbstractC2090uc.z(i15 << 3, 4, iZ);
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 53:
                                                                    if (n(i15, obj, i14)) {
                                                                        long jU = u(obj, j8);
                                                                        iG = C2588k2.G(i15 << 3);
                                                                        iO = C2588k2.o(jU);
                                                                        iZ += iO + iG;
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 54:
                                                                    if (n(i15, obj, i14)) {
                                                                        long jU2 = u(obj, j8);
                                                                        iG = C2588k2.G(i15 << 3);
                                                                        iO = C2588k2.o(jU2);
                                                                        iZ += iO + iG;
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 55:
                                                                    if (n(i15, obj, i14)) {
                                                                        long jQ = q(obj, j8);
                                                                        iG = C2588k2.G(i15 << 3);
                                                                        iO = C2588k2.o(jQ);
                                                                        iZ += iO + iG;
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 56:
                                                                    if (n(i15, obj, i14)) {
                                                                        iZ = AbstractC2090uc.z(i15 << 3, 8, iZ);
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 57:
                                                                    if (n(i15, obj, i14)) {
                                                                        iZ = AbstractC2090uc.z(i15 << 3, 4, iZ);
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 58:
                                                                    if (n(i15, obj, i14)) {
                                                                        iZ = AbstractC2090uc.z(i15 << 3, 1, iZ);
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 59:
                                                                    if (n(i15, obj, i14)) {
                                                                        int i26 = i15 << 3;
                                                                        Object object2 = unsafe.getObject(obj, j8);
                                                                        if (object2 instanceof AbstractC2576i2) {
                                                                            iG2 = C2588k2.G(i26);
                                                                            iN = ((AbstractC2576i2) object2).n();
                                                                            iG3 = C2588k2.G(iN);
                                                                            iZ += iG3 + iN + iG2;
                                                                        } else {
                                                                            iG = C2588k2.G(i26);
                                                                            iO = C2588k2.F((String) object2);
                                                                            iZ += iO + iG;
                                                                        }
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                                                                    if (n(i15, obj, i14)) {
                                                                        iM = Z2.m(i15, w(i14), unsafe.getObject(obj, j8));
                                                                        iZ += iM;
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 61:
                                                                    if (n(i15, obj, i14)) {
                                                                        AbstractC2576i2 abstractC2576i3 = (AbstractC2576i2) unsafe.getObject(obj, j8);
                                                                        iG2 = C2588k2.G(i15 << 3);
                                                                        iN = abstractC2576i3.n();
                                                                        iG3 = C2588k2.G(iN);
                                                                        iZ += iG3 + iN + iG2;
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 62:
                                                                    if (n(i15, obj, i14)) {
                                                                        iZ = AbstractC2090uc.z(q(obj, j8), C2588k2.G(i15 << 3), iZ);
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 63:
                                                                    if (n(i15, obj, i14)) {
                                                                        long jQ2 = q(obj, j8);
                                                                        iG = C2588k2.G(i15 << 3);
                                                                        iO = C2588k2.o(jQ2);
                                                                        iZ += iO + iG;
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                                                                    if (n(i15, obj, i14)) {
                                                                        iZ = AbstractC2090uc.z(i15 << 3, 4, iZ);
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 65:
                                                                    if (n(i15, obj, i14)) {
                                                                        iZ = AbstractC2090uc.z(i15 << 3, 8, iZ);
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 66:
                                                                    if (n(i15, obj, i14)) {
                                                                        int iQ2 = q(obj, j8);
                                                                        iZ = AbstractC2090uc.z((iQ2 >> 31) ^ (iQ2 + iQ2), C2588k2.G(i15 << 3), iZ);
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 67:
                                                                    if (n(i15, obj, i14)) {
                                                                        long jU3 = u(obj, j8);
                                                                        iG = C2588k2.G(i15 << 3);
                                                                        iO = C2588k2.o((jU3 >> 63) ^ (jU3 + jU3));
                                                                        iZ += iO + iG;
                                                                    }
                                                                    i14 += 3;
                                                                    i12 = i8;
                                                                    i13 = i9;
                                                                    i11 = 1048575;
                                                                    break;
                                                                case 68:
                                                                    if (n(i15, obj, i14)) {
                                                                        iM = C2588k2.D(i15, (P2) unsafe.getObject(obj, j8), w(i14));
                                                                        iZ += iM;
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
                                                    @Override // com.google.android.gms.internal.measurement.Y2
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
                                                            int[] iArr = this.f22992a;
                                                            if (i12 >= iArr.length) {
                                                                return ((AbstractC2631s2) obj).zzc.hashCode() + (i13 * 53);
                                                            }
                                                            int iT = t(i12);
                                                            int i14 = 1048575 & iT;
                                                            int iS = s(iT);
                                                            int i15 = iArr[i12];
                                                            long j8 = i14;
                                                            int i16 = 1237;
                                                            int iHashCode = 37;
                                                            switch (iS) {
                                                                case 0:
                                                                    i8 = i13 * 53;
                                                                    jDoubleToLongBits = Double.doubleToLongBits(AbstractC2565g3.f23138c.a(obj, j8));
                                                                    Charset charset = AbstractC2666z2.f23416a;
                                                                    i13 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                                                                    break;
                                                                case 1:
                                                                    i9 = i13 * 53;
                                                                    iFloatToIntBits = Float.floatToIntBits(AbstractC2565g3.f23138c.b(obj, j8));
                                                                    i13 = iFloatToIntBits + i9;
                                                                    break;
                                                                case 2:
                                                                    i8 = i13 * 53;
                                                                    jDoubleToLongBits = AbstractC2565g3.g(obj, j8);
                                                                    Charset charset2 = AbstractC2666z2.f23416a;
                                                                    i13 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                                                                    break;
                                                                case 3:
                                                                    i8 = i13 * 53;
                                                                    jDoubleToLongBits = AbstractC2565g3.g(obj, j8);
                                                                    Charset charset3 = AbstractC2666z2.f23416a;
                                                                    i13 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                                                                    break;
                                                                case 4:
                                                                    i9 = i13 * 53;
                                                                    iFloatToIntBits = AbstractC2565g3.f(obj, j8);
                                                                    i13 = iFloatToIntBits + i9;
                                                                    break;
                                                                case 5:
                                                                    i8 = i13 * 53;
                                                                    jDoubleToLongBits = AbstractC2565g3.g(obj, j8);
                                                                    Charset charset4 = AbstractC2666z2.f23416a;
                                                                    i13 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                                                                    break;
                                                                case 6:
                                                                    i9 = i13 * 53;
                                                                    iFloatToIntBits = AbstractC2565g3.f(obj, j8);
                                                                    i13 = iFloatToIntBits + i9;
                                                                    break;
                                                                case 7:
                                                                    i10 = i13 * 53;
                                                                    boolean zG = AbstractC2565g3.f23138c.g(obj, j8);
                                                                    Charset charset5 = AbstractC2666z2.f23416a;
                                                                    if (zG) {
                                                                        i16 = 1231;
                                                                    }
                                                                    i13 = i16 + i10;
                                                                    break;
                                                                case 8:
                                                                    i9 = i13 * 53;
                                                                    iFloatToIntBits = ((String) AbstractC2565g3.i(obj, j8)).hashCode();
                                                                    i13 = iFloatToIntBits + i9;
                                                                    break;
                                                                case 9:
                                                                    i11 = i13 * 53;
                                                                    Object objI = AbstractC2565g3.i(obj, j8);
                                                                    if (objI != null) {
                                                                        iHashCode = objI.hashCode();
                                                                    }
                                                                    i13 = i11 + iHashCode;
                                                                    break;
                                                                case 10:
                                                                    i9 = i13 * 53;
                                                                    iFloatToIntBits = AbstractC2565g3.i(obj, j8).hashCode();
                                                                    i13 = iFloatToIntBits + i9;
                                                                    break;
                                                                case 11:
                                                                    i9 = i13 * 53;
                                                                    iFloatToIntBits = AbstractC2565g3.f(obj, j8);
                                                                    i13 = iFloatToIntBits + i9;
                                                                    break;
                                                                case 12:
                                                                    i9 = i13 * 53;
                                                                    iFloatToIntBits = AbstractC2565g3.f(obj, j8);
                                                                    i13 = iFloatToIntBits + i9;
                                                                    break;
                                                                case 13:
                                                                    i9 = i13 * 53;
                                                                    iFloatToIntBits = AbstractC2565g3.f(obj, j8);
                                                                    i13 = iFloatToIntBits + i9;
                                                                    break;
                                                                case 14:
                                                                    i8 = i13 * 53;
                                                                    jDoubleToLongBits = AbstractC2565g3.g(obj, j8);
                                                                    Charset charset6 = AbstractC2666z2.f23416a;
                                                                    i13 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                                                                    break;
                                                                case 15:
                                                                    i9 = i13 * 53;
                                                                    iFloatToIntBits = AbstractC2565g3.f(obj, j8);
                                                                    i13 = iFloatToIntBits + i9;
                                                                    break;
                                                                case 16:
                                                                    i8 = i13 * 53;
                                                                    jDoubleToLongBits = AbstractC2565g3.g(obj, j8);
                                                                    Charset charset7 = AbstractC2666z2.f23416a;
                                                                    i13 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                                                                    break;
                                                                case 17:
                                                                    i11 = i13 * 53;
                                                                    Object objI2 = AbstractC2565g3.i(obj, j8);
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
                                                                    iFloatToIntBits = AbstractC2565g3.i(obj, j8).hashCode();
                                                                    i13 = iFloatToIntBits + i9;
                                                                    break;
                                                                case 50:
                                                                    i9 = i13 * 53;
                                                                    iFloatToIntBits = AbstractC2565g3.i(obj, j8).hashCode();
                                                                    i13 = iFloatToIntBits + i9;
                                                                    break;
                                                                case 51:
                                                                    if (n(i15, obj, i12)) {
                                                                        i8 = i13 * 53;
                                                                        jDoubleToLongBits = Double.doubleToLongBits(((Double) AbstractC2565g3.i(obj, j8)).doubleValue());
                                                                        Charset charset8 = AbstractC2666z2.f23416a;
                                                                        i13 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                                                                    }
                                                                    break;
                                                                case 52:
                                                                    if (n(i15, obj, i12)) {
                                                                        i9 = i13 * 53;
                                                                        iFloatToIntBits = Float.floatToIntBits(((Float) AbstractC2565g3.i(obj, j8)).floatValue());
                                                                        i13 = iFloatToIntBits + i9;
                                                                    }
                                                                    break;
                                                                case 53:
                                                                    if (n(i15, obj, i12)) {
                                                                        i8 = i13 * 53;
                                                                        jDoubleToLongBits = u(obj, j8);
                                                                        Charset charset9 = AbstractC2666z2.f23416a;
                                                                        i13 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                                                                    }
                                                                    break;
                                                                case 54:
                                                                    if (n(i15, obj, i12)) {
                                                                        i8 = i13 * 53;
                                                                        jDoubleToLongBits = u(obj, j8);
                                                                        Charset charset10 = AbstractC2666z2.f23416a;
                                                                        i13 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                                                                    }
                                                                    break;
                                                                case 55:
                                                                    if (n(i15, obj, i12)) {
                                                                        i9 = i13 * 53;
                                                                        iFloatToIntBits = q(obj, j8);
                                                                        i13 = iFloatToIntBits + i9;
                                                                    }
                                                                    break;
                                                                case 56:
                                                                    if (n(i15, obj, i12)) {
                                                                        i8 = i13 * 53;
                                                                        jDoubleToLongBits = u(obj, j8);
                                                                        Charset charset11 = AbstractC2666z2.f23416a;
                                                                        i13 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                                                                    }
                                                                    break;
                                                                case 57:
                                                                    if (n(i15, obj, i12)) {
                                                                        i9 = i13 * 53;
                                                                        iFloatToIntBits = q(obj, j8);
                                                                        i13 = iFloatToIntBits + i9;
                                                                    }
                                                                    break;
                                                                case 58:
                                                                    if (n(i15, obj, i12)) {
                                                                        i10 = i13 * 53;
                                                                        boolean zBooleanValue = ((Boolean) AbstractC2565g3.i(obj, j8)).booleanValue();
                                                                        Charset charset12 = AbstractC2666z2.f23416a;
                                                                        if (zBooleanValue) {
                                                                            i16 = 1231;
                                                                        }
                                                                        i13 = i16 + i10;
                                                                    }
                                                                    break;
                                                                case 59:
                                                                    if (n(i15, obj, i12)) {
                                                                        i9 = i13 * 53;
                                                                        iFloatToIntBits = ((String) AbstractC2565g3.i(obj, j8)).hashCode();
                                                                        i13 = iFloatToIntBits + i9;
                                                                    }
                                                                    break;
                                                                case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                                                                    if (n(i15, obj, i12)) {
                                                                        i9 = i13 * 53;
                                                                        iFloatToIntBits = AbstractC2565g3.i(obj, j8).hashCode();
                                                                        i13 = iFloatToIntBits + i9;
                                                                    }
                                                                    break;
                                                                case 61:
                                                                    if (n(i15, obj, i12)) {
                                                                        i9 = i13 * 53;
                                                                        iFloatToIntBits = AbstractC2565g3.i(obj, j8).hashCode();
                                                                        i13 = iFloatToIntBits + i9;
                                                                    }
                                                                    break;
                                                                case 62:
                                                                    if (n(i15, obj, i12)) {
                                                                        i9 = i13 * 53;
                                                                        iFloatToIntBits = q(obj, j8);
                                                                        i13 = iFloatToIntBits + i9;
                                                                    }
                                                                    break;
                                                                case 63:
                                                                    if (n(i15, obj, i12)) {
                                                                        i9 = i13 * 53;
                                                                        iFloatToIntBits = q(obj, j8);
                                                                        i13 = iFloatToIntBits + i9;
                                                                    }
                                                                    break;
                                                                case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                                                                    if (n(i15, obj, i12)) {
                                                                        i9 = i13 * 53;
                                                                        iFloatToIntBits = q(obj, j8);
                                                                        i13 = iFloatToIntBits + i9;
                                                                    }
                                                                    break;
                                                                case 65:
                                                                    if (n(i15, obj, i12)) {
                                                                        i8 = i13 * 53;
                                                                        jDoubleToLongBits = u(obj, j8);
                                                                        Charset charset13 = AbstractC2666z2.f23416a;
                                                                        i13 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                                                                    }
                                                                    break;
                                                                case 66:
                                                                    if (n(i15, obj, i12)) {
                                                                        i9 = i13 * 53;
                                                                        iFloatToIntBits = q(obj, j8);
                                                                        i13 = iFloatToIntBits + i9;
                                                                    }
                                                                    break;
                                                                case 67:
                                                                    if (n(i15, obj, i12)) {
                                                                        i8 = i13 * 53;
                                                                        jDoubleToLongBits = u(obj, j8);
                                                                        Charset charset14 = AbstractC2666z2.f23416a;
                                                                        i13 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                                                                    }
                                                                    break;
                                                                case 68:
                                                                    if (n(i15, obj, i12)) {
                                                                        i9 = i13 * 53;
                                                                        iFloatToIntBits = AbstractC2565g3.i(obj, j8).hashCode();
                                                                        i13 = iFloatToIntBits + i9;
                                                                    }
                                                                    break;
                                                            }
                                                            i12 += 3;
                                                        }
                                                    }

                                                    @Override // com.google.android.gms.internal.measurement.Y2
                                                    public final AbstractC2631s2 zze() {
                                                        return (AbstractC2631s2) ((AbstractC2631s2) this.f22996e).p(4);
                                                    }

                                                    /* JADX WARN: Code duplicated, block: B:25:0x006c  */
                                                    /* JADX WARN: Code duplicated, block: B:27:0x0072  */
                                                    /* JADX WARN: Code duplicated, block: B:38:0x007d A[SYNTHETIC] */
                                                    @Override // com.google.android.gms.internal.measurement.Y2
                                                    public final void zzf(Object obj) {
                                                        if (!m(obj)) {
                                                            return;
                                                        }
                                                        int i8 = 0;
                                                        if (obj instanceof AbstractC2631s2) {
                                                            AbstractC2631s2 abstractC2631s2 = (AbstractC2631s2) obj;
                                                            abstractC2631s2.m();
                                                            abstractC2631s2.zza = 0;
                                                            abstractC2631s2.k();
                                                        }
                                                        while (true) {
                                                            int[] iArr = this.f22992a;
                                                            if (i8 >= iArr.length) {
                                                                this.f23000i.getClass();
                                                                C2622q2.a(obj);
                                                                return;
                                                            }
                                                            int iT = t(i8);
                                                            int i9 = 1048575 & iT;
                                                            int iS = s(iT);
                                                            long j8 = i9;
                                                            Unsafe unsafe = f22991k;
                                                            if (iS != 9) {
                                                                if (iS != 60 && iS != 68) {
                                                                    switch (iS) {
                                                                        case 17:
                                                                            if (k(i8, obj)) {
                                                                                w(i8).zzf(unsafe.getObject(obj, j8));
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
                                                                            ((AbstractC2546d2) ((InterfaceC2661y2) AbstractC2565g3.i(obj, j8))).zzb();
                                                                            break;
                                                                        case 50:
                                                                            Object object = unsafe.getObject(obj, j8);
                                                                            if (object != null) {
                                                                                ((L2) object).c();
                                                                                unsafe.putObject(obj, j8, object);
                                                                            }
                                                                            break;
                                                                    }
                                                                } else if (n(iArr[i8], obj, i8)) {
                                                                    w(i8).zzf(unsafe.getObject(obj, j8));
                                                                }
                                                            } else if (k(i8, obj)) {
                                                                w(i8).zzf(unsafe.getObject(obj, j8));
                                                            }
                                                            i8 += 3;
                                                        }
                                                    }

                                                    @Override // com.google.android.gms.internal.measurement.Y2
                                                    public final void zzg(Object obj, Object obj2) {
                                                        if (!m(obj)) {
                                                            throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
                                                        }
                                                        obj2.getClass();
                                                        int i8 = 0;
                                                        while (true) {
                                                            int[] iArr = this.f22992a;
                                                            if (i8 >= iArr.length) {
                                                                Z2.s(obj, obj2);
                                                                return;
                                                            }
                                                            int iT = t(i8);
                                                            int i9 = iT & 1048575;
                                                            int iS = s(iT);
                                                            int i10 = iArr[i8];
                                                            long j8 = i9;
                                                            switch (iS) {
                                                                case 0:
                                                                    if (k(i8, obj2)) {
                                                                        AbstractC2565g3.l(obj, j8, AbstractC2565g3.f23138c.a(obj2, j8));
                                                                        g(i8, obj);
                                                                    }
                                                                    break;
                                                                case 1:
                                                                    if (k(i8, obj2)) {
                                                                        AbstractC2565g3.m(obj, j8, AbstractC2565g3.f23138c.b(obj2, j8));
                                                                        g(i8, obj);
                                                                    }
                                                                    break;
                                                                case 2:
                                                                    if (k(i8, obj2)) {
                                                                        AbstractC2565g3.o(obj, j8, AbstractC2565g3.g(obj2, j8));
                                                                        g(i8, obj);
                                                                    }
                                                                    break;
                                                                case 3:
                                                                    if (k(i8, obj2)) {
                                                                        AbstractC2565g3.o(obj, j8, AbstractC2565g3.g(obj2, j8));
                                                                        g(i8, obj);
                                                                    }
                                                                    break;
                                                                case 4:
                                                                    if (k(i8, obj2)) {
                                                                        AbstractC2565g3.n(obj, j8, AbstractC2565g3.f(obj2, j8));
                                                                        g(i8, obj);
                                                                    }
                                                                    break;
                                                                case 5:
                                                                    if (k(i8, obj2)) {
                                                                        AbstractC2565g3.o(obj, j8, AbstractC2565g3.g(obj2, j8));
                                                                        g(i8, obj);
                                                                    }
                                                                    break;
                                                                case 6:
                                                                    if (k(i8, obj2)) {
                                                                        AbstractC2565g3.n(obj, j8, AbstractC2565g3.f(obj2, j8));
                                                                        g(i8, obj);
                                                                    }
                                                                    break;
                                                                case 7:
                                                                    if (k(i8, obj2)) {
                                                                        AbstractC2565g3.k(obj, j8, AbstractC2565g3.f23138c.g(obj2, j8));
                                                                        g(i8, obj);
                                                                    }
                                                                    break;
                                                                case 8:
                                                                    if (k(i8, obj2)) {
                                                                        AbstractC2565g3.p(obj, j8, AbstractC2565g3.i(obj2, j8));
                                                                        g(i8, obj);
                                                                    }
                                                                    break;
                                                                case 9:
                                                                    e(i8, obj, obj2);
                                                                    break;
                                                                case 10:
                                                                    if (k(i8, obj2)) {
                                                                        AbstractC2565g3.p(obj, j8, AbstractC2565g3.i(obj2, j8));
                                                                        g(i8, obj);
                                                                    }
                                                                    break;
                                                                case 11:
                                                                    if (k(i8, obj2)) {
                                                                        AbstractC2565g3.n(obj, j8, AbstractC2565g3.f(obj2, j8));
                                                                        g(i8, obj);
                                                                    }
                                                                    break;
                                                                case 12:
                                                                    if (k(i8, obj2)) {
                                                                        AbstractC2565g3.n(obj, j8, AbstractC2565g3.f(obj2, j8));
                                                                        g(i8, obj);
                                                                    }
                                                                    break;
                                                                case 13:
                                                                    if (k(i8, obj2)) {
                                                                        AbstractC2565g3.n(obj, j8, AbstractC2565g3.f(obj2, j8));
                                                                        g(i8, obj);
                                                                    }
                                                                    break;
                                                                case 14:
                                                                    if (k(i8, obj2)) {
                                                                        AbstractC2565g3.o(obj, j8, AbstractC2565g3.g(obj2, j8));
                                                                        g(i8, obj);
                                                                    }
                                                                    break;
                                                                case 15:
                                                                    if (k(i8, obj2)) {
                                                                        AbstractC2565g3.n(obj, j8, AbstractC2565g3.f(obj2, j8));
                                                                        g(i8, obj);
                                                                    }
                                                                    break;
                                                                case 16:
                                                                    if (k(i8, obj2)) {
                                                                        AbstractC2565g3.o(obj, j8, AbstractC2565g3.g(obj2, j8));
                                                                        g(i8, obj);
                                                                    }
                                                                    break;
                                                                case 17:
                                                                    e(i8, obj, obj2);
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
                                                                    InterfaceC2661y2 interfaceC2661y2Zzd = (InterfaceC2661y2) AbstractC2565g3.i(obj, j8);
                                                                    InterfaceC2661y2 interfaceC2661y2 = (InterfaceC2661y2) AbstractC2565g3.i(obj2, j8);
                                                                    int size = interfaceC2661y2Zzd.size();
                                                                    int size2 = interfaceC2661y2.size();
                                                                    if (size > 0 && size2 > 0) {
                                                                        if (!((AbstractC2546d2) interfaceC2661y2Zzd).f23114G) {
                                                                            interfaceC2661y2Zzd = interfaceC2661y2Zzd.zzd(size2 + size);
                                                                        }
                                                                        interfaceC2661y2Zzd.addAll(interfaceC2661y2);
                                                                    }
                                                                    if (size > 0) {
                                                                        interfaceC2661y2 = interfaceC2661y2Zzd;
                                                                    }
                                                                    AbstractC2565g3.p(obj, j8, interfaceC2661y2);
                                                                    break;
                                                                case 50:
                                                                    C2622q2 c2622q2 = Z2.f23065a;
                                                                    AbstractC2565g3.p(obj, j8, S3.g.c(AbstractC2565g3.i(obj, j8), AbstractC2565g3.i(obj2, j8)));
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
                                                                    if (n(i10, obj2, i8)) {
                                                                        AbstractC2565g3.p(obj, j8, AbstractC2565g3.i(obj2, j8));
                                                                        AbstractC2565g3.n(obj, iArr[i8 + 2] & 1048575, i10);
                                                                    }
                                                                    break;
                                                                case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                                                                    f(i8, obj, obj2);
                                                                    break;
                                                                case 61:
                                                                case 62:
                                                                case 63:
                                                                case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                                                                case 65:
                                                                case 66:
                                                                case 67:
                                                                    if (n(i10, obj2, i8)) {
                                                                        AbstractC2565g3.p(obj, j8, AbstractC2565g3.i(obj2, j8));
                                                                        AbstractC2565g3.n(obj, iArr[i8 + 2] & 1048575, i10);
                                                                    }
                                                                    break;
                                                                case 68:
                                                                    f(i8, obj, obj2);
                                                                    break;
                                                            }
                                                            i8 += 3;
                                                        }
                                                    }
                                                }
