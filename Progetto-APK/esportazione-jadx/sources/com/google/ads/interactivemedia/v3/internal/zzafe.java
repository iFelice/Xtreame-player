package com.google.ads.interactivemedia.v3.internal;

import com.google.android.gms.common.api.d;
import com.google.api.Service;
import com.google.protobuf.DescriptorProtos$FileOptions;
import com.google.protobuf.DescriptorProtos$MethodOptions;
import com.google.protobuf.U2;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import okhttp3.HttpUrl;
import okhttp3.internal.ws.WebSocketProtocol;
import org.eclipse.paho.client.mqttv3.MqttConnectOptions;
import org.videolan.libvlc.interfaces.IMediaList;
import p000a.r;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes.dex */
final class zzafe<T> implements zzaft<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzago.zzg();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzafb zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final int[] zzj;
    private final int zzk;
    private final int zzl;
    private final zzagh zzm;
    private final zzadl zzn;

    private zzafe(int[] iArr, Object[] objArr, int i8, int i9, zzafb zzafbVar, boolean z7, int[] iArr2, int i10, int i11, zzafg zzafgVar, zzaeo zzaeoVar, zzagh zzaghVar, zzadl zzadlVar, zzaew zzaewVar) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i8;
        this.zzf = i9;
        this.zzi = zzafbVar instanceof zzady;
        boolean z8 = false;
        if (zzadlVar != null && (zzafbVar instanceof zzadv)) {
            z8 = true;
        }
        this.zzh = z8;
        this.zzj = iArr2;
        this.zzk = i10;
        this.zzl = i11;
        this.zzm = zzaghVar;
        this.zzn = zzadlVar;
        this.zzg = zzafbVar;
    }

    private final Object zzA(Object obj, int i8) {
        zzaft zzaftVarZzx = zzx(i8);
        int iZzu = zzu(i8) & 1048575;
        if (!zzN(obj, i8)) {
            return zzaftVarZzx.zze();
        }
        Object object = zzb.getObject(obj, iZzu);
        if (zzQ(object)) {
            return object;
        }
        Object objZze = zzaftVarZzx.zze();
        if (object != null) {
            zzaftVarZzx.zzg(objZze, object);
        }
        return objZze;
    }

    private final Object zzB(Object obj, int i8, int i9) {
        zzaft zzaftVarZzx = zzx(i9);
        if (!zzR(obj, i8, i9)) {
            return zzaftVarZzx.zze();
        }
        Object object = zzb.getObject(obj, zzu(i9) & 1048575);
        if (zzQ(object)) {
            return object;
        }
        Object objZze = zzaftVarZzx.zze();
        if (object != null) {
            zzaftVarZzx.zzg(objZze, object);
        }
        return objZze;
    }

    private static Field zzC(Class cls, String str) {
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

    private static void zzD(Object obj) {
        if (!zzQ(obj)) {
            throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
        }
    }

    private final void zzE(Object obj, Object obj2, int i8) {
        if (zzN(obj2, i8)) {
            int iZzu = zzu(i8) & 1048575;
            Unsafe unsafe = zzb;
            long j8 = iZzu;
            Object object = unsafe.getObject(obj2, j8);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zzc[i8] + " is present but null: " + obj2.toString());
            }
            zzaft zzaftVarZzx = zzx(i8);
            if (!zzN(obj, i8)) {
                if (zzQ(object)) {
                    Object objZze = zzaftVarZzx.zze();
                    zzaftVarZzx.zzg(objZze, object);
                    unsafe.putObject(obj, j8, objZze);
                } else {
                    unsafe.putObject(obj, j8, object);
                }
                zzH(obj, i8);
                return;
            }
            Object object2 = unsafe.getObject(obj, j8);
            if (!zzQ(object2)) {
                Object objZze2 = zzaftVarZzx.zze();
                zzaftVarZzx.zzg(objZze2, object2);
                unsafe.putObject(obj, j8, objZze2);
                object2 = objZze2;
            }
            zzaftVarZzx.zzg(object2, object);
        }
    }

    private final void zzF(Object obj, Object obj2, int i8) {
        int i9 = this.zzc[i8];
        if (zzR(obj2, i9, i8)) {
            int iZzu = zzu(i8) & 1048575;
            Unsafe unsafe = zzb;
            long j8 = iZzu;
            Object object = unsafe.getObject(obj2, j8);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zzc[i8] + " is present but null: " + obj2.toString());
            }
            zzaft zzaftVarZzx = zzx(i8);
            if (!zzR(obj, i9, i8)) {
                if (zzQ(object)) {
                    Object objZze = zzaftVarZzx.zze();
                    zzaftVarZzx.zzg(objZze, object);
                    unsafe.putObject(obj, j8, objZze);
                } else {
                    unsafe.putObject(obj, j8, object);
                }
                zzI(obj, i9, i8);
                return;
            }
            Object object2 = unsafe.getObject(obj, j8);
            if (!zzQ(object2)) {
                Object objZze2 = zzaftVarZzx.zze();
                zzaftVarZzx.zzg(objZze2, object2);
                unsafe.putObject(obj, j8, objZze2);
                object2 = objZze2;
            }
            zzaftVarZzx.zzg(object2, object);
        }
    }

    private final void zzG(Object obj, int i8, zzafl zzaflVar) {
        long j8 = i8 & 1048575;
        if (zzM(i8)) {
            zzago.zzs(obj, j8, zzaflVar.zzs());
        } else if (this.zzi) {
            zzago.zzs(obj, j8, zzaflVar.zzr());
        } else {
            zzago.zzs(obj, j8, zzaflVar.zzp());
        }
    }

    private final void zzH(Object obj, int i8) {
        int iZzr = zzr(i8);
        long j8 = 1048575 & iZzr;
        if (j8 == 1048575) {
            return;
        }
        zzago.zzq(obj, j8, (1 << (iZzr >>> 20)) | zzago.zzc(obj, j8));
    }

    private final void zzI(Object obj, int i8, int i9) {
        zzago.zzq(obj, zzr(i9) & 1048575, i8);
    }

    private final void zzJ(Object obj, int i8, Object obj2) {
        zzb.putObject(obj, zzu(i8) & 1048575, obj2);
        zzH(obj, i8);
    }

    private final void zzK(Object obj, int i8, int i9, Object obj2) {
        zzb.putObject(obj, zzu(i9) & 1048575, obj2);
        zzI(obj, i8, i9);
    }

    private final boolean zzL(Object obj, Object obj2, int i8) {
        return zzN(obj, i8) == zzN(obj2, i8);
    }

    private static boolean zzM(int i8) {
        return (i8 & 536870912) != 0;
    }

    private final boolean zzN(Object obj, int i8) {
        int iZzr = zzr(i8);
        long j8 = iZzr & 1048575;
        if (j8 != 1048575) {
            return (zzago.zzc(obj, j8) & (1 << (iZzr >>> 20))) != 0;
        }
        int iZzu = zzu(i8);
        long j9 = iZzu & 1048575;
        switch (zzt(iZzu)) {
            case 0:
                return Double.doubleToRawLongBits(zzago.zza(obj, j9)) != 0;
            case 1:
                return Float.floatToRawIntBits(zzago.zzb(obj, j9)) != 0;
            case 2:
                return zzago.zzd(obj, j9) != 0;
            case 3:
                return zzago.zzd(obj, j9) != 0;
            case 4:
                return zzago.zzc(obj, j9) != 0;
            case 5:
                return zzago.zzd(obj, j9) != 0;
            case 6:
                return zzago.zzc(obj, j9) != 0;
            case 7:
                return zzago.zzw(obj, j9);
            case 8:
                Object objZzf = zzago.zzf(obj, j9);
                if (objZzf instanceof String) {
                    return !((String) objZzf).isEmpty();
                }
                if (objZzf instanceof zzacw) {
                    return !zzacw.zzb.equals(objZzf);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzago.zzf(obj, j9) != null;
            case 10:
                return !zzacw.zzb.equals(zzago.zzf(obj, j9));
            case 11:
                return zzago.zzc(obj, j9) != 0;
            case 12:
                return zzago.zzc(obj, j9) != 0;
            case 13:
                return zzago.zzc(obj, j9) != 0;
            case 14:
                return zzago.zzd(obj, j9) != 0;
            case 15:
                return zzago.zzc(obj, j9) != 0;
            case 16:
                return zzago.zzd(obj, j9) != 0;
            case 17:
                return zzago.zzf(obj, j9) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean zzO(Object obj, int i8, int i9, int i10, int i11) {
        if (i9 == 1048575) {
            return zzN(obj, i8);
        }
        return (i10 & i11) != 0;
    }

    private static boolean zzP(Object obj, int i8, zzaft zzaftVar) {
        return zzaftVar.zzl(zzago.zzf(obj, i8 & 1048575));
    }

    private static boolean zzQ(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzady) {
            return ((zzady) obj).zzaP();
        }
        return true;
    }

    private final boolean zzR(Object obj, int i8, int i9) {
        return zzago.zzc(obj, (long) (zzr(i9) & 1048575)) == i8;
    }

    private static boolean zzS(Object obj, long j8) {
        return ((Boolean) zzago.zzf(obj, j8)).booleanValue();
    }

    private static final void zzT(int i8, Object obj, zzagu zzaguVar) {
        if (obj instanceof String) {
            zzaguVar.zzG(i8, (String) obj);
        } else {
            zzaguVar.zzd(i8, (zzacw) obj);
        }
    }

    public static zzagi zzd(Object obj) {
        zzady zzadyVar = (zzady) obj;
        zzagi zzagiVar = zzadyVar.zzc;
        if (zzagiVar != zzagi.zzc()) {
            return zzagiVar;
        }
        zzagi zzagiVarZzf = zzagi.zzf();
        zzadyVar.zzc = zzagiVarZzf;
        return zzagiVarZzf;
    }

    /* JADX WARN: Code duplicated, block: B:185:0x039f  */
    /* JADX WARN: Code duplicated, block: B:191:0x03b4  */
    public static zzafe zzm(Class cls, zzaey zzaeyVar, zzafg zzafgVar, zzaeo zzaeoVar, zzagh zzaghVar, zzadl zzadlVar, zzaew zzaewVar) {
        int i8;
        int iCharAt;
        int iCharAt2;
        int i9;
        int i10;
        int i11;
        int[] iArr;
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
        int[] iArr2;
        int iObjectFieldOffset;
        int iObjectFieldOffset2;
        int i27;
        int i28;
        int iObjectFieldOffset3;
        Field fieldZzC;
        int i29;
        char cCharAt9;
        int i30;
        int i31;
        int i32;
        Field fieldZzC2;
        Field fieldZzC3;
        int i33;
        char cCharAt10;
        int i34;
        char cCharAt11;
        int i35;
        char cCharAt12;
        int i36;
        char cCharAt13;
        if (!(zzaeyVar instanceof zzafk)) {
            throw null;
        }
        zzafk zzafkVar = (zzafk) zzaeyVar;
        String strZzd = zzafkVar.zzd();
        int length = strZzd.length();
        char c8 = 55296;
        if (strZzd.charAt(0) >= 55296) {
            int i37 = 1;
            while (true) {
                i8 = i37 + 1;
                if (strZzd.charAt(i37) < 55296) {
                    break;
                }
                i37 = i8;
            }
        } else {
            i8 = 1;
        }
        int i38 = i8 + 1;
        int iCharAt3 = strZzd.charAt(i8);
        if (iCharAt3 >= 55296) {
            int i39 = iCharAt3 & 8191;
            int i40 = 13;
            while (true) {
                i36 = i38 + 1;
                cCharAt13 = strZzd.charAt(i38);
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
            iArr = zza;
            i13 = 0;
            i11 = 0;
            iCharAt = 0;
            iCharAt2 = 0;
            i9 = 0;
            i12 = 0;
            i10 = 0;
        } else {
            int i41 = i38 + 1;
            int iCharAt4 = strZzd.charAt(i38);
            if (iCharAt4 >= 55296) {
                int i42 = iCharAt4 & 8191;
                int i43 = 13;
                while (true) {
                    i21 = i41 + 1;
                    cCharAt8 = strZzd.charAt(i41);
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
            int iCharAt5 = strZzd.charAt(i41);
            if (iCharAt5 >= 55296) {
                int i45 = iCharAt5 & 8191;
                int i46 = 13;
                while (true) {
                    i20 = i44 + 1;
                    cCharAt7 = strZzd.charAt(i44);
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
            int iCharAt6 = strZzd.charAt(i44);
            if (iCharAt6 >= 55296) {
                int i48 = iCharAt6 & 8191;
                int i49 = 13;
                while (true) {
                    i19 = i47 + 1;
                    cCharAt6 = strZzd.charAt(i47);
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
            int iCharAt7 = strZzd.charAt(i47);
            if (iCharAt7 >= 55296) {
                int i51 = iCharAt7 & 8191;
                int i52 = 13;
                while (true) {
                    i18 = i50 + 1;
                    cCharAt5 = strZzd.charAt(i50);
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
            iCharAt = strZzd.charAt(i50);
            if (iCharAt >= 55296) {
                int i54 = iCharAt & 8191;
                int i55 = 13;
                while (true) {
                    i17 = i53 + 1;
                    cCharAt4 = strZzd.charAt(i53);
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
            iCharAt2 = strZzd.charAt(i53);
            if (iCharAt2 >= 55296) {
                int i57 = iCharAt2 & 8191;
                int i58 = 13;
                while (true) {
                    i16 = i56 + 1;
                    cCharAt3 = strZzd.charAt(i56);
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
            int iCharAt8 = strZzd.charAt(i56);
            if (iCharAt8 >= 55296) {
                int i60 = iCharAt8 & 8191;
                int i61 = 13;
                while (true) {
                    i15 = i59 + 1;
                    cCharAt2 = strZzd.charAt(i59);
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
            int iCharAt9 = strZzd.charAt(i59);
            if (iCharAt9 >= 55296) {
                int i63 = iCharAt9 & 8191;
                int i64 = 13;
                while (true) {
                    i14 = i62 + 1;
                    cCharAt = strZzd.charAt(i62);
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
            i10 = iCharAt9;
            i11 = i65;
            iArr = iArr3;
            i12 = iCharAt7;
            i13 = iCharAt4;
            i38 = i62;
        }
        Unsafe unsafe = zzb;
        Object[] objArrZze = zzafkVar.zze();
        Class<?> cls2 = zzafkVar.zza().getClass();
        int i66 = i10 + iCharAt2;
        int i67 = iCharAt + iCharAt;
        int[] iArr4 = new int[iCharAt * 3];
        Object[] objArr = new Object[i67];
        int i68 = i10;
        int i69 = i66;
        int i70 = 0;
        int i71 = 0;
        while (i38 < length) {
            int i72 = i38 + 1;
            int iCharAt10 = strZzd.charAt(i38);
            if (iCharAt10 >= c8) {
                int i73 = iCharAt10 & 8191;
                int i74 = i72;
                int i75 = 13;
                while (true) {
                    i35 = i74 + 1;
                    cCharAt12 = strZzd.charAt(i74);
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
            int iCharAt11 = strZzd.charAt(i22);
            if (iCharAt11 >= c8) {
                int i77 = iCharAt11 & 8191;
                int i78 = i76;
                int i79 = 13;
                while (true) {
                    i34 = i78 + 1;
                    cCharAt11 = strZzd.charAt(i78);
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
            if (i80 >= 51) {
                int i84 = i24 + 1;
                int iCharAt12 = strZzd.charAt(i24);
                if (iCharAt12 >= 55296) {
                    int i85 = iCharAt12 & 8191;
                    int i86 = i84;
                    int i87 = 13;
                    while (true) {
                        i33 = i86 + 1;
                        cCharAt10 = strZzd.charAt(i86);
                        i25 = iCharAt10;
                        if (cCharAt10 < 55296) {
                            break;
                        }
                        i85 |= (cCharAt10 & 8191) << i87;
                        i87 += 13;
                        i86 = i33;
                        iCharAt10 = i25;
                    }
                    iCharAt12 = i85 | (cCharAt10 << i87);
                    i32 = i33;
                } else {
                    i25 = iCharAt10;
                    i32 = i84;
                }
                int i88 = i80 - 51;
                int i89 = i32;
                if (i88 == 9 || i88 == 17) {
                    objArr[r.t(i70, 3, 1)] = objArrZze[i11];
                    i11++;
                } else if (i88 == 12) {
                    if (zzafkVar.zzc() == 1 || i82 != 0) {
                        objArr[r.t(i70, 3, 1)] = objArrZze[i11];
                        i11++;
                    } else {
                        i82 = 0;
                    }
                }
                int i90 = iCharAt12 + iCharAt12;
                Object obj = objArrZze[i90];
                if (obj instanceof Field) {
                    fieldZzC2 = (Field) obj;
                } else {
                    fieldZzC2 = zzC(cls2, (String) obj);
                    objArrZze[i90] = fieldZzC2;
                }
                int i91 = i82;
                iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldZzC2);
                int i92 = i90 + 1;
                Object obj2 = objArrZze[i92];
                if (obj2 instanceof Field) {
                    fieldZzC3 = (Field) obj2;
                } else {
                    fieldZzC3 = zzC(cls2, (String) obj2);
                    objArrZze[i92] = fieldZzC3;
                }
                int iObjectFieldOffset4 = (int) unsafe.objectFieldOffset(fieldZzC3);
                cls2 = cls2;
                i26 = i11;
                i82 = i91;
                zzafkVar = zzafkVar;
                strZzd = strZzd;
                i27 = i89;
                iArr2 = iArr4;
                iObjectFieldOffset2 = iObjectFieldOffset4;
                i28 = 0;
            } else {
                i25 = iCharAt10;
                i26 = i11 + 1;
                Field fieldZzC4 = zzC(cls2, (String) objArrZze[i11]);
                iArr2 = iArr4;
                if (i80 == 9 || i80 == 17) {
                    zzafkVar = zzafkVar;
                    objArr[r.t(i70, 3, 1)] = fieldZzC4.getType();
                } else {
                    if (i80 != 27) {
                        if (i80 == 49) {
                            i31 = i11 + 2;
                            i30 = 1;
                        } else if (i80 == 12 || i80 == 30 || i80 == 44) {
                            zzafkVar = zzafkVar;
                            if (zzafkVar.zzc() == 1 || i82 != 0) {
                                i31 = i11 + 2;
                                objArr[r.t(i70, 3, 1)] = objArrZze[i26];
                                i26 = i31;
                            } else {
                                strZzd = strZzd;
                                i82 = 0;
                            }
                        } else if (i80 == 50) {
                            int i93 = i11 + 2;
                            i68++;
                            iArr[i68] = i70;
                            int i94 = i70 / 3;
                            int i95 = i94 + i94;
                            objArr[i95] = objArrZze[i26];
                            if (i82 != 0) {
                                i26 = i11 + 3;
                                objArr[i95 + 1] = objArrZze[i93];
                            } else {
                                i26 = i93;
                                i82 = 0;
                            }
                            zzafkVar = zzafkVar;
                        } else {
                            zzafkVar = zzafkVar;
                        }
                        iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzC4);
                        iObjectFieldOffset2 = 1048575;
                        if ((iCharAt11 & 4096) != 0 || i80 > 17) {
                            i27 = i24;
                            i28 = 0;
                        } else {
                            i27 = i24 + 1;
                            int iCharAt13 = strZzd.charAt(i24);
                            if (iCharAt13 >= 55296) {
                                int i96 = iCharAt13 & 8191;
                                int i97 = 13;
                                while (true) {
                                    i29 = i27 + 1;
                                    cCharAt9 = strZzd.charAt(i27);
                                    if (cCharAt9 < 55296) {
                                        break;
                                    }
                                    i96 |= (cCharAt9 & 8191) << i97;
                                    i97 += 13;
                                    i27 = i29;
                                }
                                iCharAt13 = i96 | (cCharAt9 << i97);
                                i27 = i29;
                            }
                            int i98 = (iCharAt13 / 32) + i13 + i13;
                            Object obj3 = objArrZze[i98];
                            if (obj3 instanceof Field) {
                                fieldZzC = (Field) obj3;
                            } else {
                                fieldZzC = zzC(cls2, (String) obj3);
                                objArrZze[i98] = fieldZzC;
                            }
                            i28 = iCharAt13 % 32;
                            iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzC);
                        }
                        if (i80 >= 18 || i80 > 49) {
                            iObjectFieldOffset3 = iObjectFieldOffset;
                        } else {
                            iArr[i69] = iObjectFieldOffset;
                            iObjectFieldOffset3 = iObjectFieldOffset;
                            i69++;
                        }
                    } else {
                        i30 = 1;
                        i31 = i11 + 2;
                    }
                    objArr[r.t(i70, 3, i30)] = objArrZze[i26];
                    i26 = i31;
                }
                strZzd = strZzd;
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzC4);
                iObjectFieldOffset2 = 1048575;
                if ((iCharAt11 & 4096) != 0) {
                    i27 = i24;
                    i28 = 0;
                } else {
                    i27 = i24;
                    i28 = 0;
                }
                if (i80 >= 18) {
                    iObjectFieldOffset3 = iObjectFieldOffset;
                } else {
                    iObjectFieldOffset3 = iObjectFieldOffset;
                }
            }
            int i99 = i70 + 1;
            iArr2[i70] = i25;
            int i100 = i70 + 2;
            int i101 = i27;
            iArr2[i99] = ((iCharAt11 & IMediaList.Event.ItemAdded) != 0 ? 536870912 : 0) | ((iCharAt11 & 256) != 0 ? 268435456 : 0) | (i82 != 0 ? Integer.MIN_VALUE : 0) | (i80 << 20) | iObjectFieldOffset3;
            i70 += 3;
            iArr2[i100] = (i28 << 20) | iObjectFieldOffset2;
            strZzd = strZzd;
            cls2 = cls2;
            i12 = i81;
            i11 = i26;
            i9 = i83;
            length = i23;
            iArr4 = iArr2;
            zzafkVar = zzafkVar;
            i38 = i101;
            c8 = 55296;
        }
        return new zzafe(iArr4, objArr, i9, i12, zzafkVar.zza(), false, iArr, i10, i66, zzafgVar, zzaeoVar, zzaghVar, zzadlVar, zzaewVar);
    }

    private static double zzn(Object obj, long j8) {
        return ((Double) zzago.zzf(obj, j8)).doubleValue();
    }

    private static float zzo(Object obj, long j8) {
        return ((Float) zzago.zzf(obj, j8)).floatValue();
    }

    private static int zzp(Object obj, long j8) {
        return ((Integer) zzago.zzf(obj, j8)).intValue();
    }

    private final int zzq(int i8) {
        if (i8 < this.zze || i8 > this.zzf) {
            return -1;
        }
        return zzs(i8, 0);
    }

    private final int zzr(int i8) {
        return this.zzc[i8 + 2];
    }

    private final int zzs(int i8, int i9) {
        int length = (this.zzc.length / 3) - 1;
        while (i9 <= length) {
            int i10 = (length + i9) >>> 1;
            int i11 = i10 * 3;
            int i12 = this.zzc[i11];
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

    private static int zzt(int i8) {
        return (i8 >>> 20) & 255;
    }

    private final int zzu(int i8) {
        return this.zzc[i8 + 1];
    }

    private static long zzv(Object obj, long j8) {
        return ((Long) zzago.zzf(obj, j8)).longValue();
    }

    private final zzaeb zzw(int i8) {
        int i9 = i8 / 3;
        return (zzaeb) this.zzd[i9 + i9 + 1];
    }

    private final zzaft zzx(int i8) {
        Object[] objArr = this.zzd;
        int i9 = i8 / 3;
        int i10 = i9 + i9;
        zzaft zzaftVar = (zzaft) objArr[i10];
        if (zzaftVar != null) {
            return zzaftVar;
        }
        zzaft zzaftVarZzb = zzafi.zza().zzb((Class) objArr[i10 + 1]);
        this.zzd[i10] = zzaftVarZzb;
        return zzaftVarZzb;
    }

    private final Object zzy(Object obj, int i8, Object obj2, zzagh zzaghVar, Object obj3) {
        int i9 = this.zzc[i8];
        Object objZzf = zzago.zzf(obj, zzu(i8) & 1048575);
        if (objZzf == null || zzw(i8) == null) {
            return obj2;
        }
        throw null;
    }

    private final Object zzz(int i8) {
        int i9 = i8 / 3;
        return this.zzd[i9 + i9];
    }

    /* JADX WARN: Code duplicated, block: B:139:0x0398  */
    /* JADX WARN: Code duplicated, block: B:196:0x04ee  */
    @Override // com.google.ads.interactivemedia.v3.internal.zzaft
    public final int zza(Object obj) {
        int i8;
        int i9;
        int i10;
        int iZzz;
        int iZzA;
        int iZzz2;
        int iZzd;
        int iZzz3;
        int iZzh;
        int iZzw;
        int iZzz4;
        int size;
        int iZzl;
        int iZzz5;
        int iZzz6;
        int iZzz7;
        int iZzw2;
        Unsafe unsafe = zzb;
        boolean z7 = false;
        int i11 = 1048575;
        int i12 = 1048575;
        int i13 = 0;
        int i14 = 0;
        int iC = 0;
        while (i14 < this.zzc.length) {
            int iZzu = zzu(i14);
            int iZzt = zzt(iZzu);
            int[] iArr = this.zzc;
            int i15 = iArr[i14];
            int i16 = iArr[i14 + 2];
            int i17 = i16 & i11;
            if (iZzt <= 17) {
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
            int i18 = iZzu & i11;
            if (iZzt >= zzadq.zzJ.zza()) {
                zzadq.zzW.zza();
            }
            long j8 = i18;
            switch (iZzt) {
                case 0:
                    if (zzO(obj, i14, i8, i9, i10)) {
                        iC = r.c(i15 << 3, 8, iC);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 1:
                    if (zzO(obj, i14, i8, i9, i10)) {
                        iC = r.c(i15 << 3, 4, iC);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 2:
                    if (zzO(obj, i14, i8, i9, i10)) {
                        long j9 = unsafe.getLong(obj, j8);
                        iZzz = zzadf.zzz(i15 << 3);
                        iZzA = zzadf.zzA(j9);
                        iC += iZzA + iZzz;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 3:
                    if (zzO(obj, i14, i8, i9, i10)) {
                        long j10 = unsafe.getLong(obj, j8);
                        iZzz = zzadf.zzz(i15 << 3);
                        iZzA = zzadf.zzA(j10);
                        iC += iZzA + iZzz;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 4:
                    if (zzO(obj, i14, i8, i9, i10)) {
                        long j11 = unsafe.getInt(obj, j8);
                        iZzz = zzadf.zzz(i15 << 3);
                        iZzA = zzadf.zzA(j11);
                        iC += iZzA + iZzz;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 5:
                    if (zzO(obj, i14, i8, i9, i10)) {
                        iC = r.c(i15 << 3, 8, iC);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 6:
                    if (zzO(obj, i14, i8, i9, i10)) {
                        iC = r.c(i15 << 3, 4, iC);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 7:
                    if (zzO(obj, i14, i8, i9, i10)) {
                        iC = r.c(i15 << 3, 1, iC);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 8:
                    if (zzO(obj, i14, i8, i9, i10)) {
                        int i19 = i15 << 3;
                        Object object = unsafe.getObject(obj, j8);
                        if (object instanceof zzacw) {
                            iZzz2 = zzadf.zzz(i19);
                            iZzd = ((zzacw) object).zzd();
                            iZzz3 = zzadf.zzz(iZzd);
                            iC += iZzz3 + iZzd + iZzz2;
                        } else {
                            iZzz = zzadf.zzz(i19);
                            iZzA = zzadf.zzy((String) object);
                            iC += iZzA + iZzz;
                        }
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 9:
                    if (zzO(obj, i14, i8, i9, i10)) {
                        iZzh = zzafv.zzh(i15, unsafe.getObject(obj, j8), zzx(i14));
                        iC += iZzh;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 10:
                    if (zzO(obj, i14, i8, i9, i10)) {
                        zzacw zzacwVar = (zzacw) unsafe.getObject(obj, j8);
                        iZzz2 = zzadf.zzz(i15 << 3);
                        iZzd = zzacwVar.zzd();
                        iZzz3 = zzadf.zzz(iZzd);
                        iC += iZzz3 + iZzd + iZzz2;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 11:
                    if (zzO(obj, i14, i8, i9, i10)) {
                        iC = r.c(unsafe.getInt(obj, j8), zzadf.zzz(i15 << 3), iC);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 12:
                    if (zzO(obj, i14, i8, i9, i10)) {
                        long j12 = unsafe.getInt(obj, j8);
                        iZzz = zzadf.zzz(i15 << 3);
                        iZzA = zzadf.zzA(j12);
                        iC += iZzA + iZzz;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 13:
                    if (zzO(obj, i14, i8, i9, i10)) {
                        iC = r.c(i15 << 3, 4, iC);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 14:
                    if (zzO(obj, i14, i8, i9, i10)) {
                        iC = r.c(i15 << 3, 8, iC);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 15:
                    if (zzO(obj, i14, i8, i9, i10)) {
                        int i20 = unsafe.getInt(obj, j8);
                        iC = r.c((i20 >> 31) ^ (i20 + i20), zzadf.zzz(i15 << 3), iC);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 16:
                    if (zzO(obj, i14, i8, i9, i10)) {
                        long j13 = unsafe.getLong(obj, j8);
                        iZzz = zzadf.zzz(i15 << 3);
                        iZzA = zzadf.zzA((j13 >> 63) ^ (j13 + j13));
                        iC += iZzA + iZzz;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 17:
                    if (zzO(obj, i14, i8, i9, i10)) {
                        iZzw = zzadf.zzw(i15, (zzafb) unsafe.getObject(obj, j8), zzx(i14));
                        iC += iZzw;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 18:
                    iZzh = zzafv.zzd(i15, (List) unsafe.getObject(obj, j8), z7);
                    iC += iZzh;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 19:
                    iZzh = zzafv.zzb(i15, (List) unsafe.getObject(obj, j8), z7);
                    iC += iZzh;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 20:
                    List list = (List) unsafe.getObject(obj, j8);
                    int i21 = zzafv.zza;
                    if (list.size() == 0) {
                        iZzz4 = 0;
                    } else {
                        iZzz4 = (zzadf.zzz(i15 << 3) * list.size()) + zzafv.zzg(list);
                    }
                    iC += iZzz4;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 21:
                    List list2 = (List) unsafe.getObject(obj, j8);
                    int i22 = zzafv.zza;
                    size = list2.size();
                    if (size == 0) {
                        iZzz6 = 0;
                    } else {
                        iZzl = zzafv.zzl(list2);
                        iZzz5 = zzadf.zzz(i15 << 3);
                        iZzz6 = (iZzz5 * size) + iZzl;
                    }
                    iC += iZzz6;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 22:
                    List list3 = (List) unsafe.getObject(obj, j8);
                    int i23 = zzafv.zza;
                    size = list3.size();
                    if (size == 0) {
                        iZzz6 = 0;
                    } else {
                        iZzl = zzafv.zzf(list3);
                        iZzz5 = zzadf.zzz(i15 << 3);
                        iZzz6 = (iZzz5 * size) + iZzl;
                    }
                    iC += iZzz6;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 23:
                    iZzh = zzafv.zzd(i15, (List) unsafe.getObject(obj, j8), z7);
                    iC += iZzh;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 24:
                    iZzh = zzafv.zzb(i15, (List) unsafe.getObject(obj, j8), z7);
                    iC += iZzh;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 25:
                    List list4 = (List) unsafe.getObject(obj, j8);
                    int i24 = zzafv.zza;
                    int size2 = list4.size();
                    if (size2 == 0) {
                        iZzz4 = 0;
                    } else {
                        iZzz4 = (zzadf.zzz(i15 << 3) + 1) * size2;
                    }
                    iC += iZzz4;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case Service.BILLING_FIELD_NUMBER /* 26 */:
                    List list5 = (List) unsafe.getObject(obj, j8);
                    int i25 = zzafv.zza;
                    int size3 = list5.size();
                    if (size3 == 0) {
                        iZzz6 = 0;
                    } else {
                        iZzz6 = zzadf.zzz(i15 << 3) * size3;
                        if (list5 instanceof zzaen) {
                            zzaen zzaenVar = (zzaen) list5;
                            for (int i26 = 0; i26 < size3; i26++) {
                                Object objZzb = zzaenVar.zzb();
                                if (objZzb instanceof zzacw) {
                                    int iZzd2 = ((zzacw) objZzb).zzd();
                                    iZzz6 = r.c(iZzd2, iZzd2, iZzz6);
                                } else {
                                    iZzz6 = zzadf.zzy((String) objZzb) + iZzz6;
                                }
                            }
                        } else {
                            for (int i27 = 0; i27 < size3; i27++) {
                                Object obj2 = list5.get(i27);
                                if (obj2 instanceof zzacw) {
                                    int iZzd3 = ((zzacw) obj2).zzd();
                                    iZzz6 = r.c(iZzd3, iZzd3, iZzz6);
                                } else {
                                    iZzz6 = zzadf.zzy((String) obj2) + iZzz6;
                                }
                            }
                        }
                    }
                    iC += iZzz6;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 27:
                    List list6 = (List) unsafe.getObject(obj, j8);
                    zzaft zzaftVarZzx = zzx(i14);
                    int i28 = zzafv.zza;
                    int size4 = list6.size();
                    if (size4 == 0) {
                        iZzz7 = 0;
                    } else {
                        iZzz7 = zzadf.zzz(i15 << 3) * size4;
                        for (int i29 = 0; i29 < size4; i29++) {
                            Object obj3 = list6.get(i29);
                            if (obj3 instanceof zzaem) {
                                int iZza = ((zzaem) obj3).zza();
                                iZzz7 = r.c(iZza, iZza, iZzz7);
                            } else {
                                iZzz7 = zzadf.zzx((zzafb) obj3, zzaftVarZzx) + iZzz7;
                            }
                        }
                    }
                    iC += iZzz7;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case Service.MONITORING_FIELD_NUMBER /* 28 */:
                    List list7 = (List) unsafe.getObject(obj, j8);
                    int i30 = zzafv.zza;
                    int size5 = list7.size();
                    if (size5 == 0) {
                        iZzz6 = 0;
                    } else {
                        iZzz6 = zzadf.zzz(i15 << 3) * size5;
                        for (int i31 = 0; i31 < list7.size(); i31++) {
                            int iZzd4 = ((zzacw) list7.get(i31)).zzd();
                            iZzz6 = r.c(iZzd4, iZzd4, iZzz6);
                        }
                    }
                    iC += iZzz6;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                    List list8 = (List) unsafe.getObject(obj, j8);
                    int i32 = zzafv.zza;
                    size = list8.size();
                    if (size == 0) {
                        iZzz6 = 0;
                    } else {
                        iZzl = zzafv.zzk(list8);
                        iZzz5 = zzadf.zzz(i15 << 3);
                        iZzz6 = (iZzz5 * size) + iZzl;
                    }
                    iC += iZzz6;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                    List list9 = (List) unsafe.getObject(obj, j8);
                    int i33 = zzafv.zza;
                    size = list9.size();
                    if (size == 0) {
                        iZzz6 = 0;
                    } else {
                        iZzl = zzafv.zza(list9);
                        iZzz5 = zzadf.zzz(i15 << 3);
                        iZzz6 = (iZzz5 * size) + iZzl;
                    }
                    iC += iZzz6;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                    iZzh = zzafv.zzb(i15, (List) unsafe.getObject(obj, j8), z7);
                    iC += iZzh;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 32:
                    iZzh = zzafv.zzd(i15, (List) unsafe.getObject(obj, j8), z7);
                    iC += iZzh;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 33:
                    List list10 = (List) unsafe.getObject(obj, j8);
                    int i34 = zzafv.zza;
                    size = list10.size();
                    if (size == 0) {
                        iZzz6 = 0;
                    } else {
                        iZzl = zzafv.zzi(list10);
                        iZzz5 = zzadf.zzz(i15 << 3);
                        iZzz6 = (iZzz5 * size) + iZzl;
                    }
                    iC += iZzz6;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                    List list11 = (List) unsafe.getObject(obj, j8);
                    int i35 = zzafv.zza;
                    size = list11.size();
                    if (size == 0) {
                        iZzz6 = 0;
                    } else {
                        iZzl = zzafv.zzj(list11);
                        iZzz5 = zzadf.zzz(i15 << 3);
                        iZzz6 = (iZzz5 * size) + iZzl;
                    }
                    iC += iZzz6;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 35:
                    iZzz2 = zzafv.zze((List) unsafe.getObject(obj, j8));
                    if (iZzz2 > 0) {
                        iZzd = zzadf.zzz(i15 << 3);
                        iZzz3 = zzadf.zzz(iZzz2);
                        iC += iZzz3 + iZzd + iZzz2;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                    iZzz2 = zzafv.zzc((List) unsafe.getObject(obj, j8));
                    if (iZzz2 > 0) {
                        iZzd = zzadf.zzz(i15 << 3);
                        iZzz3 = zzadf.zzz(iZzz2);
                        iC += iZzz3 + iZzd + iZzz2;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 37:
                    iZzz2 = zzafv.zzg((List) unsafe.getObject(obj, j8));
                    if (iZzz2 > 0) {
                        iZzd = zzadf.zzz(i15 << 3);
                        iZzz3 = zzadf.zzz(iZzz2);
                        iC += iZzz3 + iZzd + iZzz2;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 38:
                    iZzz2 = zzafv.zzl((List) unsafe.getObject(obj, j8));
                    if (iZzz2 > 0) {
                        iZzd = zzadf.zzz(i15 << 3);
                        iZzz3 = zzadf.zzz(iZzz2);
                        iC += iZzz3 + iZzd + iZzz2;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                    iZzz2 = zzafv.zzf((List) unsafe.getObject(obj, j8));
                    if (iZzz2 > 0) {
                        iZzd = zzadf.zzz(i15 << 3);
                        iZzz3 = zzadf.zzz(iZzz2);
                        iC += iZzz3 + iZzd + iZzz2;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                    iZzz2 = zzafv.zze((List) unsafe.getObject(obj, j8));
                    if (iZzz2 > 0) {
                        iZzd = zzadf.zzz(i15 << 3);
                        iZzz3 = zzadf.zzz(iZzz2);
                        iC += iZzz3 + iZzd + iZzz2;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
                    iZzz2 = zzafv.zzc((List) unsafe.getObject(obj, j8));
                    if (iZzz2 > 0) {
                        iZzd = zzadf.zzz(i15 << 3);
                        iZzz3 = zzadf.zzz(iZzz2);
                        iC += iZzz3 + iZzd + iZzz2;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                    List list12 = (List) unsafe.getObject(obj, j8);
                    int i36 = zzafv.zza;
                    iZzz2 = list12.size();
                    if (iZzz2 > 0) {
                        iZzd = zzadf.zzz(i15 << 3);
                        iZzz3 = zzadf.zzz(iZzz2);
                        iC += iZzz3 + iZzd + iZzz2;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 43:
                    iZzz2 = zzafv.zzk((List) unsafe.getObject(obj, j8));
                    if (iZzz2 > 0) {
                        iZzd = zzadf.zzz(i15 << 3);
                        iZzz3 = zzadf.zzz(iZzz2);
                        iC += iZzz3 + iZzd + iZzz2;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                    iZzz2 = zzafv.zza((List) unsafe.getObject(obj, j8));
                    if (iZzz2 > 0) {
                        iZzd = zzadf.zzz(i15 << 3);
                        iZzz3 = zzadf.zzz(iZzz2);
                        iC += iZzz3 + iZzd + iZzz2;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                    iZzz2 = zzafv.zzc((List) unsafe.getObject(obj, j8));
                    if (iZzz2 > 0) {
                        iZzd = zzadf.zzz(i15 << 3);
                        iZzz3 = zzadf.zzz(iZzz2);
                        iC += iZzz3 + iZzd + iZzz2;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 46:
                    iZzz2 = zzafv.zze((List) unsafe.getObject(obj, j8));
                    if (iZzz2 > 0) {
                        iZzd = zzadf.zzz(i15 << 3);
                        iZzz3 = zzadf.zzz(iZzz2);
                        iC += iZzz3 + iZzd + iZzz2;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 47:
                    iZzz2 = zzafv.zzi((List) unsafe.getObject(obj, j8));
                    if (iZzz2 > 0) {
                        iZzd = zzadf.zzz(i15 << 3);
                        iZzz3 = zzadf.zzz(iZzz2);
                        iC += iZzz3 + iZzd + iZzz2;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 48:
                    iZzz2 = zzafv.zzj((List) unsafe.getObject(obj, j8));
                    if (iZzz2 > 0) {
                        iZzd = zzadf.zzz(i15 << 3);
                        iZzz3 = zzadf.zzz(iZzz2);
                        iC += iZzz3 + iZzd + iZzz2;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 49:
                    List list13 = (List) unsafe.getObject(obj, j8);
                    zzaft zzaftVarZzx2 = zzx(i14);
                    int i37 = zzafv.zza;
                    int size6 = list13.size();
                    if (size6 == 0) {
                        iZzw2 = 0;
                    } else {
                        iZzw2 = 0;
                        for (int i38 = 0; i38 < size6; i38++) {
                            iZzw2 += zzadf.zzw(i15, (zzafb) list13.get(i38), zzaftVarZzx2);
                        }
                    }
                    iC += iZzw2;
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 50:
                    zzaev zzaevVar = (zzaev) unsafe.getObject(obj, j8);
                    if (zzaevVar.isEmpty()) {
                        continue;
                    } else {
                        Iterator it = zzaevVar.entrySet().iterator();
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
                    z7 = false;
                    i11 = 1048575;
                case 51:
                    if (zzR(obj, i15, i14)) {
                        iC = r.c(i15 << 3, 8, iC);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 52:
                    if (zzR(obj, i15, i14)) {
                        iC = r.c(i15 << 3, 4, iC);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 53:
                    if (zzR(obj, i15, i14)) {
                        long jZzv = zzv(obj, j8);
                        iZzz = zzadf.zzz(i15 << 3);
                        iZzA = zzadf.zzA(jZzv);
                        iC += iZzA + iZzz;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 54:
                    if (zzR(obj, i15, i14)) {
                        long jZzv2 = zzv(obj, j8);
                        iZzz = zzadf.zzz(i15 << 3);
                        iZzA = zzadf.zzA(jZzv2);
                        iC += iZzA + iZzz;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 55:
                    if (zzR(obj, i15, i14)) {
                        long jZzp = zzp(obj, j8);
                        iZzz = zzadf.zzz(i15 << 3);
                        iZzA = zzadf.zzA(jZzp);
                        iC += iZzA + iZzz;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 56:
                    if (zzR(obj, i15, i14)) {
                        iC = r.c(i15 << 3, 8, iC);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 57:
                    if (zzR(obj, i15, i14)) {
                        iC = r.c(i15 << 3, 4, iC);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 58:
                    if (zzR(obj, i15, i14)) {
                        iC = r.c(i15 << 3, 1, iC);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 59:
                    if (zzR(obj, i15, i14)) {
                        int i39 = i15 << 3;
                        Object object2 = unsafe.getObject(obj, j8);
                        if (object2 instanceof zzacw) {
                            iZzz2 = zzadf.zzz(i39);
                            iZzd = ((zzacw) object2).zzd();
                            iZzz3 = zzadf.zzz(iZzd);
                            iC += iZzz3 + iZzd + iZzz2;
                        } else {
                            iZzz = zzadf.zzz(i39);
                            iZzA = zzadf.zzy((String) object2);
                            iC += iZzA + iZzz;
                        }
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                    if (zzR(obj, i15, i14)) {
                        iZzh = zzafv.zzh(i15, unsafe.getObject(obj, j8), zzx(i14));
                        iC += iZzh;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 61:
                    if (zzR(obj, i15, i14)) {
                        zzacw zzacwVar2 = (zzacw) unsafe.getObject(obj, j8);
                        iZzz2 = zzadf.zzz(i15 << 3);
                        iZzd = zzacwVar2.zzd();
                        iZzz3 = zzadf.zzz(iZzd);
                        iC += iZzz3 + iZzd + iZzz2;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 62:
                    if (zzR(obj, i15, i14)) {
                        iC = r.c(zzp(obj, j8), zzadf.zzz(i15 << 3), iC);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 63:
                    if (zzR(obj, i15, i14)) {
                        long jZzp2 = zzp(obj, j8);
                        iZzz = zzadf.zzz(i15 << 3);
                        iZzA = zzadf.zzA(jZzp2);
                        iC += iZzA + iZzz;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                    if (zzR(obj, i15, i14)) {
                        iC = r.c(i15 << 3, 4, iC);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 65:
                    if (zzR(obj, i15, i14)) {
                        iC = r.c(i15 << 3, 8, iC);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 66:
                    if (zzR(obj, i15, i14)) {
                        int iZzp = zzp(obj, j8);
                        iC = r.c((iZzp >> 31) ^ (iZzp + iZzp), zzadf.zzz(i15 << 3), iC);
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 67:
                    if (zzR(obj, i15, i14)) {
                        long jZzv3 = zzv(obj, j8);
                        iZzz = zzadf.zzz(i15 << 3);
                        iZzA = zzadf.zzA((jZzv3 >> 63) ^ (jZzv3 + jZzv3));
                        iC += iZzA + iZzz;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                case 68:
                    if (zzR(obj, i15, i14)) {
                        iZzw = zzadf.zzw(i15, (zzafb) unsafe.getObject(obj, j8), zzx(i14));
                        iC += iZzw;
                    }
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
                default:
                    i14 += 3;
                    i12 = i8;
                    i13 = i9;
                    z7 = false;
                    i11 = 1048575;
                    break;
            }
        }
        int iZza2 = ((zzady) obj).zzc.zza() + iC;
        if (!this.zzh) {
            return iZza2;
        }
        zzadp zzadpVar = ((zzadv) obj).zzb;
        int iZzc = zzadpVar.zza.zzc();
        int iZzb = 0;
        for (int i40 = 0; i40 < iZzc; i40++) {
            Map.Entry entryZzg = zzadpVar.zza.zzg(i40);
            iZzb += zzadp.zzb((zzado) ((zzafx) entryZzg).zza(), entryZzg.getValue());
        }
        for (Map.Entry entry2 : zzadpVar.zza.zzd()) {
            iZzb += zzadp.zzb((zzado) entry2.getKey(), entry2.getValue());
        }
        return iZza2 + iZzb;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzaft
    public final int zzb(Object obj) {
        int i8;
        long jDoubleToLongBits;
        int i9;
        int iFloatToIntBits;
        int i10;
        int iZzc;
        int i11;
        int i12 = 0;
        for (int i13 = 0; i13 < this.zzc.length; i13 += 3) {
            int iZzu = zzu(i13);
            int[] iArr = this.zzc;
            int i14 = 1048575 & iZzu;
            int iZzt = zzt(iZzu);
            int i15 = iArr[i13];
            long j8 = i14;
            int iHashCode = 37;
            switch (iZzt) {
                case 0:
                    i8 = i12 * 53;
                    jDoubleToLongBits = Double.doubleToLongBits(zzago.zza(obj, j8));
                    byte[] bArr = zzaee.zzb;
                    i12 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 1:
                    i9 = i12 * 53;
                    iFloatToIntBits = Float.floatToIntBits(zzago.zzb(obj, j8));
                    i12 = iFloatToIntBits + i9;
                    break;
                case 2:
                    i8 = i12 * 53;
                    jDoubleToLongBits = zzago.zzd(obj, j8);
                    byte[] bArr2 = zzaee.zzb;
                    i12 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 3:
                    i8 = i12 * 53;
                    jDoubleToLongBits = zzago.zzd(obj, j8);
                    byte[] bArr3 = zzaee.zzb;
                    i12 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 4:
                    i10 = i12 * 53;
                    iZzc = zzago.zzc(obj, j8);
                    i12 = i10 + iZzc;
                    break;
                case 5:
                    i8 = i12 * 53;
                    jDoubleToLongBits = zzago.zzd(obj, j8);
                    byte[] bArr4 = zzaee.zzb;
                    i12 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 6:
                    i10 = i12 * 53;
                    iZzc = zzago.zzc(obj, j8);
                    i12 = i10 + iZzc;
                    break;
                case 7:
                    i9 = i12 * 53;
                    iFloatToIntBits = zzaee.zza(zzago.zzw(obj, j8));
                    i12 = iFloatToIntBits + i9;
                    break;
                case 8:
                    i9 = i12 * 53;
                    iFloatToIntBits = ((String) zzago.zzf(obj, j8)).hashCode();
                    i12 = iFloatToIntBits + i9;
                    break;
                case 9:
                    i11 = i12 * 53;
                    Object objZzf = zzago.zzf(obj, j8);
                    if (objZzf != null) {
                        iHashCode = objZzf.hashCode();
                    }
                    i12 = i11 + iHashCode;
                    break;
                case 10:
                    i9 = i12 * 53;
                    iFloatToIntBits = zzago.zzf(obj, j8).hashCode();
                    i12 = iFloatToIntBits + i9;
                    break;
                case 11:
                    i10 = i12 * 53;
                    iZzc = zzago.zzc(obj, j8);
                    i12 = i10 + iZzc;
                    break;
                case 12:
                    i10 = i12 * 53;
                    iZzc = zzago.zzc(obj, j8);
                    i12 = i10 + iZzc;
                    break;
                case 13:
                    i10 = i12 * 53;
                    iZzc = zzago.zzc(obj, j8);
                    i12 = i10 + iZzc;
                    break;
                case 14:
                    i8 = i12 * 53;
                    jDoubleToLongBits = zzago.zzd(obj, j8);
                    byte[] bArr5 = zzaee.zzb;
                    i12 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 15:
                    i10 = i12 * 53;
                    iZzc = zzago.zzc(obj, j8);
                    i12 = i10 + iZzc;
                    break;
                case 16:
                    i8 = i12 * 53;
                    jDoubleToLongBits = zzago.zzd(obj, j8);
                    byte[] bArr6 = zzaee.zzb;
                    i12 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 17:
                    i11 = i12 * 53;
                    Object objZzf2 = zzago.zzf(obj, j8);
                    if (objZzf2 != null) {
                        iHashCode = objZzf2.hashCode();
                    }
                    i12 = i11 + iHashCode;
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
                    i9 = i12 * 53;
                    iFloatToIntBits = zzago.zzf(obj, j8).hashCode();
                    i12 = iFloatToIntBits + i9;
                    break;
                case 50:
                    i9 = i12 * 53;
                    iFloatToIntBits = zzago.zzf(obj, j8).hashCode();
                    i12 = iFloatToIntBits + i9;
                    break;
                case 51:
                    if (zzR(obj, i15, i13)) {
                        i8 = i12 * 53;
                        jDoubleToLongBits = Double.doubleToLongBits(zzn(obj, j8));
                        byte[] bArr7 = zzaee.zzb;
                        i12 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 52:
                    if (zzR(obj, i15, i13)) {
                        i9 = i12 * 53;
                        iFloatToIntBits = Float.floatToIntBits(zzo(obj, j8));
                        i12 = iFloatToIntBits + i9;
                    }
                    break;
                case 53:
                    if (zzR(obj, i15, i13)) {
                        i8 = i12 * 53;
                        jDoubleToLongBits = zzv(obj, j8);
                        byte[] bArr8 = zzaee.zzb;
                        i12 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 54:
                    if (zzR(obj, i15, i13)) {
                        i8 = i12 * 53;
                        jDoubleToLongBits = zzv(obj, j8);
                        byte[] bArr9 = zzaee.zzb;
                        i12 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 55:
                    if (zzR(obj, i15, i13)) {
                        i10 = i12 * 53;
                        iZzc = zzp(obj, j8);
                        i12 = i10 + iZzc;
                    }
                    break;
                case 56:
                    if (zzR(obj, i15, i13)) {
                        i8 = i12 * 53;
                        jDoubleToLongBits = zzv(obj, j8);
                        byte[] bArr10 = zzaee.zzb;
                        i12 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 57:
                    if (zzR(obj, i15, i13)) {
                        i10 = i12 * 53;
                        iZzc = zzp(obj, j8);
                        i12 = i10 + iZzc;
                    }
                    break;
                case 58:
                    if (zzR(obj, i15, i13)) {
                        i9 = i12 * 53;
                        iFloatToIntBits = zzaee.zza(zzS(obj, j8));
                        i12 = iFloatToIntBits + i9;
                    }
                    break;
                case 59:
                    if (zzR(obj, i15, i13)) {
                        i9 = i12 * 53;
                        iFloatToIntBits = ((String) zzago.zzf(obj, j8)).hashCode();
                        i12 = iFloatToIntBits + i9;
                    }
                    break;
                case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                    if (zzR(obj, i15, i13)) {
                        i9 = i12 * 53;
                        iFloatToIntBits = zzago.zzf(obj, j8).hashCode();
                        i12 = iFloatToIntBits + i9;
                    }
                    break;
                case 61:
                    if (zzR(obj, i15, i13)) {
                        i9 = i12 * 53;
                        iFloatToIntBits = zzago.zzf(obj, j8).hashCode();
                        i12 = iFloatToIntBits + i9;
                    }
                    break;
                case 62:
                    if (zzR(obj, i15, i13)) {
                        i10 = i12 * 53;
                        iZzc = zzp(obj, j8);
                        i12 = i10 + iZzc;
                    }
                    break;
                case 63:
                    if (zzR(obj, i15, i13)) {
                        i10 = i12 * 53;
                        iZzc = zzp(obj, j8);
                        i12 = i10 + iZzc;
                    }
                    break;
                case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                    if (zzR(obj, i15, i13)) {
                        i10 = i12 * 53;
                        iZzc = zzp(obj, j8);
                        i12 = i10 + iZzc;
                    }
                    break;
                case 65:
                    if (zzR(obj, i15, i13)) {
                        i8 = i12 * 53;
                        jDoubleToLongBits = zzv(obj, j8);
                        byte[] bArr11 = zzaee.zzb;
                        i12 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 66:
                    if (zzR(obj, i15, i13)) {
                        i10 = i12 * 53;
                        iZzc = zzp(obj, j8);
                        i12 = i10 + iZzc;
                    }
                    break;
                case 67:
                    if (zzR(obj, i15, i13)) {
                        i8 = i12 * 53;
                        jDoubleToLongBits = zzv(obj, j8);
                        byte[] bArr12 = zzaee.zzb;
                        i12 = i8 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 68:
                    if (zzR(obj, i15, i13)) {
                        i9 = i12 * 53;
                        iFloatToIntBits = zzago.zzf(obj, j8).hashCode();
                        i12 = iFloatToIntBits + i9;
                    }
                    break;
            }
        }
        int iHashCode2 = ((zzady) obj).zzc.hashCode() + (i12 * 53);
        return this.zzh ? (iHashCode2 * 53) + ((zzadv) obj).zzb.zza.hashCode() : iHashCode2;
    }

    /* JADX WARN: Code duplicated, block: B:397:0x0958 A[PHI: r3 r7 r8 r10 r11 r12 r13
      0x0958: PHI (r3v55 int) = (r3v12 int), (r3v13 int), (r3v14 int), (r3v42 int), (r3v52 int), (r3v61 int) binds: [B:391:0x092f, B:375:0x08d6, B:359:0x0884, B:283:0x0727, B:178:0x052d, B:162:0x04cd] A[DONT_GENERATE, DONT_INLINE]
      0x0958: PHI (r7v26 int) = (r7v7 int), (r7v8 int), (r7v9 int), (r7v17 int), (r7v24 int), (r7v33 int) binds: [B:391:0x092f, B:375:0x08d6, B:359:0x0884, B:283:0x0727, B:178:0x052d, B:162:0x04cd] A[DONT_GENERATE, DONT_INLINE]
      0x0958: PHI (r8v30 int) = (r8v13 int), (r8v14 int), (r8v15 int), (r8v23 int), (r8v29 int), (r8v34 int) binds: [B:391:0x092f, B:375:0x08d6, B:359:0x0884, B:283:0x0727, B:178:0x052d, B:162:0x04cd] A[DONT_GENERATE, DONT_INLINE]
      0x0958: PHI (r10v29 com.google.ads.interactivemedia.v3.internal.zzacl) = 
      (r10v13 com.google.ads.interactivemedia.v3.internal.zzacl)
      (r10v14 com.google.ads.interactivemedia.v3.internal.zzacl)
      (r10v15 com.google.ads.interactivemedia.v3.internal.zzacl)
      (r10v23 com.google.ads.interactivemedia.v3.internal.zzacl)
      (r10v28 com.google.ads.interactivemedia.v3.internal.zzacl)
      (r10v34 com.google.ads.interactivemedia.v3.internal.zzacl)
     binds: [B:391:0x092f, B:375:0x08d6, B:359:0x0884, B:283:0x0727, B:178:0x052d, B:162:0x04cd] A[DONT_GENERATE, DONT_INLINE]
      0x0958: PHI (r11v45 sun.misc.Unsafe) = 
      (r11v14 sun.misc.Unsafe)
      (r11v15 sun.misc.Unsafe)
      (r11v16 sun.misc.Unsafe)
      (r11v24 sun.misc.Unsafe)
      (r11v43 sun.misc.Unsafe)
      (r11v51 sun.misc.Unsafe)
     binds: [B:391:0x092f, B:375:0x08d6, B:359:0x0884, B:283:0x0727, B:178:0x052d, B:162:0x04cd] A[DONT_GENERATE, DONT_INLINE]
      0x0958: PHI (r12v41 int) = (r12v8 int), (r12v9 int), (r12v10 int), (r12v21 int), (r12v39 int), (r12v46 int) binds: [B:391:0x092f, B:375:0x08d6, B:359:0x0884, B:283:0x0727, B:178:0x052d, B:162:0x04cd] A[DONT_GENERATE, DONT_INLINE]
      0x0958: PHI (r13v35 int) = (r13v11 int), (r13v12 int), (r13v13 int), (r13v17 int), (r13v33 int), (r13v43 int) binds: [B:391:0x092f, B:375:0x08d6, B:359:0x0884, B:283:0x0727, B:178:0x052d, B:162:0x04cd] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:399:0x095b  */
    /* JADX WARN: Code duplicated, block: B:401:0x096c  */
    /* JADX WARN: Code duplicated, block: B:485:0x0c09 A[PHI: r5 r6 r8 r10 r22 r25
      0x0c09: PHI (r5v62 com.google.ads.interactivemedia.v3.internal.zzacl) = 
      (r5v38 com.google.ads.interactivemedia.v3.internal.zzacl)
      (r5v39 com.google.ads.interactivemedia.v3.internal.zzacl)
      (r5v40 com.google.ads.interactivemedia.v3.internal.zzacl)
      (r5v41 com.google.ads.interactivemedia.v3.internal.zzacl)
      (r5v42 com.google.ads.interactivemedia.v3.internal.zzacl)
      (r5v43 com.google.ads.interactivemedia.v3.internal.zzacl)
      (r5v45 com.google.ads.interactivemedia.v3.internal.zzacl)
      (r5v55 com.google.ads.interactivemedia.v3.internal.zzacl)
      (r5v63 com.google.ads.interactivemedia.v3.internal.zzacl)
     binds: [B:483:0x0bf2, B:480:0x0bd1, B:477:0x0bb4, B:474:0x0b97, B:471:0x0b7a, B:468:0x0b5c, B:459:0x0b24, B:423:0x0a30, B:415:0x09d3] A[DONT_GENERATE, DONT_INLINE]
      0x0c09: PHI (r6v26 com.google.ads.interactivemedia.v3.internal.zzafe<T>) = 
      (r6v7 com.google.ads.interactivemedia.v3.internal.zzafe<T>)
      (r6v8 com.google.ads.interactivemedia.v3.internal.zzafe<T>)
      (r6v9 com.google.ads.interactivemedia.v3.internal.zzafe<T>)
      (r6v10 com.google.ads.interactivemedia.v3.internal.zzafe<T>)
      (r6v11 com.google.ads.interactivemedia.v3.internal.zzafe<T>)
      (r6v12 com.google.ads.interactivemedia.v3.internal.zzafe<T>)
      (r6v14 com.google.ads.interactivemedia.v3.internal.zzafe<T>)
      (r6v21 com.google.ads.interactivemedia.v3.internal.zzafe<T>)
      (r6v27 com.google.ads.interactivemedia.v3.internal.zzafe<T>)
     binds: [B:483:0x0bf2, B:480:0x0bd1, B:477:0x0bb4, B:474:0x0b97, B:471:0x0b7a, B:468:0x0b5c, B:459:0x0b24, B:423:0x0a30, B:415:0x09d3] A[DONT_GENERATE, DONT_INLINE]
      0x0c09: PHI (r8v59 int) = (r8v36 int), (r8v37 int), (r8v38 int), (r8v39 int), (r8v40 int), (r8v41 int), (r8v43 int), (r8v50 int), (r8v60 int) binds: [B:483:0x0bf2, B:480:0x0bd1, B:477:0x0bb4, B:474:0x0b97, B:471:0x0b7a, B:468:0x0b5c, B:459:0x0b24, B:423:0x0a30, B:415:0x09d3] A[DONT_GENERATE, DONT_INLINE]
      0x0c09: PHI (r10v56 int) = 
      (r10v37 int)
      (r10v38 int)
      (r10v39 int)
      (r10v40 int)
      (r10v41 int)
      (r10v42 int)
      (r10v44 int)
      (r10v50 int)
      (r10v57 int)
     binds: [B:483:0x0bf2, B:480:0x0bd1, B:477:0x0bb4, B:474:0x0b97, B:471:0x0b7a, B:468:0x0b5c, B:459:0x0b24, B:423:0x0a30, B:415:0x09d3] A[DONT_GENERATE, DONT_INLINE]
      0x0c09: PHI (r22v16 sun.misc.Unsafe) = 
      (r22v3 sun.misc.Unsafe)
      (r22v3 sun.misc.Unsafe)
      (r22v3 sun.misc.Unsafe)
      (r22v3 sun.misc.Unsafe)
      (r22v3 sun.misc.Unsafe)
      (r22v3 sun.misc.Unsafe)
      (r22v9 sun.misc.Unsafe)
      (r22v3 sun.misc.Unsafe)
      (r22v3 sun.misc.Unsafe)
     binds: [B:483:0x0bf2, B:480:0x0bd1, B:477:0x0bb4, B:474:0x0b97, B:471:0x0b7a, B:468:0x0b5c, B:459:0x0b24, B:423:0x0a30, B:415:0x09d3] A[DONT_GENERATE, DONT_INLINE]
      0x0c09: PHI (r25v13 int) = (r25v0 int), (r25v1 int), (r25v2 int), (r25v3 int), (r25v4 int), (r25v5 int), (r25v7 int), (r25v9 int), (r25v14 int) binds: [B:483:0x0bf2, B:480:0x0bd1, B:477:0x0bb4, B:474:0x0b97, B:471:0x0b7a, B:468:0x0b5c, B:459:0x0b24, B:423:0x0a30, B:415:0x09d3] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:502:0x0c5f  */
    /* JADX WARN: Code duplicated, block: B:561:0x0c0c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:582:0x0c1d A[SYNTHETIC] */
    public final int zzc(Object obj, byte[] bArr, int i8, int i9, int i10, zzacl zzaclVar) {
        Unsafe unsafe;
        int i11;
        int i12;
        Unsafe unsafe2;
        int i13;
        int i14;
        int i15;
        zzacl zzaclVar2;
        int i16;
        int iZzg;
        int i17;
        int i18;
        int i19;
        int i20;
        Unsafe unsafe3;
        zzacl zzaclVar3;
        int i21;
        int i22;
        int i23;
        int iZzf;
        int iZzh;
        zzacl zzaclVar4;
        int i24;
        int iZzj;
        int i25;
        int i26;
        zzacl zzaclVar5;
        int i27;
        int i28;
        int iZzk;
        int i29;
        zzacl zzaclVar6;
        int i30;
        int iZza;
        zzacl zzaclVar7;
        int i31;
        int i32;
        Unsafe unsafe4;
        int i33;
        int i34;
        int i35;
        int i36;
        int i37;
        int i38;
        int i39;
        int i40;
        int i41;
        int i42;
        zzafe<T> zzafeVar = this;
        Object obj2 = obj;
        i9 = i9;
        i10 = i10;
        zzacl zzaclVar8 = zzaclVar;
        zzD(obj);
        Unsafe unsafe5 = zzb;
        int i43 = -1;
        int iZze = i8;
        int i44 = -1;
        int i45 = 0;
        int i46 = 0;
        int i47 = 0;
        int i48 = 1048575;
        while (true) {
            if (iZze < i9) {
                int i49 = iZze + 1;
                int i50 = bArr[iZze];
                if (i50 < 0) {
                    int iZzi = zzacm.zzi(i50, bArr, i49, zzaclVar8);
                    i12 = zzaclVar8.zza;
                    i49 = iZzi;
                } else {
                    i12 = i50;
                }
                int i51 = i12 >>> 3;
                int iZzs = i51 > i44 ? (i51 < zzafeVar.zze || i51 > zzafeVar.zzf) ? -1 : zzafeVar.zzs(i51, i45 / 3) : zzafeVar.zzq(i51);
                if (iZzs == i43) {
                    unsafe2 = unsafe5;
                    i11 = i10;
                    i13 = i51;
                    i14 = i12;
                    i15 = 0;
                    zzaclVar2 = zzaclVar8;
                    i16 = i49;
                } else {
                    int i52 = i12 & 7;
                    int[] iArr = zzafeVar.zzc;
                    int i53 = iArr[iZzs + 1];
                    int iZzt = zzt(i53);
                    int i54 = i49;
                    int i55 = i12;
                    long j8 = i53 & 1048575;
                    if (iZzt <= 17) {
                        int i56 = iArr[iZzs + 2];
                        int i57 = 1 << (i56 >>> 20);
                        int i58 = 1048575;
                        int i59 = i56 & 1048575;
                        if (i59 != i48) {
                            if (i48 != 1048575) {
                                unsafe5.putInt(obj2, i48, i47);
                                i58 = 1048575;
                            }
                            if (i59 == i58) {
                                i59 = i59;
                                i47 = 0;
                            } else {
                                i59 = i59;
                                i47 = unsafe5.getInt(obj2, i59);
                            }
                            i48 = i59;
                        } else {
                            i48 = i48;
                        }
                        switch (iZzt) {
                            case 0:
                                zzaclVar7 = zzaclVar8;
                                i31 = iZzs;
                                i32 = i55;
                                unsafe4 = unsafe5;
                                i33 = i51;
                                i34 = i54;
                                if (i52 == 1) {
                                    i35 = i34 + 8;
                                    i47 |= i57;
                                    zzago.zzo(obj2, j8, Double.longBitsToDouble(zzacm.zzn(bArr, i34)));
                                    i10 = i10;
                                    iZze = i35;
                                    i46 = i32;
                                    i9 = i9;
                                    unsafe5 = unsafe4;
                                    zzaclVar8 = zzaclVar7;
                                    i48 = i48;
                                    i44 = i33;
                                    i43 = -1;
                                    i45 = i31;
                                } else {
                                    i11 = i10;
                                    unsafe2 = unsafe4;
                                    zzaclVar2 = zzaclVar7;
                                    i48 = i48;
                                    i13 = i33;
                                    i14 = i32;
                                    i16 = i34;
                                    i15 = i31;
                                }
                                break;
                            case 1:
                                zzaclVar7 = zzaclVar8;
                                i31 = iZzs;
                                i32 = i55;
                                unsafe4 = unsafe5;
                                i33 = i51;
                                i34 = i54;
                                if (i52 == 5) {
                                    i35 = i34 + 4;
                                    i47 |= i57;
                                    zzago.zzp(obj2, j8, Float.intBitsToFloat(zzacm.zzb(bArr, i34)));
                                    i10 = i10;
                                    iZze = i35;
                                    i46 = i32;
                                    i9 = i9;
                                    unsafe5 = unsafe4;
                                    zzaclVar8 = zzaclVar7;
                                    i48 = i48;
                                    i44 = i33;
                                    i43 = -1;
                                    i45 = i31;
                                } else {
                                    i11 = i10;
                                    unsafe2 = unsafe4;
                                    zzaclVar2 = zzaclVar7;
                                    i48 = i48;
                                    i13 = i33;
                                    i14 = i32;
                                    i16 = i34;
                                    i15 = i31;
                                }
                                break;
                            case 2:
                            case 3:
                                zzaclVar7 = zzaclVar8;
                                i36 = i55;
                                i37 = i9;
                                i33 = i51;
                                i34 = i54;
                                unsafe4 = unsafe5;
                                i38 = iZzs;
                                if (i52 == 0) {
                                    i47 |= i57;
                                    iZze = zzacm.zzk(bArr, i34, zzaclVar7);
                                    i46 = i36;
                                    unsafe4.putLong(obj, j8, zzaclVar7.zzb);
                                    i9 = i37;
                                    unsafe5 = unsafe4;
                                    i45 = i38;
                                    zzaclVar8 = zzaclVar7;
                                    i48 = i48;
                                    i44 = i33;
                                    i43 = -1;
                                } else {
                                    i31 = i38;
                                    i32 = i36;
                                    i11 = i10;
                                    unsafe2 = unsafe4;
                                    zzaclVar2 = zzaclVar7;
                                    i48 = i48;
                                    i13 = i33;
                                    i14 = i32;
                                    i16 = i34;
                                    i15 = i31;
                                }
                                break;
                            case 4:
                            case 11:
                                zzaclVar7 = zzaclVar8;
                                i36 = i55;
                                i37 = i9;
                                i33 = i51;
                                i34 = i54;
                                unsafe4 = unsafe5;
                                i38 = iZzs;
                                if (i52 == 0) {
                                    i47 |= i57;
                                    iZze = zzacm.zzh(bArr, i34, zzaclVar7);
                                    unsafe4.putInt(obj2, j8, zzaclVar7.zza);
                                    i10 = i10;
                                    i46 = i36;
                                    i44 = i33;
                                    i43 = -1;
                                    i9 = i37;
                                    zzaclVar8 = zzaclVar7;
                                    Unsafe unsafe6 = unsafe4;
                                    i45 = i38;
                                    unsafe5 = unsafe6;
                                } else {
                                    i31 = i38;
                                    i32 = i36;
                                    i11 = i10;
                                    unsafe2 = unsafe4;
                                    zzaclVar2 = zzaclVar7;
                                    i48 = i48;
                                    i13 = i33;
                                    i14 = i32;
                                    i16 = i34;
                                    i15 = i31;
                                }
                                break;
                            case 5:
                            case 14:
                                zzaclVar7 = zzaclVar8;
                                i32 = i55;
                                i33 = i51;
                                i34 = i54;
                                unsafe4 = unsafe5;
                                if (i52 == 1) {
                                    i47 |= i57;
                                    unsafe4.putLong(obj, j8, zzacm.zzn(bArr, i34));
                                    i10 = i10;
                                    unsafe5 = unsafe4;
                                    i9 = i9;
                                    i45 = iZzs;
                                    zzaclVar8 = zzaclVar7;
                                    i43 = -1;
                                    i46 = i32;
                                    iZze = i34 + 8;
                                    i44 = i33;
                                } else {
                                    i31 = iZzs;
                                    i11 = i10;
                                    unsafe2 = unsafe4;
                                    zzaclVar2 = zzaclVar7;
                                    i48 = i48;
                                    i13 = i33;
                                    i14 = i32;
                                    i16 = i34;
                                    i15 = i31;
                                }
                                break;
                            case 6:
                            case 13:
                                i9 = i9;
                                zzaclVar7 = zzaclVar8;
                                i32 = i55;
                                i33 = i51;
                                i34 = i54;
                                unsafe4 = unsafe5;
                                i38 = iZzs;
                                if (i52 == 5) {
                                    i47 |= i57;
                                    unsafe4.putInt(obj2, j8, zzacm.zzb(bArr, i34));
                                    iZze = i34 + 4;
                                    i46 = i32;
                                    zzaclVar8 = zzaclVar7;
                                    i44 = i33;
                                    i43 = -1;
                                    Unsafe unsafe7 = unsafe4;
                                    i45 = i38;
                                    unsafe5 = unsafe7;
                                } else {
                                    i31 = i38;
                                    i11 = i10;
                                    unsafe2 = unsafe4;
                                    zzaclVar2 = zzaclVar7;
                                    i48 = i48;
                                    i13 = i33;
                                    i14 = i32;
                                    i16 = i34;
                                    i15 = i31;
                                }
                                break;
                            case 7:
                                i9 = i9;
                                zzaclVar7 = zzaclVar8;
                                i32 = i55;
                                i33 = i51;
                                i34 = i54;
                                unsafe4 = unsafe5;
                                i38 = iZzs;
                                if (i52 == 0) {
                                    i47 |= i57;
                                    iZze = zzacm.zzk(bArr, i34, zzaclVar7);
                                    zzago.zzm(obj2, j8, zzaclVar7.zzb != 0);
                                    i46 = i32;
                                    zzaclVar8 = zzaclVar7;
                                    i44 = i33;
                                    i43 = -1;
                                    Unsafe unsafe8 = unsafe4;
                                    i45 = i38;
                                    unsafe5 = unsafe8;
                                } else {
                                    i31 = i38;
                                    i11 = i10;
                                    unsafe2 = unsafe4;
                                    zzaclVar2 = zzaclVar7;
                                    i48 = i48;
                                    i13 = i33;
                                    i14 = i32;
                                    i16 = i34;
                                    i15 = i31;
                                }
                                break;
                            case 8:
                                i9 = i9;
                                zzaclVar7 = zzaclVar8;
                                i32 = i55;
                                i33 = i51;
                                i34 = i54;
                                unsafe4 = unsafe5;
                                i38 = iZzs;
                                if (i52 == 2) {
                                    if (zzM(i53)) {
                                        int iZzh2 = zzacm.zzh(bArr, i34, zzaclVar7);
                                        int i60 = zzaclVar7.zza;
                                        if (i60 < 0) {
                                            throw new zzaeg("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                        }
                                        int i61 = i57 | i47;
                                        if (i60 == 0) {
                                            zzaclVar7.zzc = HttpUrl.FRAGMENT_ENCODE_SET;
                                        } else {
                                            zzaclVar7.zzc = zzagr.zzd(bArr, iZzh2, i60);
                                            iZzh2 += i60;
                                        }
                                        iZze = iZzh2;
                                        i47 = i61;
                                    } else {
                                        int iZzh3 = zzacm.zzh(bArr, i34, zzaclVar7);
                                        int i62 = zzaclVar7.zza;
                                        if (i62 < 0) {
                                            throw new zzaeg("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                        }
                                        int i63 = i47 | i57;
                                        if (i62 == 0) {
                                            zzaclVar7.zzc = HttpUrl.FRAGMENT_ENCODE_SET;
                                        } else {
                                            zzaclVar7.zzc = new String(bArr, iZzh3, i62, zzaee.zza);
                                            iZzh3 += i62;
                                        }
                                        iZze = iZzh3;
                                        i47 = i63;
                                    }
                                    unsafe4.putObject(obj2, j8, zzaclVar7.zzc);
                                    i46 = i32;
                                    zzaclVar8 = zzaclVar7;
                                    i44 = i33;
                                    i43 = -1;
                                    Unsafe unsafe9 = unsafe4;
                                    i45 = i38;
                                    unsafe5 = unsafe9;
                                } else {
                                    i31 = i38;
                                    i11 = i10;
                                    unsafe2 = unsafe4;
                                    zzaclVar2 = zzaclVar7;
                                    i48 = i48;
                                    i13 = i33;
                                    i14 = i32;
                                    i16 = i34;
                                    i15 = i31;
                                }
                                break;
                            case 9:
                                i9 = i9;
                                zzaclVar7 = zzaclVar8;
                                i39 = iZzs;
                                i40 = i55;
                                unsafe4 = unsafe5;
                                i33 = i51;
                                i34 = i54;
                                if (i52 != 2) {
                                    i31 = i39;
                                    i32 = i40;
                                    i11 = i10;
                                    unsafe2 = unsafe4;
                                    zzaclVar2 = zzaclVar7;
                                    i48 = i48;
                                    i13 = i33;
                                    i14 = i32;
                                    i16 = i34;
                                    i15 = i31;
                                } else {
                                    i47 |= i57;
                                    Object objZzA = zzafeVar.zzA(obj2, i39);
                                    i46 = i40;
                                    iZzg = zzacm.zzm(objZzA, zzafeVar.zzx(i39), bArr, i34, i9, zzaclVar);
                                    zzafeVar.zzJ(obj2, i39, objZzA);
                                    i10 = i10;
                                    i9 = i9;
                                    unsafe5 = unsafe4;
                                    i45 = i39;
                                    zzaclVar8 = zzaclVar7;
                                    i48 = i48;
                                    i44 = i33;
                                    i43 = -1;
                                }
                                iZze = iZzg;
                                break;
                            case 10:
                                i9 = i9;
                                zzaclVar7 = zzaclVar8;
                                i39 = iZzs;
                                i40 = i55;
                                unsafe4 = unsafe5;
                                i33 = i51;
                                i34 = i54;
                                if (i52 == 2) {
                                    i47 |= i57;
                                    iZze = zzacm.zza(bArr, i34, zzaclVar7);
                                    unsafe4.putObject(obj2, j8, zzaclVar7.zzc);
                                    i46 = i40;
                                    i10 = i10;
                                    unsafe5 = unsafe4;
                                    i44 = i33;
                                    i43 = -1;
                                    i45 = i39;
                                    zzaclVar8 = zzaclVar7;
                                    i48 = i48;
                                } else {
                                    i31 = i39;
                                    i32 = i40;
                                    i11 = i10;
                                    unsafe2 = unsafe4;
                                    zzaclVar2 = zzaclVar7;
                                    i48 = i48;
                                    i13 = i33;
                                    i14 = i32;
                                    i16 = i34;
                                    i15 = i31;
                                }
                                break;
                            case 12:
                                i9 = i9;
                                zzaclVar7 = zzaclVar8;
                                i39 = iZzs;
                                i41 = i55;
                                unsafe4 = unsafe5;
                                i33 = i51;
                                i34 = i54;
                                if (i52 == 0) {
                                    iZze = zzacm.zzh(bArr, i34, zzaclVar7);
                                    int i64 = zzaclVar7.zza;
                                    zzaeb zzaebVarZzw = zzafeVar.zzw(i39);
                                    if ((i53 & Integer.MIN_VALUE) == 0 || zzaebVarZzw == null || zzaebVarZzw.zza(i64)) {
                                        i42 = i41;
                                        i47 |= i57;
                                        unsafe4.putInt(obj2, j8, i64);
                                    } else {
                                        i42 = i41;
                                        zzd(obj).zzj(i42, Long.valueOf(i64));
                                    }
                                    i10 = i10;
                                    i46 = i42;
                                    unsafe5 = unsafe4;
                                    i44 = i33;
                                    i43 = -1;
                                    i45 = i39;
                                    zzaclVar8 = zzaclVar7;
                                    i48 = i48;
                                } else {
                                    i31 = i39;
                                    i32 = i41;
                                    i11 = i10;
                                    unsafe2 = unsafe4;
                                    zzaclVar2 = zzaclVar7;
                                    i48 = i48;
                                    i13 = i33;
                                    i14 = i32;
                                    i16 = i34;
                                    i15 = i31;
                                }
                                break;
                            case 15:
                                i9 = i9;
                                zzaclVar7 = zzaclVar8;
                                i39 = iZzs;
                                i41 = i55;
                                unsafe4 = unsafe5;
                                i33 = i51;
                                i34 = i54;
                                if (i52 == 0) {
                                    i47 |= i57;
                                    iZze = zzacm.zzh(bArr, i34, zzaclVar7);
                                    unsafe4.putInt(obj2, j8, zzada.zzC(zzaclVar7.zza));
                                    i10 = i10;
                                    unsafe5 = unsafe4;
                                    i44 = i33;
                                    i46 = i41;
                                    i43 = -1;
                                    i45 = i39;
                                    zzaclVar8 = zzaclVar7;
                                    i48 = i48;
                                } else {
                                    i31 = i39;
                                    i32 = i41;
                                    i11 = i10;
                                    unsafe2 = unsafe4;
                                    zzaclVar2 = zzaclVar7;
                                    i48 = i48;
                                    i13 = i33;
                                    i14 = i32;
                                    i16 = i34;
                                    i15 = i31;
                                }
                                break;
                            case 16:
                                i41 = i55;
                                if (i52 == 0) {
                                    i47 |= i57;
                                    iZze = zzacm.zzk(bArr, i54, zzaclVar8);
                                    i33 = i51;
                                    unsafe5.putLong(obj, j8, zzada.zzD(zzaclVar8.zzb));
                                    unsafe5 = unsafe5;
                                    i9 = i9;
                                    i10 = i10;
                                    zzaclVar8 = zzaclVar8;
                                    i46 = i41;
                                    i43 = -1;
                                    i45 = iZzs;
                                    i44 = i33;
                                } else {
                                    zzaclVar7 = zzaclVar8;
                                    i33 = i51;
                                    i34 = i54;
                                    unsafe4 = unsafe5;
                                    i31 = iZzs;
                                    i32 = i41;
                                    i11 = i10;
                                    unsafe2 = unsafe4;
                                    zzaclVar2 = zzaclVar7;
                                    i48 = i48;
                                    i13 = i33;
                                    i14 = i32;
                                    i16 = i34;
                                    i15 = i31;
                                }
                                break;
                            default:
                                if (i52 == 3) {
                                    Object objZzA2 = zzafeVar.zzA(obj2, iZzs);
                                    iZze = zzacm.zzl(objZzA2, zzafeVar.zzx(iZzs), bArr, i54, i9, (i51 << 3) | 4, zzaclVar);
                                    zzafeVar.zzJ(obj2, iZzs, objZzA2);
                                    i47 |= i57;
                                    i45 = iZzs;
                                    i44 = i51;
                                    i48 = i48;
                                    i46 = i55;
                                    i43 = -1;
                                    i10 = i10;
                                } else {
                                    zzaclVar7 = zzaclVar8;
                                    i31 = iZzs;
                                    i32 = i55;
                                    unsafe4 = unsafe5;
                                    i33 = i51;
                                    i34 = i54;
                                    i11 = i10;
                                    unsafe2 = unsafe4;
                                    zzaclVar2 = zzaclVar7;
                                    i48 = i48;
                                    i13 = i33;
                                    i14 = i32;
                                    i16 = i34;
                                    i15 = i31;
                                }
                                break;
                        }
                    } else {
                        int i65 = i48;
                        zzacl zzaclVar9 = zzaclVar8;
                        Unsafe unsafe10 = unsafe5;
                        if (iZzt != 27) {
                            i13 = i51;
                            i17 = i47;
                            unsafe2 = unsafe10;
                            String str = "Protocol message had invalid UTF-8.";
                            if (iZzt <= 49) {
                                long j9 = i53;
                                Unsafe unsafe11 = zzb;
                                zzaed zzaedVar = (zzaed) unsafe11.getObject(obj2, j8);
                                if (zzaedVar.zzc()) {
                                    str = "Protocol message had invalid UTF-8.";
                                } else {
                                    int size = zzaedVar.size();
                                    zzaed zzaedVarZzd = zzaedVar.zzd(size == 0 ? 10 : size + size);
                                    unsafe11.putObject(obj2, j8, zzaedVarZzd);
                                    zzaedVar = zzaedVarZzd;
                                }
                                switch (iZzt) {
                                    case 18:
                                    case 35:
                                        i18 = i9;
                                        i19 = i55;
                                        i13 = i13;
                                        i20 = i54;
                                        unsafe3 = unsafe2;
                                        zzaclVar3 = zzaclVar;
                                        i15 = iZzs;
                                        if (i52 == 2) {
                                            zzadh zzadhVar = (zzadh) zzaedVar;
                                            iZzg = zzacm.zzh(bArr, i20, zzaclVar3);
                                            int i66 = zzaclVar3.zza + iZzg;
                                            while (iZzg < i66) {
                                                zzadhVar.zzf(Double.longBitsToDouble(zzacm.zzn(bArr, iZzg)));
                                                iZzg += 8;
                                            }
                                            if (iZzg != i66) {
                                                throw new zzaeg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                        } else if (i52 == 1) {
                                            iZzg = i20 + 8;
                                            zzadh zzadhVar2 = (zzadh) zzaedVar;
                                            zzadhVar2.zzf(Double.longBitsToDouble(zzacm.zzn(bArr, i20)));
                                            while (iZzg < i18) {
                                                int iZzh4 = zzacm.zzh(bArr, iZzg, zzaclVar3);
                                                if (i19 == zzaclVar3.zza) {
                                                    zzadhVar2.zzf(Double.longBitsToDouble(zzacm.zzn(bArr, iZzh4)));
                                                    iZzg = iZzh4 + 8;
                                                }
                                            }
                                        } else {
                                            iZzg = i20;
                                        }
                                        if (iZzg == i20) {
                                            obj2 = obj;
                                            i11 = i10;
                                            i16 = iZzg;
                                            zzaclVar2 = zzaclVar3;
                                            unsafe2 = unsafe3;
                                            i14 = i19;
                                            i48 = i65;
                                            i47 = i17;
                                        } else {
                                            i10 = i10;
                                            i44 = i13;
                                            i9 = i18;
                                            zzaclVar8 = zzaclVar3;
                                            unsafe5 = unsafe3;
                                            i46 = i19;
                                            i48 = i65;
                                            i47 = i17;
                                            i43 = -1;
                                            obj2 = obj;
                                        }
                                        i45 = i15;
                                        iZze = iZzg;
                                        break;
                                    case 19:
                                    case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                                        i18 = i9;
                                        i19 = i55;
                                        i13 = i13;
                                        i20 = i54;
                                        unsafe3 = unsafe2;
                                        zzaclVar3 = zzaclVar;
                                        i15 = iZzs;
                                        if (i52 == 2) {
                                            zzadr zzadrVar = (zzadr) zzaedVar;
                                            iZzg = zzacm.zzh(bArr, i20, zzaclVar3);
                                            int i67 = zzaclVar3.zza + iZzg;
                                            while (iZzg < i67) {
                                                zzadrVar.zzf(Float.intBitsToFloat(zzacm.zzb(bArr, iZzg)));
                                                iZzg += 4;
                                            }
                                            if (iZzg != i67) {
                                                throw new zzaeg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                        } else if (i52 == 5) {
                                            iZzg = i20 + 4;
                                            zzadr zzadrVar2 = (zzadr) zzaedVar;
                                            zzadrVar2.zzf(Float.intBitsToFloat(zzacm.zzb(bArr, i20)));
                                            while (iZzg < i18) {
                                                int iZzh5 = zzacm.zzh(bArr, iZzg, zzaclVar3);
                                                if (i19 == zzaclVar3.zza) {
                                                    zzadrVar2.zzf(Float.intBitsToFloat(zzacm.zzb(bArr, iZzh5)));
                                                    iZzg = iZzh5 + 4;
                                                }
                                            }
                                        } else {
                                            iZzg = i20;
                                        }
                                        if (iZzg == i20) {
                                            obj2 = obj;
                                            i11 = i10;
                                            i16 = iZzg;
                                            zzaclVar2 = zzaclVar3;
                                            unsafe2 = unsafe3;
                                            i14 = i19;
                                            i48 = i65;
                                            i47 = i17;
                                        } else {
                                            i10 = i10;
                                            i44 = i13;
                                            i9 = i18;
                                            zzaclVar8 = zzaclVar3;
                                            unsafe5 = unsafe3;
                                            i46 = i19;
                                            i48 = i65;
                                            i47 = i17;
                                            i43 = -1;
                                            obj2 = obj;
                                        }
                                        i45 = i15;
                                        iZze = iZzg;
                                        break;
                                    case 20:
                                    case 21:
                                    case 37:
                                    case 38:
                                        i18 = i9;
                                        i19 = i55;
                                        i13 = i13;
                                        i20 = i54;
                                        unsafe3 = unsafe2;
                                        zzaclVar3 = zzaclVar;
                                        i15 = iZzs;
                                        if (i52 == 2) {
                                            zzaeq zzaeqVar = (zzaeq) zzaedVar;
                                            iZzg = zzacm.zzh(bArr, i20, zzaclVar3);
                                            int i68 = zzaclVar3.zza + iZzg;
                                            while (iZzg < i68) {
                                                iZzg = zzacm.zzk(bArr, iZzg, zzaclVar3);
                                                zzaeqVar.zzf(zzaclVar3.zzb);
                                            }
                                            if (iZzg != i68) {
                                                throw new zzaeg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                        } else if (i52 == 0) {
                                            zzaeq zzaeqVar2 = (zzaeq) zzaedVar;
                                            iZzg = zzacm.zzk(bArr, i20, zzaclVar3);
                                            zzaeqVar2.zzf(zzaclVar3.zzb);
                                            while (iZzg < i18) {
                                                int iZzh6 = zzacm.zzh(bArr, iZzg, zzaclVar3);
                                                if (i19 == zzaclVar3.zza) {
                                                    iZzg = zzacm.zzk(bArr, iZzh6, zzaclVar3);
                                                    zzaeqVar2.zzf(zzaclVar3.zzb);
                                                }
                                            }
                                        } else {
                                            iZzg = i20;
                                        }
                                        if (iZzg == i20) {
                                            obj2 = obj;
                                            i11 = i10;
                                            i16 = iZzg;
                                            zzaclVar2 = zzaclVar3;
                                            unsafe2 = unsafe3;
                                            i14 = i19;
                                            i48 = i65;
                                            i47 = i17;
                                        } else {
                                            i10 = i10;
                                            i44 = i13;
                                            i9 = i18;
                                            zzaclVar8 = zzaclVar3;
                                            unsafe5 = unsafe3;
                                            i46 = i19;
                                            i48 = i65;
                                            i47 = i17;
                                            i43 = -1;
                                            obj2 = obj;
                                        }
                                        i45 = i15;
                                        iZze = iZzg;
                                        break;
                                    case 22:
                                    case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                                    case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                    case 43:
                                        i18 = i9;
                                        i21 = i13;
                                        unsafe3 = unsafe2;
                                        i15 = iZzs;
                                        i22 = i55;
                                        i23 = i54;
                                        zzaclVar3 = zzaclVar;
                                        if (i52 == 2) {
                                            iZzf = zzacm.zzf(bArr, i23, zzaedVar, zzaclVar3);
                                            i19 = i22;
                                            iZzg = iZzf;
                                            i20 = i23;
                                            i13 = i21;
                                        } else if (i52 == 0) {
                                            i19 = i22;
                                            i20 = i23;
                                            iZzg = zzacm.zzj(i22, bArr, i23, i9, zzaedVar, zzaclVar);
                                            i13 = i21;
                                        } else {
                                            i19 = i22;
                                            i20 = i23;
                                            i13 = i21;
                                            iZzg = i20;
                                        }
                                        if (iZzg == i20) {
                                            obj2 = obj;
                                            i11 = i10;
                                            i16 = iZzg;
                                            zzaclVar2 = zzaclVar3;
                                            unsafe2 = unsafe3;
                                            i14 = i19;
                                            i48 = i65;
                                            i47 = i17;
                                        } else {
                                            i10 = i10;
                                            i44 = i13;
                                            i9 = i18;
                                            zzaclVar8 = zzaclVar3;
                                            unsafe5 = unsafe3;
                                            i46 = i19;
                                            i48 = i65;
                                            i47 = i17;
                                            i43 = -1;
                                            obj2 = obj;
                                        }
                                        i45 = i15;
                                        iZze = iZzg;
                                        break;
                                    case 23:
                                    case 32:
                                    case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                                    case 46:
                                        i18 = i9;
                                        i21 = i13;
                                        unsafe3 = unsafe2;
                                        i15 = iZzs;
                                        i22 = i55;
                                        i23 = i54;
                                        zzaclVar3 = zzaclVar;
                                        if (i52 == 2) {
                                            zzaeq zzaeqVar3 = (zzaeq) zzaedVar;
                                            iZzh = zzacm.zzh(bArr, i23, zzaclVar3);
                                            int i69 = zzaclVar3.zza + iZzh;
                                            while (iZzh < i69) {
                                                zzaeqVar3.zzf(zzacm.zzn(bArr, iZzh));
                                                iZzh += 8;
                                            }
                                            if (iZzh != i69) {
                                                throw new zzaeg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                            i19 = i22;
                                            i20 = i23;
                                            iZzg = iZzh;
                                            i13 = i21;
                                            if (iZzg == i20) {
                                                obj2 = obj;
                                                i11 = i10;
                                                i16 = iZzg;
                                                zzaclVar2 = zzaclVar3;
                                                unsafe2 = unsafe3;
                                                i14 = i19;
                                                i48 = i65;
                                                i47 = i17;
                                            } else {
                                                i10 = i10;
                                                i44 = i13;
                                                i9 = i18;
                                                zzaclVar8 = zzaclVar3;
                                                unsafe5 = unsafe3;
                                                i46 = i19;
                                                i48 = i65;
                                                i47 = i17;
                                                i43 = -1;
                                                obj2 = obj;
                                            }
                                            i45 = i15;
                                            iZze = iZzg;
                                        } else {
                                            if (i52 == 1) {
                                                iZzf = i23 + 8;
                                                zzaeq zzaeqVar4 = (zzaeq) zzaedVar;
                                                zzaeqVar4.zzf(zzacm.zzn(bArr, i23));
                                                while (iZzf < i18) {
                                                    int iZzh7 = zzacm.zzh(bArr, iZzf, zzaclVar3);
                                                    if (i22 != zzaclVar3.zza) {
                                                        i19 = i22;
                                                        iZzg = iZzf;
                                                        i20 = i23;
                                                        i13 = i21;
                                                        if (iZzg == i20) {
                                                            obj2 = obj;
                                                            i11 = i10;
                                                            i16 = iZzg;
                                                            zzaclVar2 = zzaclVar3;
                                                            unsafe2 = unsafe3;
                                                            i14 = i19;
                                                            i48 = i65;
                                                            i47 = i17;
                                                        } else {
                                                            i10 = i10;
                                                            i44 = i13;
                                                            i9 = i18;
                                                            zzaclVar8 = zzaclVar3;
                                                            unsafe5 = unsafe3;
                                                            i46 = i19;
                                                            i48 = i65;
                                                            i47 = i17;
                                                            i43 = -1;
                                                            obj2 = obj;
                                                        }
                                                        i45 = i15;
                                                        iZze = iZzg;
                                                    } else {
                                                        zzaeqVar4.zzf(zzacm.zzn(bArr, iZzh7));
                                                        iZzf = iZzh7 + 8;
                                                    }
                                                    break;
                                                }
                                                i19 = i22;
                                                iZzg = iZzf;
                                                i20 = i23;
                                                i13 = i21;
                                                if (iZzg == i20) {
                                                    obj2 = obj;
                                                    i11 = i10;
                                                    i16 = iZzg;
                                                    zzaclVar2 = zzaclVar3;
                                                    unsafe2 = unsafe3;
                                                    i14 = i19;
                                                    i48 = i65;
                                                    i47 = i17;
                                                } else {
                                                    i10 = i10;
                                                    i44 = i13;
                                                    i9 = i18;
                                                    zzaclVar8 = zzaclVar3;
                                                    unsafe5 = unsafe3;
                                                    i46 = i19;
                                                    i48 = i65;
                                                    i47 = i17;
                                                    i43 = -1;
                                                    obj2 = obj;
                                                }
                                                i45 = i15;
                                                iZze = iZzg;
                                            }
                                            i19 = i22;
                                            i20 = i23;
                                            i13 = i21;
                                            iZzg = i20;
                                            if (iZzg == i20) {
                                                obj2 = obj;
                                                i11 = i10;
                                                i16 = iZzg;
                                                zzaclVar2 = zzaclVar3;
                                                unsafe2 = unsafe3;
                                                i14 = i19;
                                                i48 = i65;
                                                i47 = i17;
                                            } else {
                                                i10 = i10;
                                                i44 = i13;
                                                i9 = i18;
                                                zzaclVar8 = zzaclVar3;
                                                unsafe5 = unsafe3;
                                                i46 = i19;
                                                i48 = i65;
                                                i47 = i17;
                                                i43 = -1;
                                                obj2 = obj;
                                            }
                                            i45 = i15;
                                            iZze = iZzg;
                                        }
                                        break;
                                    case 24:
                                    case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                                    case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
                                    case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                                        i18 = i9;
                                        i21 = i13;
                                        unsafe3 = unsafe2;
                                        i15 = iZzs;
                                        i22 = i55;
                                        i23 = i54;
                                        zzaclVar3 = zzaclVar;
                                        if (i52 == 2) {
                                            zzadz zzadzVar = (zzadz) zzaedVar;
                                            iZzh = zzacm.zzh(bArr, i23, zzaclVar3);
                                            int i70 = zzaclVar3.zza + iZzh;
                                            while (iZzh < i70) {
                                                zzadzVar.zzg(zzacm.zzb(bArr, iZzh));
                                                iZzh += 4;
                                            }
                                            if (iZzh != i70) {
                                                throw new zzaeg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                            i19 = i22;
                                            i20 = i23;
                                            iZzg = iZzh;
                                            i13 = i21;
                                            if (iZzg == i20) {
                                                obj2 = obj;
                                                i11 = i10;
                                                i16 = iZzg;
                                                zzaclVar2 = zzaclVar3;
                                                unsafe2 = unsafe3;
                                                i14 = i19;
                                                i48 = i65;
                                                i47 = i17;
                                            } else {
                                                i10 = i10;
                                                i44 = i13;
                                                i9 = i18;
                                                zzaclVar8 = zzaclVar3;
                                                unsafe5 = unsafe3;
                                                i46 = i19;
                                                i48 = i65;
                                                i47 = i17;
                                                i43 = -1;
                                                obj2 = obj;
                                            }
                                            i45 = i15;
                                            iZze = iZzg;
                                        } else {
                                            if (i52 == 5) {
                                                iZzf = i23 + 4;
                                                zzadz zzadzVar2 = (zzadz) zzaedVar;
                                                zzadzVar2.zzg(zzacm.zzb(bArr, i23));
                                                while (iZzf < i18) {
                                                    int iZzh8 = zzacm.zzh(bArr, iZzf, zzaclVar3);
                                                    if (i22 != zzaclVar3.zza) {
                                                        i19 = i22;
                                                        iZzg = iZzf;
                                                        i20 = i23;
                                                        i13 = i21;
                                                        if (iZzg == i20) {
                                                            obj2 = obj;
                                                            i11 = i10;
                                                            i16 = iZzg;
                                                            zzaclVar2 = zzaclVar3;
                                                            unsafe2 = unsafe3;
                                                            i14 = i19;
                                                            i48 = i65;
                                                            i47 = i17;
                                                        } else {
                                                            i10 = i10;
                                                            i44 = i13;
                                                            i9 = i18;
                                                            zzaclVar8 = zzaclVar3;
                                                            unsafe5 = unsafe3;
                                                            i46 = i19;
                                                            i48 = i65;
                                                            i47 = i17;
                                                            i43 = -1;
                                                            obj2 = obj;
                                                        }
                                                        i45 = i15;
                                                        iZze = iZzg;
                                                    } else {
                                                        zzadzVar2.zzg(zzacm.zzb(bArr, iZzh8));
                                                        iZzf = iZzh8 + 4;
                                                    }
                                                    break;
                                                }
                                                i19 = i22;
                                                iZzg = iZzf;
                                                i20 = i23;
                                                i13 = i21;
                                                if (iZzg == i20) {
                                                    obj2 = obj;
                                                    i11 = i10;
                                                    i16 = iZzg;
                                                    zzaclVar2 = zzaclVar3;
                                                    unsafe2 = unsafe3;
                                                    i14 = i19;
                                                    i48 = i65;
                                                    i47 = i17;
                                                } else {
                                                    i10 = i10;
                                                    i44 = i13;
                                                    i9 = i18;
                                                    zzaclVar8 = zzaclVar3;
                                                    unsafe5 = unsafe3;
                                                    i46 = i19;
                                                    i48 = i65;
                                                    i47 = i17;
                                                    i43 = -1;
                                                    obj2 = obj;
                                                }
                                                i45 = i15;
                                                iZze = iZzg;
                                            }
                                            i19 = i22;
                                            i20 = i23;
                                            i13 = i21;
                                            iZzg = i20;
                                            if (iZzg == i20) {
                                                obj2 = obj;
                                                i11 = i10;
                                                i16 = iZzg;
                                                zzaclVar2 = zzaclVar3;
                                                unsafe2 = unsafe3;
                                                i14 = i19;
                                                i48 = i65;
                                                i47 = i17;
                                            } else {
                                                i10 = i10;
                                                i44 = i13;
                                                i9 = i18;
                                                zzaclVar8 = zzaclVar3;
                                                unsafe5 = unsafe3;
                                                i46 = i19;
                                                i48 = i65;
                                                i47 = i17;
                                                i43 = -1;
                                                obj2 = obj;
                                            }
                                            i45 = i15;
                                            iZze = iZzg;
                                        }
                                        break;
                                    case 25:
                                    case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                                        i18 = i9;
                                        i21 = i13;
                                        unsafe3 = unsafe2;
                                        i15 = iZzs;
                                        i22 = i55;
                                        i23 = i54;
                                        zzaclVar3 = zzaclVar;
                                        if (i52 == 2) {
                                            zzacn zzacnVar = (zzacn) zzaedVar;
                                            iZzh = zzacm.zzh(bArr, i23, zzaclVar3);
                                            int i71 = zzaclVar3.zza + iZzh;
                                            while (iZzh < i71) {
                                                iZzh = zzacm.zzk(bArr, iZzh, zzaclVar3);
                                                zzacnVar.zze(zzaclVar3.zzb != 0);
                                            }
                                            if (iZzh != i71) {
                                                throw new zzaeg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                            i19 = i22;
                                            i20 = i23;
                                            iZzg = iZzh;
                                            i13 = i21;
                                            if (iZzg == i20) {
                                                obj2 = obj;
                                                i11 = i10;
                                                i16 = iZzg;
                                                zzaclVar2 = zzaclVar3;
                                                unsafe2 = unsafe3;
                                                i14 = i19;
                                                i48 = i65;
                                                i47 = i17;
                                            } else {
                                                i10 = i10;
                                                i44 = i13;
                                                i9 = i18;
                                                zzaclVar8 = zzaclVar3;
                                                unsafe5 = unsafe3;
                                                i46 = i19;
                                                i48 = i65;
                                                i47 = i17;
                                                i43 = -1;
                                                obj2 = obj;
                                            }
                                            i45 = i15;
                                            iZze = iZzg;
                                        } else {
                                            if (i52 == 0) {
                                                zzacn zzacnVar2 = (zzacn) zzaedVar;
                                                iZzf = zzacm.zzk(bArr, i23, zzaclVar3);
                                                zzacnVar2.zze(zzaclVar3.zzb != 0);
                                                while (iZzf < i18) {
                                                    int iZzh9 = zzacm.zzh(bArr, iZzf, zzaclVar3);
                                                    if (i22 != zzaclVar3.zza) {
                                                        i19 = i22;
                                                        iZzg = iZzf;
                                                        i20 = i23;
                                                        i13 = i21;
                                                        if (iZzg == i20) {
                                                            obj2 = obj;
                                                            i11 = i10;
                                                            i16 = iZzg;
                                                            zzaclVar2 = zzaclVar3;
                                                            unsafe2 = unsafe3;
                                                            i14 = i19;
                                                            i48 = i65;
                                                            i47 = i17;
                                                        } else {
                                                            i10 = i10;
                                                            i44 = i13;
                                                            i9 = i18;
                                                            zzaclVar8 = zzaclVar3;
                                                            unsafe5 = unsafe3;
                                                            i46 = i19;
                                                            i48 = i65;
                                                            i47 = i17;
                                                            i43 = -1;
                                                            obj2 = obj;
                                                        }
                                                        i45 = i15;
                                                        iZze = iZzg;
                                                    } else {
                                                        iZzf = zzacm.zzk(bArr, iZzh9, zzaclVar3);
                                                        zzacnVar2.zze(zzaclVar3.zzb != 0);
                                                    }
                                                    break;
                                                }
                                                i19 = i22;
                                                iZzg = iZzf;
                                                i20 = i23;
                                                i13 = i21;
                                                if (iZzg == i20) {
                                                    obj2 = obj;
                                                    i11 = i10;
                                                    i16 = iZzg;
                                                    zzaclVar2 = zzaclVar3;
                                                    unsafe2 = unsafe3;
                                                    i14 = i19;
                                                    i48 = i65;
                                                    i47 = i17;
                                                } else {
                                                    i10 = i10;
                                                    i44 = i13;
                                                    i9 = i18;
                                                    zzaclVar8 = zzaclVar3;
                                                    unsafe5 = unsafe3;
                                                    i46 = i19;
                                                    i48 = i65;
                                                    i47 = i17;
                                                    i43 = -1;
                                                    obj2 = obj;
                                                }
                                                i45 = i15;
                                                iZze = iZzg;
                                            }
                                            i19 = i22;
                                            i20 = i23;
                                            i13 = i21;
                                            iZzg = i20;
                                            if (iZzg == i20) {
                                                obj2 = obj;
                                                i11 = i10;
                                                i16 = iZzg;
                                                zzaclVar2 = zzaclVar3;
                                                unsafe2 = unsafe3;
                                                i14 = i19;
                                                i48 = i65;
                                                i47 = i17;
                                            } else {
                                                i10 = i10;
                                                i44 = i13;
                                                i9 = i18;
                                                zzaclVar8 = zzaclVar3;
                                                unsafe5 = unsafe3;
                                                i46 = i19;
                                                i48 = i65;
                                                i47 = i17;
                                                i43 = -1;
                                                obj2 = obj;
                                            }
                                            i45 = i15;
                                            iZze = iZzg;
                                        }
                                        break;
                                    case Service.BILLING_FIELD_NUMBER /* 26 */:
                                        i18 = i9;
                                        i21 = i13;
                                        unsafe2 = unsafe2;
                                        i15 = iZzs;
                                        i23 = i54;
                                        zzaclVar3 = zzaclVar;
                                        if (i52 != 2) {
                                            i19 = i55;
                                            unsafe3 = unsafe2;
                                            i20 = i23;
                                            i13 = i21;
                                            iZzg = i20;
                                        } else if ((j9 & 536870912) == 0) {
                                            int iZzh10 = zzacm.zzh(bArr, i23, zzaclVar3);
                                            int i72 = zzaclVar3.zza;
                                            if (i72 < 0) {
                                                throw new zzaeg("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                            }
                                            if (i72 == 0) {
                                                zzaedVar.add(HttpUrl.FRAGMENT_ENCODE_SET);
                                            } else {
                                                zzaedVar.add(new String(bArr, iZzh10, i72, zzaee.zza));
                                                iZzh10 += i72;
                                            }
                                            while (iZzh10 < i18) {
                                                int iZzh11 = zzacm.zzh(bArr, iZzh10, zzaclVar3);
                                                if (i55 == zzaclVar3.zza) {
                                                    iZzh10 = zzacm.zzh(bArr, iZzh11, zzaclVar3);
                                                    int i73 = zzaclVar3.zza;
                                                    if (i73 < 0) {
                                                        throw new zzaeg("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                    }
                                                    if (i73 == 0) {
                                                        zzaedVar.add(HttpUrl.FRAGMENT_ENCODE_SET);
                                                    } else {
                                                        zzaedVar.add(new String(bArr, iZzh10, i73, zzaee.zza));
                                                        iZzh10 += i73;
                                                    }
                                                } else {
                                                    i19 = i55;
                                                    unsafe3 = unsafe2;
                                                    i20 = i23;
                                                    i13 = i21;
                                                    iZzg = iZzh10;
                                                }
                                            }
                                            i19 = i55;
                                            unsafe3 = unsafe2;
                                            i20 = i23;
                                            i13 = i21;
                                            iZzg = iZzh10;
                                        } else {
                                            int iZzh12 = zzacm.zzh(bArr, i23, zzaclVar3);
                                            int i74 = zzaclVar3.zza;
                                            if (i74 < 0) {
                                                throw new zzaeg("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                            }
                                            if (i74 == 0) {
                                                zzaedVar.add(HttpUrl.FRAGMENT_ENCODE_SET);
                                            } else {
                                                int i75 = iZzh12 + i74;
                                                if (!zzagr.zze(bArr, iZzh12, i75)) {
                                                    throw new zzaeg(str);
                                                }
                                                zzaedVar.add(new String(bArr, iZzh12, i74, zzaee.zza));
                                                iZzh12 = i75;
                                            }
                                            while (iZzh12 < i18) {
                                                int iZzh13 = zzacm.zzh(bArr, iZzh12, zzaclVar3);
                                                if (i55 == zzaclVar3.zza) {
                                                    iZzh12 = zzacm.zzh(bArr, iZzh13, zzaclVar3);
                                                    int i76 = zzaclVar3.zza;
                                                    if (i76 < 0) {
                                                        throw new zzaeg("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                    }
                                                    if (i76 == 0) {
                                                        zzaedVar.add(HttpUrl.FRAGMENT_ENCODE_SET);
                                                    } else {
                                                        int i77 = iZzh12 + i76;
                                                        if (!zzagr.zze(bArr, iZzh12, i77)) {
                                                            throw new zzaeg(str);
                                                        }
                                                        zzaedVar.add(new String(bArr, iZzh12, i76, zzaee.zza));
                                                        iZzh12 = i77;
                                                    }
                                                } else {
                                                    i19 = i55;
                                                    i20 = i23;
                                                    i13 = i21;
                                                    iZzg = iZzh12;
                                                    unsafe3 = unsafe2;
                                                }
                                            }
                                            i19 = i55;
                                            i20 = i23;
                                            i13 = i21;
                                            iZzg = iZzh12;
                                            unsafe3 = unsafe2;
                                        }
                                        if (iZzg == i20) {
                                            obj2 = obj;
                                            i11 = i10;
                                            i16 = iZzg;
                                            zzaclVar2 = zzaclVar3;
                                            unsafe2 = unsafe3;
                                            i14 = i19;
                                            i48 = i65;
                                            i47 = i17;
                                        } else {
                                            i10 = i10;
                                            i44 = i13;
                                            i9 = i18;
                                            zzaclVar8 = zzaclVar3;
                                            unsafe5 = unsafe3;
                                            i46 = i19;
                                            i48 = i65;
                                            i47 = i17;
                                            i43 = -1;
                                            obj2 = obj;
                                        }
                                        i45 = i15;
                                        iZze = iZzg;
                                        break;
                                    case 27:
                                        i18 = i9;
                                        zzaclVar4 = zzaclVar;
                                        i24 = iZzs;
                                        i19 = i55;
                                        if (i52 == 2) {
                                            i21 = i13;
                                            int iZze2 = zzacm.zze(zzafeVar.zzx(i24), i19, bArr, i54, i9, zzaedVar, zzaclVar);
                                            i19 = i19;
                                            unsafe3 = unsafe2;
                                            i20 = i54;
                                            zzaclVar3 = zzaclVar;
                                            iZzg = iZze2;
                                            i15 = i24;
                                            i13 = i21;
                                            if (iZzg == i20) {
                                                obj2 = obj;
                                                i11 = i10;
                                                i16 = iZzg;
                                                zzaclVar2 = zzaclVar3;
                                                unsafe2 = unsafe3;
                                                i14 = i19;
                                                i48 = i65;
                                                i47 = i17;
                                            } else {
                                                i10 = i10;
                                                i44 = i13;
                                                i9 = i18;
                                                zzaclVar8 = zzaclVar3;
                                                unsafe5 = unsafe3;
                                                i46 = i19;
                                                i48 = i65;
                                                i47 = i17;
                                                i43 = -1;
                                                obj2 = obj;
                                            }
                                            i45 = i15;
                                            iZze = iZzg;
                                        }
                                        i13 = i13;
                                        i15 = i24;
                                        i20 = i54;
                                        zzaclVar3 = zzaclVar4;
                                        unsafe3 = unsafe2;
                                        iZzg = i20;
                                        if (iZzg == i20) {
                                            obj2 = obj;
                                            i11 = i10;
                                            i16 = iZzg;
                                            zzaclVar2 = zzaclVar3;
                                            unsafe2 = unsafe3;
                                            i14 = i19;
                                            i48 = i65;
                                            i47 = i17;
                                        } else {
                                            i10 = i10;
                                            i44 = i13;
                                            i9 = i18;
                                            zzaclVar8 = zzaclVar3;
                                            unsafe5 = unsafe3;
                                            i46 = i19;
                                            i48 = i65;
                                            i47 = i17;
                                            i43 = -1;
                                            obj2 = obj;
                                        }
                                        i45 = i15;
                                        iZze = iZzg;
                                        break;
                                    case Service.MONITORING_FIELD_NUMBER /* 28 */:
                                        i18 = i9;
                                        zzaclVar4 = zzaclVar;
                                        i24 = iZzs;
                                        i19 = i55;
                                        if (i52 == 2) {
                                            iZzg = zzacm.zzh(bArr, i54, zzaclVar4);
                                            int i78 = zzaclVar4.zza;
                                            if (i78 < 0) {
                                                throw new zzaeg("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                            }
                                            if (i78 > bArr.length - iZzg) {
                                                throw new zzaeg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                            if (i78 == 0) {
                                                zzaedVar.add(zzacw.zzb);
                                            } else {
                                                zzaedVar.add(zzacw.zzp(bArr, iZzg, i78));
                                                iZzg += i78;
                                            }
                                            while (iZzg < i18) {
                                                int iZzh14 = zzacm.zzh(bArr, iZzg, zzaclVar4);
                                                if (i19 != zzaclVar4.zza) {
                                                    i15 = i24;
                                                    i20 = i54;
                                                    zzaclVar3 = zzaclVar4;
                                                    unsafe3 = unsafe2;
                                                    if (iZzg == i20) {
                                                        obj2 = obj;
                                                        i11 = i10;
                                                        i16 = iZzg;
                                                        zzaclVar2 = zzaclVar3;
                                                        unsafe2 = unsafe3;
                                                        i14 = i19;
                                                        i48 = i65;
                                                        i47 = i17;
                                                    } else {
                                                        i10 = i10;
                                                        i44 = i13;
                                                        i9 = i18;
                                                        zzaclVar8 = zzaclVar3;
                                                        unsafe5 = unsafe3;
                                                        i46 = i19;
                                                        i48 = i65;
                                                        i47 = i17;
                                                        i43 = -1;
                                                        obj2 = obj;
                                                    }
                                                    i45 = i15;
                                                    iZze = iZzg;
                                                    break;
                                                } else {
                                                    iZzg = zzacm.zzh(bArr, iZzh14, zzaclVar4);
                                                    int i79 = zzaclVar4.zza;
                                                    if (i79 < 0) {
                                                        throw new zzaeg("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                    }
                                                    if (i79 > bArr.length - iZzg) {
                                                        throw new zzaeg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                                    }
                                                    if (i79 == 0) {
                                                        zzaedVar.add(zzacw.zzb);
                                                    } else {
                                                        zzaedVar.add(zzacw.zzp(bArr, iZzg, i79));
                                                        iZzg += i79;
                                                    }
                                                }
                                            }
                                            i15 = i24;
                                            i20 = i54;
                                            zzaclVar3 = zzaclVar4;
                                            unsafe3 = unsafe2;
                                            if (iZzg == i20) {
                                                obj2 = obj;
                                                i11 = i10;
                                                i16 = iZzg;
                                                zzaclVar2 = zzaclVar3;
                                                unsafe2 = unsafe3;
                                                i14 = i19;
                                                i48 = i65;
                                                i47 = i17;
                                            } else {
                                                i10 = i10;
                                                i44 = i13;
                                                i9 = i18;
                                                zzaclVar8 = zzaclVar3;
                                                unsafe5 = unsafe3;
                                                i46 = i19;
                                                i48 = i65;
                                                i47 = i17;
                                                i43 = -1;
                                                obj2 = obj;
                                            }
                                            i45 = i15;
                                            iZze = iZzg;
                                        }
                                        i13 = i13;
                                        i15 = i24;
                                        i20 = i54;
                                        zzaclVar3 = zzaclVar4;
                                        unsafe3 = unsafe2;
                                        iZzg = i20;
                                        if (iZzg == i20) {
                                            obj2 = obj;
                                            i11 = i10;
                                            i16 = iZzg;
                                            zzaclVar2 = zzaclVar3;
                                            unsafe2 = unsafe3;
                                            i14 = i19;
                                            i48 = i65;
                                            i47 = i17;
                                        } else {
                                            i10 = i10;
                                            i44 = i13;
                                            i9 = i18;
                                            zzaclVar8 = zzaclVar3;
                                            unsafe5 = unsafe3;
                                            i46 = i19;
                                            i48 = i65;
                                            i47 = i17;
                                            i43 = -1;
                                            obj2 = obj;
                                        }
                                        i45 = i15;
                                        iZze = iZzg;
                                        break;
                                    case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                                    case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                                        i18 = i9;
                                        zzaclVar4 = zzaclVar;
                                        i24 = iZzs;
                                        i19 = i55;
                                        if (i52 != 2) {
                                            if (i52 == 0) {
                                                iZzj = zzacm.zzj(i19, bArr, i54, i9, zzaedVar, zzaclVar);
                                            }
                                            i13 = i13;
                                            i15 = i24;
                                            i20 = i54;
                                            zzaclVar3 = zzaclVar4;
                                            unsafe3 = unsafe2;
                                            iZzg = i20;
                                            if (iZzg == i20) {
                                                obj2 = obj;
                                                i11 = i10;
                                                i16 = iZzg;
                                                zzaclVar2 = zzaclVar3;
                                                unsafe2 = unsafe3;
                                                i14 = i19;
                                                i48 = i65;
                                                i47 = i17;
                                            } else {
                                                i10 = i10;
                                                i44 = i13;
                                                i9 = i18;
                                                zzaclVar8 = zzaclVar3;
                                                unsafe5 = unsafe3;
                                                i46 = i19;
                                                i48 = i65;
                                                i47 = i17;
                                                i43 = -1;
                                                obj2 = obj;
                                            }
                                            i45 = i15;
                                            iZze = iZzg;
                                        } else {
                                            iZzj = zzacm.zzf(bArr, i54, zzaedVar, zzaclVar4);
                                        }
                                        int i80 = iZzj;
                                        zzafv.zzn(obj, i13, zzaedVar, zzafeVar.zzw(i24), null, zzafeVar.zzm);
                                        iZzg = i80;
                                        i15 = i24;
                                        i20 = i54;
                                        zzaclVar3 = zzaclVar4;
                                        unsafe3 = unsafe2;
                                        if (iZzg == i20) {
                                            obj2 = obj;
                                            i11 = i10;
                                            i16 = iZzg;
                                            zzaclVar2 = zzaclVar3;
                                            unsafe2 = unsafe3;
                                            i14 = i19;
                                            i48 = i65;
                                            i47 = i17;
                                        } else {
                                            i10 = i10;
                                            i44 = i13;
                                            i9 = i18;
                                            zzaclVar8 = zzaclVar3;
                                            unsafe5 = unsafe3;
                                            i46 = i19;
                                            i48 = i65;
                                            i47 = i17;
                                            i43 = -1;
                                            obj2 = obj;
                                        }
                                        i45 = i15;
                                        iZze = iZzg;
                                        break;
                                    case 33:
                                    case 47:
                                        i18 = i9;
                                        zzaclVar4 = zzaclVar;
                                        i24 = iZzs;
                                        i19 = i55;
                                        if (i52 != 2) {
                                            if (i52 == 0) {
                                                zzadz zzadzVar3 = (zzadz) zzaedVar;
                                                iZzg = zzacm.zzh(bArr, i54, zzaclVar4);
                                                zzadzVar3.zzg(zzada.zzC(zzaclVar4.zza));
                                                while (iZzg < i18) {
                                                    int iZzh15 = zzacm.zzh(bArr, iZzg, zzaclVar4);
                                                    if (i19 == zzaclVar4.zza) {
                                                        iZzg = zzacm.zzh(bArr, iZzh15, zzaclVar4);
                                                        zzadzVar3.zzg(zzada.zzC(zzaclVar4.zza));
                                                    }
                                                }
                                            }
                                            i13 = i13;
                                            i15 = i24;
                                            i20 = i54;
                                            zzaclVar3 = zzaclVar4;
                                            unsafe3 = unsafe2;
                                            iZzg = i20;
                                            if (iZzg == i20) {
                                                obj2 = obj;
                                                i11 = i10;
                                                i16 = iZzg;
                                                zzaclVar2 = zzaclVar3;
                                                unsafe2 = unsafe3;
                                                i14 = i19;
                                                i48 = i65;
                                                i47 = i17;
                                            } else {
                                                i10 = i10;
                                                i44 = i13;
                                                i9 = i18;
                                                zzaclVar8 = zzaclVar3;
                                                unsafe5 = unsafe3;
                                                i46 = i19;
                                                i48 = i65;
                                                i47 = i17;
                                                i43 = -1;
                                                obj2 = obj;
                                            }
                                            i45 = i15;
                                            iZze = iZzg;
                                        } else {
                                            zzadz zzadzVar4 = (zzadz) zzaedVar;
                                            iZzg = zzacm.zzh(bArr, i54, zzaclVar4);
                                            int i81 = zzaclVar4.zza + iZzg;
                                            while (iZzg < i81) {
                                                iZzg = zzacm.zzh(bArr, iZzg, zzaclVar4);
                                                zzadzVar4.zzg(zzada.zzC(zzaclVar4.zza));
                                            }
                                            if (iZzg != i81) {
                                                throw new zzaeg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                        }
                                        i15 = i24;
                                        i20 = i54;
                                        zzaclVar3 = zzaclVar4;
                                        unsafe3 = unsafe2;
                                        if (iZzg == i20) {
                                            obj2 = obj;
                                            i11 = i10;
                                            i16 = iZzg;
                                            zzaclVar2 = zzaclVar3;
                                            unsafe2 = unsafe3;
                                            i14 = i19;
                                            i48 = i65;
                                            i47 = i17;
                                        } else {
                                            i10 = i10;
                                            i44 = i13;
                                            i9 = i18;
                                            zzaclVar8 = zzaclVar3;
                                            unsafe5 = unsafe3;
                                            i46 = i19;
                                            i48 = i65;
                                            i47 = i17;
                                            i43 = -1;
                                            obj2 = obj;
                                        }
                                        i45 = i15;
                                        iZze = iZzg;
                                        break;
                                    case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                                    case 48:
                                        i18 = i9;
                                        zzaclVar4 = zzaclVar;
                                        i24 = iZzs;
                                        i19 = i55;
                                        if (i52 != 2) {
                                            if (i52 == 0) {
                                                zzaeq zzaeqVar5 = (zzaeq) zzaedVar;
                                                iZzg = zzacm.zzk(bArr, i54, zzaclVar4);
                                                zzaeqVar5.zzf(zzada.zzD(zzaclVar4.zzb));
                                                while (iZzg < i18) {
                                                    int iZzh16 = zzacm.zzh(bArr, iZzg, zzaclVar4);
                                                    if (i19 == zzaclVar4.zza) {
                                                        iZzg = zzacm.zzk(bArr, iZzh16, zzaclVar4);
                                                        zzaeqVar5.zzf(zzada.zzD(zzaclVar4.zzb));
                                                    }
                                                }
                                            }
                                            i13 = i13;
                                            i15 = i24;
                                            i20 = i54;
                                            zzaclVar3 = zzaclVar4;
                                            unsafe3 = unsafe2;
                                            iZzg = i20;
                                            if (iZzg == i20) {
                                                obj2 = obj;
                                                i11 = i10;
                                                i16 = iZzg;
                                                zzaclVar2 = zzaclVar3;
                                                unsafe2 = unsafe3;
                                                i14 = i19;
                                                i48 = i65;
                                                i47 = i17;
                                            } else {
                                                i10 = i10;
                                                i44 = i13;
                                                i9 = i18;
                                                zzaclVar8 = zzaclVar3;
                                                unsafe5 = unsafe3;
                                                i46 = i19;
                                                i48 = i65;
                                                i47 = i17;
                                                i43 = -1;
                                                obj2 = obj;
                                            }
                                            i45 = i15;
                                            iZze = iZzg;
                                        } else {
                                            zzaeq zzaeqVar6 = (zzaeq) zzaedVar;
                                            iZzg = zzacm.zzh(bArr, i54, zzaclVar4);
                                            int i82 = zzaclVar4.zza + iZzg;
                                            while (iZzg < i82) {
                                                iZzg = zzacm.zzk(bArr, iZzg, zzaclVar4);
                                                zzaeqVar6.zzf(zzada.zzD(zzaclVar4.zzb));
                                            }
                                            if (iZzg != i82) {
                                                throw new zzaeg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                        }
                                        i15 = i24;
                                        i20 = i54;
                                        zzaclVar3 = zzaclVar4;
                                        unsafe3 = unsafe2;
                                        if (iZzg == i20) {
                                            obj2 = obj;
                                            i11 = i10;
                                            i16 = iZzg;
                                            zzaclVar2 = zzaclVar3;
                                            unsafe2 = unsafe3;
                                            i14 = i19;
                                            i48 = i65;
                                            i47 = i17;
                                        } else {
                                            i10 = i10;
                                            i44 = i13;
                                            i9 = i18;
                                            zzaclVar8 = zzaclVar3;
                                            unsafe5 = unsafe3;
                                            i46 = i19;
                                            i48 = i65;
                                            i47 = i17;
                                            i43 = -1;
                                            obj2 = obj;
                                        }
                                        i45 = i15;
                                        iZze = iZzg;
                                        break;
                                    default:
                                        if (i52 == 3) {
                                            int i83 = (i55 & (-8)) | 4;
                                            zzaft zzaftVarZzx = zzafeVar.zzx(iZzs);
                                            i24 = iZzs;
                                            i19 = i55;
                                            i18 = i9;
                                            zzacl zzaclVar10 = zzaclVar;
                                            iZzg = zzacm.zzc(zzaftVarZzx, bArr, i54, i9, i83, zzaclVar10);
                                            zzaedVar.add(zzaclVar10.zzc);
                                            while (iZzg < i18) {
                                                int iZzh17 = zzacm.zzh(bArr, iZzg, zzaclVar10);
                                                if (i19 != zzaclVar10.zza) {
                                                    zzaclVar4 = zzaclVar10;
                                                    i15 = i24;
                                                    i20 = i54;
                                                    zzaclVar3 = zzaclVar4;
                                                    unsafe3 = unsafe2;
                                                    if (iZzg == i20) {
                                                        obj2 = obj;
                                                        i11 = i10;
                                                        i16 = iZzg;
                                                        zzaclVar2 = zzaclVar3;
                                                        unsafe2 = unsafe3;
                                                        i14 = i19;
                                                        i48 = i65;
                                                        i47 = i17;
                                                    } else {
                                                        i10 = i10;
                                                        i44 = i13;
                                                        i9 = i18;
                                                        zzaclVar8 = zzaclVar3;
                                                        unsafe5 = unsafe3;
                                                        i46 = i19;
                                                        i48 = i65;
                                                        i47 = i17;
                                                        i43 = -1;
                                                        obj2 = obj;
                                                    }
                                                    i45 = i15;
                                                    iZze = iZzg;
                                                } else {
                                                    zzaft zzaftVar = zzaftVarZzx;
                                                    zzaft zzaftVar2 = zzaftVarZzx;
                                                    zzacl zzaclVar11 = zzaclVar10;
                                                    iZzg = zzacm.zzc(zzaftVar, bArr, iZzh17, i9, i83, zzaclVar);
                                                    zzaedVar.add(zzaclVar11.zzc);
                                                    zzaclVar10 = zzaclVar11;
                                                    zzaftVarZzx = zzaftVar2;
                                                }
                                                break;
                                            }
                                            zzaclVar4 = zzaclVar10;
                                            i15 = i24;
                                            i20 = i54;
                                            zzaclVar3 = zzaclVar4;
                                            unsafe3 = unsafe2;
                                            if (iZzg == i20) {
                                                obj2 = obj;
                                                i11 = i10;
                                                i16 = iZzg;
                                                zzaclVar2 = zzaclVar3;
                                                unsafe2 = unsafe3;
                                                i14 = i19;
                                                i48 = i65;
                                                i47 = i17;
                                            } else {
                                                i10 = i10;
                                                i44 = i13;
                                                i9 = i18;
                                                zzaclVar8 = zzaclVar3;
                                                unsafe5 = unsafe3;
                                                i46 = i19;
                                                i48 = i65;
                                                i47 = i17;
                                                i43 = -1;
                                                obj2 = obj;
                                            }
                                            i45 = i15;
                                            iZze = iZzg;
                                        } else {
                                            i18 = i9;
                                            i19 = i55;
                                            i13 = i13;
                                            i20 = i54;
                                            unsafe3 = unsafe2;
                                            zzaclVar3 = zzaclVar;
                                            i15 = iZzs;
                                            iZzg = i20;
                                            if (iZzg == i20) {
                                                obj2 = obj;
                                                i11 = i10;
                                                i16 = iZzg;
                                                zzaclVar2 = zzaclVar3;
                                                unsafe2 = unsafe3;
                                                i14 = i19;
                                                i48 = i65;
                                                i47 = i17;
                                            } else {
                                                i10 = i10;
                                                i44 = i13;
                                                i9 = i18;
                                                zzaclVar8 = zzaclVar3;
                                                unsafe5 = unsafe3;
                                                i46 = i19;
                                                i48 = i65;
                                                i47 = i17;
                                                i43 = -1;
                                                obj2 = obj;
                                            }
                                            i45 = i15;
                                            iZze = iZzg;
                                        }
                                        break;
                                }
                            } else {
                                i13 = i13;
                                i15 = iZzs;
                                i25 = i55;
                                i26 = i54;
                                zzaclVar5 = zzaclVar9;
                                if (iZzt != 50) {
                                    obj2 = obj;
                                    Unsafe unsafe12 = zzb;
                                    long j10 = iArr[i15 + 2] & 1048575;
                                    switch (iZzt) {
                                        case 51:
                                            i14 = i25;
                                            i27 = i15;
                                            i28 = i26;
                                            zzafeVar = this;
                                            zzaclVar2 = zzaclVar;
                                            if (i52 == 1) {
                                                iZzk = i28 + 8;
                                                unsafe12.putObject(obj2, j8, Double.valueOf(Double.longBitsToDouble(zzacm.zzn(bArr, i28))));
                                                unsafe12.putInt(obj2, j10, i13);
                                            } else {
                                                iZzk = i28;
                                            }
                                            if (iZzk == i28) {
                                                i44 = i13;
                                                iZze = iZzk;
                                                zzaclVar8 = zzaclVar2;
                                                i46 = i14;
                                                i48 = i65;
                                                i47 = i17;
                                                unsafe5 = unsafe2;
                                                i45 = i27;
                                                i43 = -1;
                                                i10 = i10;
                                            } else {
                                                i11 = i10;
                                                i16 = iZzk;
                                                i48 = i65;
                                                i47 = i17;
                                                i15 = i27;
                                            }
                                            break;
                                        case 52:
                                            i14 = i25;
                                            i27 = i15;
                                            i28 = i26;
                                            zzafeVar = this;
                                            zzaclVar2 = zzaclVar;
                                            if (i52 == 5) {
                                                iZzk = i28 + 4;
                                                unsafe12.putObject(obj2, j8, Float.valueOf(Float.intBitsToFloat(zzacm.zzb(bArr, i28))));
                                                unsafe12.putInt(obj2, j10, i13);
                                            } else {
                                                iZzk = i28;
                                            }
                                            if (iZzk == i28) {
                                                i44 = i13;
                                                iZze = iZzk;
                                                zzaclVar8 = zzaclVar2;
                                                i46 = i14;
                                                i48 = i65;
                                                i47 = i17;
                                                unsafe5 = unsafe2;
                                                i45 = i27;
                                                i43 = -1;
                                                i10 = i10;
                                            } else {
                                                i11 = i10;
                                                i16 = iZzk;
                                                i48 = i65;
                                                i47 = i17;
                                                i15 = i27;
                                            }
                                            break;
                                        case 53:
                                        case 54:
                                            i14 = i25;
                                            i27 = i15;
                                            i28 = i26;
                                            zzafeVar = this;
                                            zzaclVar2 = zzaclVar;
                                            if (i52 == 0) {
                                                iZzk = zzacm.zzk(bArr, i28, zzaclVar2);
                                                unsafe12.putObject(obj2, j8, Long.valueOf(zzaclVar2.zzb));
                                                unsafe12.putInt(obj2, j10, i13);
                                            } else {
                                                iZzk = i28;
                                            }
                                            if (iZzk == i28) {
                                                i44 = i13;
                                                iZze = iZzk;
                                                zzaclVar8 = zzaclVar2;
                                                i46 = i14;
                                                i48 = i65;
                                                i47 = i17;
                                                unsafe5 = unsafe2;
                                                i45 = i27;
                                                i43 = -1;
                                                i10 = i10;
                                            } else {
                                                i11 = i10;
                                                i16 = iZzk;
                                                i48 = i65;
                                                i47 = i17;
                                                i15 = i27;
                                            }
                                            break;
                                        case 55:
                                        case 62:
                                            i14 = i25;
                                            i27 = i15;
                                            i28 = i26;
                                            zzafeVar = this;
                                            zzaclVar2 = zzaclVar;
                                            if (i52 == 0) {
                                                iZzk = zzacm.zzh(bArr, i28, zzaclVar2);
                                                unsafe12.putObject(obj2, j8, Integer.valueOf(zzaclVar2.zza));
                                                unsafe12.putInt(obj2, j10, i13);
                                            } else {
                                                iZzk = i28;
                                            }
                                            if (iZzk == i28) {
                                                i44 = i13;
                                                iZze = iZzk;
                                                zzaclVar8 = zzaclVar2;
                                                i46 = i14;
                                                i48 = i65;
                                                i47 = i17;
                                                unsafe5 = unsafe2;
                                                i45 = i27;
                                                i43 = -1;
                                                i10 = i10;
                                            } else {
                                                i11 = i10;
                                                i16 = iZzk;
                                                i48 = i65;
                                                i47 = i17;
                                                i15 = i27;
                                            }
                                            break;
                                        case 56:
                                        case 65:
                                            i14 = i25;
                                            i27 = i15;
                                            i28 = i26;
                                            zzafeVar = this;
                                            zzaclVar2 = zzaclVar;
                                            if (i52 == 1) {
                                                iZzk = i28 + 8;
                                                unsafe12.putObject(obj2, j8, Long.valueOf(zzacm.zzn(bArr, i28)));
                                                unsafe12.putInt(obj2, j10, i13);
                                            } else {
                                                iZzk = i28;
                                            }
                                            if (iZzk == i28) {
                                                i44 = i13;
                                                iZze = iZzk;
                                                zzaclVar8 = zzaclVar2;
                                                i46 = i14;
                                                i48 = i65;
                                                i47 = i17;
                                                unsafe5 = unsafe2;
                                                i45 = i27;
                                                i43 = -1;
                                                i10 = i10;
                                            } else {
                                                i11 = i10;
                                                i16 = iZzk;
                                                i48 = i65;
                                                i47 = i17;
                                                i15 = i27;
                                            }
                                            break;
                                        case 57:
                                        case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                                            i14 = i25;
                                            i27 = i15;
                                            i28 = i26;
                                            zzafeVar = this;
                                            zzaclVar2 = zzaclVar;
                                            if (i52 == 5) {
                                                iZzk = i28 + 4;
                                                unsafe12.putObject(obj2, j8, Integer.valueOf(zzacm.zzb(bArr, i28)));
                                                unsafe12.putInt(obj2, j10, i13);
                                            } else {
                                                iZzk = i28;
                                            }
                                            if (iZzk == i28) {
                                                i44 = i13;
                                                iZze = iZzk;
                                                zzaclVar8 = zzaclVar2;
                                                i46 = i14;
                                                i48 = i65;
                                                i47 = i17;
                                                unsafe5 = unsafe2;
                                                i45 = i27;
                                                i43 = -1;
                                                i10 = i10;
                                            } else {
                                                i11 = i10;
                                                i16 = iZzk;
                                                i48 = i65;
                                                i47 = i17;
                                                i15 = i27;
                                            }
                                            break;
                                        case 58:
                                            i14 = i25;
                                            zzafeVar = this;
                                            zzaclVar2 = zzaclVar;
                                            i29 = i15;
                                            i28 = i26;
                                            if (i52 == 0) {
                                                iZzk = zzacm.zzk(bArr, i28, zzaclVar2);
                                                i27 = i29;
                                                unsafe12.putObject(obj2, j8, Boolean.valueOf(zzaclVar2.zzb != 0));
                                                unsafe12.putInt(obj2, j10, i13);
                                            } else {
                                                i27 = i29;
                                                iZzk = i28;
                                            }
                                            if (iZzk == i28) {
                                                i44 = i13;
                                                iZze = iZzk;
                                                zzaclVar8 = zzaclVar2;
                                                i46 = i14;
                                                i48 = i65;
                                                i47 = i17;
                                                unsafe5 = unsafe2;
                                                i45 = i27;
                                                i43 = -1;
                                                i10 = i10;
                                            } else {
                                                i11 = i10;
                                                i16 = iZzk;
                                                i48 = i65;
                                                i47 = i17;
                                                i15 = i27;
                                            }
                                            break;
                                        case 59:
                                            i14 = i25;
                                            unsafe2 = unsafe2;
                                            zzafeVar = this;
                                            zzaclVar2 = zzaclVar;
                                            i29 = i15;
                                            i28 = i26;
                                            if (i52 == 2) {
                                                int iZzh18 = zzacm.zzh(bArr, i28, zzaclVar2);
                                                int i84 = zzaclVar2.zza;
                                                if (i84 == 0) {
                                                    unsafe12.putObject(obj2, j8, HttpUrl.FRAGMENT_ENCODE_SET);
                                                } else {
                                                    int i85 = iZzh18 + i84;
                                                    if ((i53 & 536870912) != 0 && !zzagr.zze(bArr, iZzh18, i85)) {
                                                        throw new zzaeg("Protocol message had invalid UTF-8.");
                                                    }
                                                    unsafe12.putObject(obj2, j8, new String(bArr, iZzh18, i84, zzaee.zza));
                                                    iZzh18 = i85;
                                                }
                                                unsafe12.putInt(obj2, j10, i13);
                                                iZzk = iZzh18;
                                                i27 = i29;
                                                if (iZzk == i28) {
                                                    i44 = i13;
                                                    iZze = iZzk;
                                                    zzaclVar8 = zzaclVar2;
                                                    i46 = i14;
                                                    i48 = i65;
                                                    i47 = i17;
                                                    unsafe5 = unsafe2;
                                                    i45 = i27;
                                                    i43 = -1;
                                                    i10 = i10;
                                                } else {
                                                    i11 = i10;
                                                    i16 = iZzk;
                                                    i48 = i65;
                                                    i47 = i17;
                                                    i15 = i27;
                                                }
                                            } else {
                                                unsafe2 = unsafe2;
                                                i27 = i29;
                                                iZzk = i28;
                                                if (iZzk == i28) {
                                                    i44 = i13;
                                                    iZze = iZzk;
                                                    zzaclVar8 = zzaclVar2;
                                                    i46 = i14;
                                                    i48 = i65;
                                                    i47 = i17;
                                                    unsafe5 = unsafe2;
                                                    i45 = i27;
                                                    i43 = -1;
                                                    i10 = i10;
                                                } else {
                                                    i11 = i10;
                                                    i16 = iZzk;
                                                    i48 = i65;
                                                    i47 = i17;
                                                    i15 = i27;
                                                }
                                            }
                                            break;
                                        case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                                            zzafeVar = this;
                                            zzaclVar6 = zzaclVar;
                                            i30 = i15;
                                            i28 = i26;
                                            if (i52 == 2) {
                                                Object objZzB = zzafeVar.zzB(obj2, i13, i30);
                                                i14 = i25;
                                                i29 = i30;
                                                int iZzm = zzacm.zzm(objZzB, zzafeVar.zzx(i30), bArr, i28, i9, zzaclVar);
                                                zzafeVar.zzK(obj2, i13, i29, objZzB);
                                                iZzk = iZzm;
                                                i13 = i13;
                                                zzaclVar2 = zzaclVar6;
                                                i27 = i29;
                                                if (iZzk == i28) {
                                                    i44 = i13;
                                                    iZze = iZzk;
                                                    zzaclVar8 = zzaclVar2;
                                                    i46 = i14;
                                                    i48 = i65;
                                                    i47 = i17;
                                                    unsafe5 = unsafe2;
                                                    i45 = i27;
                                                    i43 = -1;
                                                    i10 = i10;
                                                } else {
                                                    i11 = i10;
                                                    i16 = iZzk;
                                                    i48 = i65;
                                                    i47 = i17;
                                                    i15 = i27;
                                                }
                                            }
                                            i14 = i25;
                                            i27 = i30;
                                            zzaclVar2 = zzaclVar6;
                                            iZzk = i28;
                                            if (iZzk == i28) {
                                                i44 = i13;
                                                iZze = iZzk;
                                                zzaclVar8 = zzaclVar2;
                                                i46 = i14;
                                                i48 = i65;
                                                i47 = i17;
                                                unsafe5 = unsafe2;
                                                i45 = i27;
                                                i43 = -1;
                                                i10 = i10;
                                            } else {
                                                i11 = i10;
                                                i16 = iZzk;
                                                i48 = i65;
                                                i47 = i17;
                                                i15 = i27;
                                            }
                                            break;
                                        case 61:
                                            zzaclVar6 = zzaclVar;
                                            zzafeVar = this;
                                            i30 = i15;
                                            i28 = i26;
                                            if (i52 == 2) {
                                                iZza = zzacm.zza(bArr, i28, zzaclVar6);
                                                unsafe12.putObject(obj2, j8, zzaclVar6.zzc);
                                                unsafe12.putInt(obj2, j10, i13);
                                                i14 = i25;
                                                i27 = i30;
                                                zzaclVar2 = zzaclVar6;
                                                iZzk = iZza;
                                                if (iZzk == i28) {
                                                    i44 = i13;
                                                    iZze = iZzk;
                                                    zzaclVar8 = zzaclVar2;
                                                    i46 = i14;
                                                    i48 = i65;
                                                    i47 = i17;
                                                    unsafe5 = unsafe2;
                                                    i45 = i27;
                                                    i43 = -1;
                                                    i10 = i10;
                                                } else {
                                                    i11 = i10;
                                                    i16 = iZzk;
                                                    i48 = i65;
                                                    i47 = i17;
                                                    i15 = i27;
                                                }
                                            }
                                            i14 = i25;
                                            i27 = i30;
                                            zzaclVar2 = zzaclVar6;
                                            iZzk = i28;
                                            if (iZzk == i28) {
                                                i44 = i13;
                                                iZze = iZzk;
                                                zzaclVar8 = zzaclVar2;
                                                i46 = i14;
                                                i48 = i65;
                                                i47 = i17;
                                                unsafe5 = unsafe2;
                                                i45 = i27;
                                                i43 = -1;
                                                i10 = i10;
                                            } else {
                                                i11 = i10;
                                                i16 = iZzk;
                                                i48 = i65;
                                                i47 = i17;
                                                i15 = i27;
                                            }
                                            break;
                                        case 63:
                                            zzaclVar6 = zzaclVar;
                                            zzafeVar = this;
                                            i30 = i15;
                                            i28 = i26;
                                            if (i52 == 0) {
                                                iZza = zzacm.zzh(bArr, i28, zzaclVar6);
                                                int i86 = zzaclVar6.zza;
                                                zzaeb zzaebVarZzw2 = zzafeVar.zzw(i30);
                                                if (zzaebVarZzw2 == null || zzaebVarZzw2.zza(i86)) {
                                                    unsafe12.putObject(obj2, j8, Integer.valueOf(i86));
                                                    unsafe12.putInt(obj2, j10, i13);
                                                } else {
                                                    zzd(obj).zzj(i25, Long.valueOf(i86));
                                                }
                                                i14 = i25;
                                                i27 = i30;
                                                zzaclVar2 = zzaclVar6;
                                                iZzk = iZza;
                                                if (iZzk == i28) {
                                                    i44 = i13;
                                                    iZze = iZzk;
                                                    zzaclVar8 = zzaclVar2;
                                                    i46 = i14;
                                                    i48 = i65;
                                                    i47 = i17;
                                                    unsafe5 = unsafe2;
                                                    i45 = i27;
                                                    i43 = -1;
                                                    i10 = i10;
                                                } else {
                                                    i11 = i10;
                                                    i16 = iZzk;
                                                    i48 = i65;
                                                    i47 = i17;
                                                    i15 = i27;
                                                }
                                            }
                                            i14 = i25;
                                            i27 = i30;
                                            zzaclVar2 = zzaclVar6;
                                            iZzk = i28;
                                            if (iZzk == i28) {
                                                i44 = i13;
                                                iZze = iZzk;
                                                zzaclVar8 = zzaclVar2;
                                                i46 = i14;
                                                i48 = i65;
                                                i47 = i17;
                                                unsafe5 = unsafe2;
                                                i45 = i27;
                                                i43 = -1;
                                                i10 = i10;
                                            } else {
                                                i11 = i10;
                                                i16 = iZzk;
                                                i48 = i65;
                                                i47 = i17;
                                                i15 = i27;
                                            }
                                            break;
                                        case 66:
                                            zzaclVar6 = zzaclVar;
                                            zzafeVar = this;
                                            i30 = i15;
                                            i28 = i26;
                                            if (i52 == 0) {
                                                iZza = zzacm.zzh(bArr, i28, zzaclVar6);
                                                unsafe12.putObject(obj2, j8, Integer.valueOf(zzada.zzC(zzaclVar6.zza)));
                                                unsafe12.putInt(obj2, j10, i13);
                                                i14 = i25;
                                                i27 = i30;
                                                zzaclVar2 = zzaclVar6;
                                                iZzk = iZza;
                                                if (iZzk == i28) {
                                                    i44 = i13;
                                                    iZze = iZzk;
                                                    zzaclVar8 = zzaclVar2;
                                                    i46 = i14;
                                                    i48 = i65;
                                                    i47 = i17;
                                                    unsafe5 = unsafe2;
                                                    i45 = i27;
                                                    i43 = -1;
                                                    i10 = i10;
                                                } else {
                                                    i11 = i10;
                                                    i16 = iZzk;
                                                    i48 = i65;
                                                    i47 = i17;
                                                    i15 = i27;
                                                }
                                            }
                                            i14 = i25;
                                            i27 = i30;
                                            zzaclVar2 = zzaclVar6;
                                            iZzk = i28;
                                            if (iZzk == i28) {
                                                i44 = i13;
                                                iZze = iZzk;
                                                zzaclVar8 = zzaclVar2;
                                                i46 = i14;
                                                i48 = i65;
                                                i47 = i17;
                                                unsafe5 = unsafe2;
                                                i45 = i27;
                                                i43 = -1;
                                                i10 = i10;
                                            } else {
                                                i11 = i10;
                                                i16 = iZzk;
                                                i48 = i65;
                                                i47 = i17;
                                                i15 = i27;
                                            }
                                            break;
                                        case 67:
                                            zzaclVar6 = zzaclVar;
                                            zzafeVar = this;
                                            i30 = i15;
                                            i28 = i26;
                                            if (i52 == 0) {
                                                iZza = zzacm.zzk(bArr, i28, zzaclVar6);
                                                unsafe12.putObject(obj2, j8, Long.valueOf(zzada.zzD(zzaclVar6.zzb)));
                                                unsafe12.putInt(obj2, j10, i13);
                                                i14 = i25;
                                                i27 = i30;
                                                zzaclVar2 = zzaclVar6;
                                                iZzk = iZza;
                                                if (iZzk == i28) {
                                                    i44 = i13;
                                                    iZze = iZzk;
                                                    zzaclVar8 = zzaclVar2;
                                                    i46 = i14;
                                                    i48 = i65;
                                                    i47 = i17;
                                                    unsafe5 = unsafe2;
                                                    i45 = i27;
                                                    i43 = -1;
                                                    i10 = i10;
                                                } else {
                                                    i11 = i10;
                                                    i16 = iZzk;
                                                    i48 = i65;
                                                    i47 = i17;
                                                    i15 = i27;
                                                }
                                            }
                                            i14 = i25;
                                            i27 = i30;
                                            zzaclVar2 = zzaclVar6;
                                            iZzk = i28;
                                            if (iZzk == i28) {
                                                i44 = i13;
                                                iZze = iZzk;
                                                zzaclVar8 = zzaclVar2;
                                                i46 = i14;
                                                i48 = i65;
                                                i47 = i17;
                                                unsafe5 = unsafe2;
                                                i45 = i27;
                                                i43 = -1;
                                                i10 = i10;
                                            } else {
                                                i11 = i10;
                                                i16 = iZzk;
                                                i48 = i65;
                                                i47 = i17;
                                                i15 = i27;
                                            }
                                            break;
                                        case 68:
                                            if (i52 == 3) {
                                                zzafeVar = this;
                                                Object objZzB2 = zzafeVar.zzB(obj2, i13, i15);
                                                int iZzl = zzacm.zzl(objZzB2, zzafeVar.zzx(i15), bArr, i26, i9, (i25 & (-8)) | 4, zzaclVar);
                                                zzafeVar.zzK(obj2, i13, i15, objZzB2);
                                                i14 = i25;
                                                i27 = i15;
                                                zzaclVar2 = zzaclVar;
                                                iZzk = iZzl;
                                                i28 = i26;
                                            }
                                            if (iZzk == i28) {
                                                i11 = i10;
                                                i16 = iZzk;
                                                i48 = i65;
                                                i47 = i17;
                                                i15 = i27;
                                                break;
                                            } else {
                                                i44 = i13;
                                                iZze = iZzk;
                                                zzaclVar8 = zzaclVar2;
                                                i46 = i14;
                                                i48 = i65;
                                                i47 = i17;
                                                unsafe5 = unsafe2;
                                                i45 = i27;
                                                i43 = -1;
                                                i10 = i10;
                                                break;
                                            }
                                        default:
                                            zzafeVar = this;
                                            zzaclVar2 = zzaclVar;
                                            i14 = i25;
                                            i27 = i15;
                                            i28 = i26;
                                            iZzk = i28;
                                            if (iZzk == i28) {
                                                i44 = i13;
                                                iZze = iZzk;
                                                zzaclVar8 = zzaclVar2;
                                                i46 = i14;
                                                i48 = i65;
                                                i47 = i17;
                                                unsafe5 = unsafe2;
                                                i45 = i27;
                                                i43 = -1;
                                                i10 = i10;
                                            } else {
                                                i11 = i10;
                                                i16 = iZzk;
                                                i48 = i65;
                                                i47 = i17;
                                                i15 = i27;
                                            }
                                            break;
                                    }
                                } else {
                                    if (i52 == 2) {
                                        Unsafe unsafe13 = zzb;
                                        Object objZzz = zzafeVar.zzz(i15);
                                        Object object = unsafe13.getObject(obj, j8);
                                        if (zzaew.zza(object)) {
                                            zzaev zzaevVarZzb = zzaev.zza().zzb();
                                            zzaew.zzb(zzaevVarZzb, object);
                                            unsafe13.putObject(obj, j8, zzaevVarZzb);
                                        }
                                        throw null;
                                    }
                                    obj2 = obj;
                                }
                            }
                        } else if (i52 == 2) {
                            zzaed zzaedVarZzd2 = (zzaed) unsafe10.getObject(obj2, j8);
                            if (!zzaedVarZzd2.zzc()) {
                                int size2 = zzaedVarZzd2.size();
                                zzaedVarZzd2 = zzaedVarZzd2.zzd(size2 == 0 ? 10 : size2 + size2);
                                unsafe10.putObject(obj2, j8, zzaedVarZzd2);
                            }
                            iZze = zzacm.zze(zzafeVar.zzx(iZzs), i55, bArr, i54, i9, zzaedVarZzd2, zzaclVar);
                            i45 = iZzs;
                            i46 = i55;
                            unsafe5 = unsafe10;
                            i44 = i51;
                            i48 = i65;
                            i47 = i47;
                            i9 = i9;
                            zzaclVar8 = zzaclVar9;
                            i43 = -1;
                        } else {
                            i17 = i47;
                            i15 = iZzs;
                            i25 = i55;
                            i13 = i51;
                            unsafe2 = unsafe10;
                            zzaclVar5 = zzaclVar9;
                            i26 = i54;
                        }
                        i11 = i10;
                        zzaclVar2 = zzaclVar5;
                        i16 = i26;
                        i48 = i65;
                        i47 = i17;
                        i14 = i25;
                    }
                }
                if (i14 != i11 || i11 == 0) {
                    if (zzafeVar.zzh) {
                        zzadk zzadkVar = zzaclVar2.zzd;
                        int i87 = zzadk.zzb;
                        int i88 = zzafi.zza;
                        if (zzadkVar == zzadk.zza) {
                            iZzg = zzacm.zzg(i14, bArr, i16, i9, zzd(obj), zzaclVar);
                        } else {
                            if (zzadkVar.zzc(zzafeVar.zzg, i13) != null) {
                                throw null;
                            }
                            iZzg = zzacm.zzg(i14, bArr, i16, i9, zzd(obj), zzaclVar);
                        }
                    } else {
                        iZzg = zzacm.zzg(i14, bArr, i16, i9, zzd(obj), zzaclVar);
                    }
                    i9 = i9;
                    zzaclVar8 = zzaclVar;
                    i10 = i11;
                    i44 = i13;
                    unsafe5 = unsafe2;
                    i43 = -1;
                    i46 = i14;
                    i45 = i15;
                    iZze = iZzg;
                } else {
                    iZze = i16;
                    i46 = i14;
                    unsafe = unsafe2;
                }
            } else {
                unsafe = unsafe5;
                i11 = i10;
            }
        }
        if (i48 != 1048575) {
            unsafe.putInt(obj2, i48, i47);
        }
        for (int i89 = zzafeVar.zzk; i89 < zzafeVar.zzl; i89++) {
            zzy(obj, zzafeVar.zzj[i89], null, zzafeVar.zzm, obj);
        }
        if (i11 == 0) {
            if (iZze != i9) {
                throw new zzaeg("Failed to parse the message.");
            }
        } else if (iZze > i9 || i46 != i11) {
            throw new zzaeg("Failed to parse the message.");
        }
        return iZze;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzaft
    public final Object zze() {
        return ((zzady) this.zzg).zzaB();
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0071  */
    /* JADX WARN: Code duplicated, block: B:28:0x0077  */
    /* JADX WARN: Code duplicated, block: B:41:0x0084 A[SYNTHETIC] */
    @Override // com.google.ads.interactivemedia.v3.internal.zzaft
    public final void zzf(Object obj) {
        if (zzQ(obj)) {
            if (obj instanceof zzady) {
                zzady zzadyVar = (zzady) obj;
                zzadyVar.zzaN(d.API_PRIORITY_OTHER);
                zzadyVar.zza = 0;
                zzadyVar.zzaL();
            }
            int[] iArr = this.zzc;
            for (int i8 = 0; i8 < iArr.length; i8 += 3) {
                int iZzu = zzu(i8);
                int i9 = 1048575 & iZzu;
                int iZzt = zzt(iZzu);
                long j8 = i9;
                if (iZzt != 9) {
                    if (iZzt != 60 && iZzt != 68) {
                        switch (iZzt) {
                            case 17:
                                if (zzN(obj, i8)) {
                                    zzx(i8).zzf(zzb.getObject(obj, j8));
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
                                ((zzaed) zzago.zzf(obj, j8)).zzb();
                                break;
                            case 50:
                                Unsafe unsafe = zzb;
                                Object object = unsafe.getObject(obj, j8);
                                if (object != null) {
                                    ((zzaev) object).zzc();
                                    unsafe.putObject(obj, j8, object);
                                }
                                break;
                        }
                    } else if (zzR(obj, this.zzc[i8], i8)) {
                        zzx(i8).zzf(zzb.getObject(obj, j8));
                    }
                } else if (zzN(obj, i8)) {
                    zzx(i8).zzf(zzb.getObject(obj, j8));
                }
            }
            this.zzm.zzi(obj);
            if (this.zzh) {
                this.zzn.zza(obj);
            }
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzaft
    public final void zzg(Object obj, Object obj2) {
        zzD(obj);
        obj2.getClass();
        for (int i8 = 0; i8 < this.zzc.length; i8 += 3) {
            int iZzu = zzu(i8);
            int i9 = 1048575 & iZzu;
            int[] iArr = this.zzc;
            int iZzt = zzt(iZzu);
            int i10 = iArr[i8];
            long j8 = i9;
            switch (iZzt) {
                case 0:
                    if (zzN(obj2, i8)) {
                        zzago.zzo(obj, j8, zzago.zza(obj2, j8));
                        zzH(obj, i8);
                    }
                    break;
                case 1:
                    if (zzN(obj2, i8)) {
                        zzago.zzp(obj, j8, zzago.zzb(obj2, j8));
                        zzH(obj, i8);
                    }
                    break;
                case 2:
                    if (zzN(obj2, i8)) {
                        zzago.zzr(obj, j8, zzago.zzd(obj2, j8));
                        zzH(obj, i8);
                    }
                    break;
                case 3:
                    if (zzN(obj2, i8)) {
                        zzago.zzr(obj, j8, zzago.zzd(obj2, j8));
                        zzH(obj, i8);
                    }
                    break;
                case 4:
                    if (zzN(obj2, i8)) {
                        zzago.zzq(obj, j8, zzago.zzc(obj2, j8));
                        zzH(obj, i8);
                    }
                    break;
                case 5:
                    if (zzN(obj2, i8)) {
                        zzago.zzr(obj, j8, zzago.zzd(obj2, j8));
                        zzH(obj, i8);
                    }
                    break;
                case 6:
                    if (zzN(obj2, i8)) {
                        zzago.zzq(obj, j8, zzago.zzc(obj2, j8));
                        zzH(obj, i8);
                    }
                    break;
                case 7:
                    if (zzN(obj2, i8)) {
                        zzago.zzm(obj, j8, zzago.zzw(obj2, j8));
                        zzH(obj, i8);
                    }
                    break;
                case 8:
                    if (zzN(obj2, i8)) {
                        zzago.zzs(obj, j8, zzago.zzf(obj2, j8));
                        zzH(obj, i8);
                    }
                    break;
                case 9:
                    zzE(obj, obj2, i8);
                    break;
                case 10:
                    if (zzN(obj2, i8)) {
                        zzago.zzs(obj, j8, zzago.zzf(obj2, j8));
                        zzH(obj, i8);
                    }
                    break;
                case 11:
                    if (zzN(obj2, i8)) {
                        zzago.zzq(obj, j8, zzago.zzc(obj2, j8));
                        zzH(obj, i8);
                    }
                    break;
                case 12:
                    if (zzN(obj2, i8)) {
                        zzago.zzq(obj, j8, zzago.zzc(obj2, j8));
                        zzH(obj, i8);
                    }
                    break;
                case 13:
                    if (zzN(obj2, i8)) {
                        zzago.zzq(obj, j8, zzago.zzc(obj2, j8));
                        zzH(obj, i8);
                    }
                    break;
                case 14:
                    if (zzN(obj2, i8)) {
                        zzago.zzr(obj, j8, zzago.zzd(obj2, j8));
                        zzH(obj, i8);
                    }
                    break;
                case 15:
                    if (zzN(obj2, i8)) {
                        zzago.zzq(obj, j8, zzago.zzc(obj2, j8));
                        zzH(obj, i8);
                    }
                    break;
                case 16:
                    if (zzN(obj2, i8)) {
                        zzago.zzr(obj, j8, zzago.zzd(obj2, j8));
                        zzH(obj, i8);
                    }
                    break;
                case 17:
                    zzE(obj, obj2, i8);
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
                    zzaed zzaedVarZzd = (zzaed) zzago.zzf(obj, j8);
                    zzaed zzaedVar = (zzaed) zzago.zzf(obj2, j8);
                    int size = zzaedVarZzd.size();
                    int size2 = zzaedVar.size();
                    if (size > 0 && size2 > 0) {
                        if (!zzaedVarZzd.zzc()) {
                            zzaedVarZzd = zzaedVarZzd.zzd(size2 + size);
                        }
                        zzaedVarZzd.addAll(zzaedVar);
                    }
                    if (size > 0) {
                        zzaedVar = zzaedVarZzd;
                    }
                    zzago.zzs(obj, j8, zzaedVar);
                    break;
                case 50:
                    int i11 = zzafv.zza;
                    zzago.zzs(obj, j8, zzaew.zzb(zzago.zzf(obj, j8), zzago.zzf(obj2, j8)));
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
                    if (zzR(obj2, i10, i8)) {
                        zzago.zzs(obj, j8, zzago.zzf(obj2, j8));
                        zzI(obj, i10, i8);
                    }
                    break;
                case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                    zzF(obj, obj2, i8);
                    break;
                case 61:
                case 62:
                case 63:
                case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                case 65:
                case 66:
                case 67:
                    if (zzR(obj2, i10, i8)) {
                        zzago.zzs(obj, j8, zzago.zzf(obj2, j8));
                        zzI(obj, i10, i8);
                    }
                    break;
                case 68:
                    zzF(obj, obj2, i8);
                    break;
            }
        }
        zzafv.zzq(this.zzm, obj, obj2);
        if (this.zzh) {
            zzafv.zzp(this.zzn, obj, obj2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:142:0x0511 A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:321:? A[RETURN, SYNTHETIC] */
    @Override // com.google.ads.interactivemedia.v3.internal.zzaft
    public final void zzh(Object obj, zzafl zzaflVar, zzadk zzadkVar) {
        zzadkVar.getClass();
        zzD(obj);
        zzagh zzaghVar = this.zzm;
        Object objZza = null;
        while (true) {
            try {
                int iZzc = zzaflVar.zzc();
                int iZzq = zzq(iZzc);
                if (iZzq >= 0) {
                    int iZzu = zzu(iZzq);
                    switch (zzt(iZzu)) {
                        case 0:
                            zzago.zzo(obj, iZzu & 1048575, zzaflVar.zza());
                            zzH(obj, iZzq);
                            break;
                        case 1:
                            zzago.zzp(obj, iZzu & 1048575, zzaflVar.zzb());
                            zzH(obj, iZzq);
                            break;
                        case 2:
                            zzago.zzr(obj, iZzu & 1048575, zzaflVar.zzl());
                            zzH(obj, iZzq);
                            break;
                        case 3:
                            zzago.zzr(obj, iZzu & 1048575, zzaflVar.zzo());
                            zzH(obj, iZzq);
                            break;
                        case 4:
                            zzago.zzq(obj, iZzu & 1048575, zzaflVar.zzg());
                            zzH(obj, iZzq);
                            break;
                        case 5:
                            zzago.zzr(obj, iZzu & 1048575, zzaflVar.zzk());
                            zzH(obj, iZzq);
                            break;
                        case 6:
                            zzago.zzq(obj, iZzu & 1048575, zzaflVar.zzf());
                            zzH(obj, iZzq);
                            break;
                        case 7:
                            zzago.zzm(obj, iZzu & 1048575, zzaflVar.zzN());
                            zzH(obj, iZzq);
                            break;
                        case 8:
                            zzG(obj, iZzu, zzaflVar);
                            zzH(obj, iZzq);
                            break;
                        case 9:
                            zzafb zzafbVar = (zzafb) zzA(obj, iZzq);
                            zzaflVar.zzu(zzafbVar, zzx(iZzq), zzadkVar);
                            zzJ(obj, iZzq, zzafbVar);
                            break;
                        case 10:
                            zzago.zzs(obj, iZzu & 1048575, zzaflVar.zzp());
                            zzH(obj, iZzq);
                            break;
                        case 11:
                            zzago.zzq(obj, iZzu & 1048575, zzaflVar.zzj());
                            zzH(obj, iZzq);
                            break;
                        case 12:
                            int iZze = zzaflVar.zze();
                            zzaeb zzaebVarZzw = zzw(iZzq);
                            if (zzaebVarZzw == null || zzaebVarZzw.zza(iZze)) {
                                zzago.zzq(obj, iZzu & 1048575, iZze);
                                zzH(obj, iZzq);
                            } else {
                                objZza = zzafv.zzo(obj, iZzc, iZze, objZza, zzaghVar);
                            }
                            break;
                        case 13:
                            zzago.zzq(obj, iZzu & 1048575, zzaflVar.zzh());
                            zzH(obj, iZzq);
                            break;
                        case 14:
                            zzago.zzr(obj, iZzu & 1048575, zzaflVar.zzm());
                            zzH(obj, iZzq);
                            break;
                        case 15:
                            zzago.zzq(obj, iZzu & 1048575, zzaflVar.zzi());
                            zzH(obj, iZzq);
                            break;
                        case 16:
                            zzago.zzr(obj, iZzu & 1048575, zzaflVar.zzn());
                            zzH(obj, iZzq);
                            break;
                        case 17:
                            zzafb zzafbVar2 = (zzafb) zzA(obj, iZzq);
                            zzaflVar.zzt(zzafbVar2, zzx(iZzq), zzadkVar);
                            zzJ(obj, iZzq, zzafbVar2);
                            break;
                        case 18:
                            zzaflVar.zzx(zzaeo.zza(obj, iZzu & 1048575));
                            break;
                        case 19:
                            zzaflVar.zzB(zzaeo.zza(obj, iZzu & 1048575));
                            break;
                        case 20:
                            zzaflVar.zzE(zzaeo.zza(obj, iZzu & 1048575));
                            break;
                        case 21:
                            zzaflVar.zzM(zzaeo.zza(obj, iZzu & 1048575));
                            break;
                        case 22:
                            zzaflVar.zzD(zzaeo.zza(obj, iZzu & 1048575));
                            break;
                        case 23:
                            zzaflVar.zzA(zzaeo.zza(obj, iZzu & 1048575));
                            break;
                        case 24:
                            zzaflVar.zzz(zzaeo.zza(obj, iZzu & 1048575));
                            break;
                        case 25:
                            zzaflVar.zzv(zzaeo.zza(obj, iZzu & 1048575));
                            break;
                        case Service.BILLING_FIELD_NUMBER /* 26 */:
                            if (zzM(iZzu)) {
                                ((zzadb) zzaflVar).zzK(zzaeo.zza(obj, iZzu & 1048575), true);
                            } else {
                                ((zzadb) zzaflVar).zzK(zzaeo.zza(obj, iZzu & 1048575), false);
                            }
                            break;
                        case 27:
                            zzaflVar.zzF(zzaeo.zza(obj, iZzu & 1048575), zzx(iZzq), zzadkVar);
                            break;
                        case Service.MONITORING_FIELD_NUMBER /* 28 */:
                            zzaflVar.zzw(zzaeo.zza(obj, iZzu & 1048575));
                            break;
                        case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                            zzaflVar.zzL(zzaeo.zza(obj, iZzu & 1048575));
                            break;
                        case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                            List listZza = zzaeo.zza(obj, iZzu & 1048575);
                            zzaflVar.zzy(listZza);
                            objZza = zzafv.zzn(obj, iZzc, listZza, zzw(iZzq), objZza, zzaghVar);
                            break;
                        case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                            zzaflVar.zzG(zzaeo.zza(obj, iZzu & 1048575));
                            break;
                        case 32:
                            zzaflVar.zzH(zzaeo.zza(obj, iZzu & 1048575));
                            break;
                        case 33:
                            zzaflVar.zzI(zzaeo.zza(obj, iZzu & 1048575));
                            break;
                        case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                            zzaflVar.zzJ(zzaeo.zza(obj, iZzu & 1048575));
                            break;
                        case 35:
                            zzaflVar.zzx(zzaeo.zza(obj, iZzu & 1048575));
                            break;
                        case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                            zzaflVar.zzB(zzaeo.zza(obj, iZzu & 1048575));
                            break;
                        case 37:
                            zzaflVar.zzE(zzaeo.zza(obj, iZzu & 1048575));
                            break;
                        case 38:
                            zzaflVar.zzM(zzaeo.zza(obj, iZzu & 1048575));
                            break;
                        case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                            zzaflVar.zzD(zzaeo.zza(obj, iZzu & 1048575));
                            break;
                        case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                            zzaflVar.zzA(zzaeo.zza(obj, iZzu & 1048575));
                            break;
                        case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
                            zzaflVar.zzz(zzaeo.zza(obj, iZzu & 1048575));
                            break;
                        case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                            zzaflVar.zzv(zzaeo.zza(obj, iZzu & 1048575));
                            break;
                        case 43:
                            zzaflVar.zzL(zzaeo.zza(obj, iZzu & 1048575));
                            break;
                        case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                            List listZza2 = zzaeo.zza(obj, iZzu & 1048575);
                            zzaflVar.zzy(listZza2);
                            objZza = zzafv.zzn(obj, iZzc, listZza2, zzw(iZzq), objZza, zzaghVar);
                            break;
                        case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                            zzaflVar.zzG(zzaeo.zza(obj, iZzu & 1048575));
                            break;
                        case 46:
                            zzaflVar.zzH(zzaeo.zza(obj, iZzu & 1048575));
                            break;
                        case 47:
                            zzaflVar.zzI(zzaeo.zza(obj, iZzu & 1048575));
                            break;
                        case 48:
                            zzaflVar.zzJ(zzaeo.zza(obj, iZzu & 1048575));
                            break;
                        case 49:
                            zzaflVar.zzC(zzaeo.zza(obj, iZzu & 1048575), zzx(iZzq), zzadkVar);
                            break;
                        case 50:
                            Object objZzz = zzz(iZzq);
                            long jZzu = zzu(iZzq) & 1048575;
                            Object objZzf = zzago.zzf(obj, jZzu);
                            if (objZzf == null) {
                                objZzf = zzaev.zza().zzb();
                                zzago.zzs(obj, jZzu, objZzf);
                            } else if (zzaew.zza(objZzf)) {
                                Object objZzb = zzaev.zza().zzb();
                                zzaew.zzb(objZzb, objZzf);
                                zzago.zzs(obj, jZzu, objZzb);
                                objZzf = objZzb;
                            }
                            throw null;
                        case 51:
                            zzago.zzs(obj, iZzu & 1048575, Double.valueOf(zzaflVar.zza()));
                            zzI(obj, iZzc, iZzq);
                            break;
                        case 52:
                            zzago.zzs(obj, iZzu & 1048575, Float.valueOf(zzaflVar.zzb()));
                            zzI(obj, iZzc, iZzq);
                            break;
                        case 53:
                            zzago.zzs(obj, iZzu & 1048575, Long.valueOf(zzaflVar.zzl()));
                            zzI(obj, iZzc, iZzq);
                            break;
                        case 54:
                            zzago.zzs(obj, iZzu & 1048575, Long.valueOf(zzaflVar.zzo()));
                            zzI(obj, iZzc, iZzq);
                            break;
                        case 55:
                            zzago.zzs(obj, iZzu & 1048575, Integer.valueOf(zzaflVar.zzg()));
                            zzI(obj, iZzc, iZzq);
                            break;
                        case 56:
                            zzago.zzs(obj, iZzu & 1048575, Long.valueOf(zzaflVar.zzk()));
                            zzI(obj, iZzc, iZzq);
                            break;
                        case 57:
                            zzago.zzs(obj, iZzu & 1048575, Integer.valueOf(zzaflVar.zzf()));
                            zzI(obj, iZzc, iZzq);
                            break;
                        case 58:
                            zzago.zzs(obj, iZzu & 1048575, Boolean.valueOf(zzaflVar.zzN()));
                            zzI(obj, iZzc, iZzq);
                            break;
                        case 59:
                            zzG(obj, iZzu, zzaflVar);
                            zzI(obj, iZzc, iZzq);
                            break;
                        case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                            zzafb zzafbVar3 = (zzafb) zzB(obj, iZzc, iZzq);
                            zzaflVar.zzu(zzafbVar3, zzx(iZzq), zzadkVar);
                            zzK(obj, iZzc, iZzq, zzafbVar3);
                            break;
                        case 61:
                            zzago.zzs(obj, iZzu & 1048575, zzaflVar.zzp());
                            zzI(obj, iZzc, iZzq);
                            break;
                        case 62:
                            zzago.zzs(obj, iZzu & 1048575, Integer.valueOf(zzaflVar.zzj()));
                            zzI(obj, iZzc, iZzq);
                            break;
                        case 63:
                            int iZze2 = zzaflVar.zze();
                            zzaeb zzaebVarZzw2 = zzw(iZzq);
                            if (zzaebVarZzw2 == null || zzaebVarZzw2.zza(iZze2)) {
                                zzago.zzs(obj, iZzu & 1048575, Integer.valueOf(iZze2));
                                zzI(obj, iZzc, iZzq);
                            } else {
                                objZza = zzafv.zzo(obj, iZzc, iZze2, objZza, zzaghVar);
                            }
                            break;
                        case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                            zzago.zzs(obj, iZzu & 1048575, Integer.valueOf(zzaflVar.zzh()));
                            zzI(obj, iZzc, iZzq);
                            break;
                        case 65:
                            zzago.zzs(obj, iZzu & 1048575, Long.valueOf(zzaflVar.zzm()));
                            zzI(obj, iZzc, iZzq);
                            break;
                        case 66:
                            zzago.zzs(obj, iZzu & 1048575, Integer.valueOf(zzaflVar.zzi()));
                            zzI(obj, iZzc, iZzq);
                            break;
                        case 67:
                            zzago.zzs(obj, iZzu & 1048575, Long.valueOf(zzaflVar.zzn()));
                            zzI(obj, iZzc, iZzq);
                            break;
                        case 68:
                            zzafb zzafbVar4 = (zzafb) zzB(obj, iZzc, iZzq);
                            zzaflVar.zzt(zzafbVar4, zzx(iZzq), zzadkVar);
                            zzK(obj, iZzc, iZzq, zzafbVar4);
                            break;
                        default:
                            if (objZza == null) {
                                objZza = zzaghVar.zza(obj);
                            }
                            if (!zzaghVar.zzk(objZza, zzaflVar, 0)) {
                                for (int i8 = this.zzk; i8 < this.zzl; i8++) {
                                    zzy(obj, this.zzj[i8], objZza, zzaghVar, obj);
                                }
                            }
                            break;
                    }
                } else if (iZzc == Integer.MAX_VALUE) {
                    for (int i9 = this.zzk; i9 < this.zzl; i9++) {
                        zzy(obj, this.zzj[i9], objZza, zzaghVar, obj);
                    }
                } else {
                    if ((!this.zzh ? null : zzadkVar.zzc(this.zzg, iZzc)) != null) {
                        throw null;
                    }
                    if (objZza == null) {
                        objZza = zzaghVar.zza(obj);
                    }
                    if (!zzaghVar.zzk(objZza, zzaflVar, 0)) {
                        for (int i10 = this.zzk; i10 < this.zzl; i10++) {
                            zzy(obj, this.zzj[i10], objZza, zzaghVar, obj);
                        }
                    }
                }
            } catch (zzaef unused) {
                if (objZza == null) {
                    objZza = zzaghVar.zza(obj);
                }
                if (!zzaghVar.zzk(objZza, zzaflVar, 0)) {
                }
            } finally {
                for (int i11 = this.zzk; i11 < this.zzl; i11++) {
                    zzy(obj, this.zzj[i11], objZza, zzaghVar, obj);
                }
                if (objZza != null) {
                    zzaghVar.zzj(obj, objZza);
                }
            }
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzaft
    public final void zzi(Object obj, byte[] bArr, int i8, int i9, zzacl zzaclVar) {
        zzc(obj, bArr, i8, i9, 0, zzaclVar);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0023  */
    @Override // com.google.ads.interactivemedia.v3.internal.zzaft
    public final void zzj(Object obj, zzagu zzaguVar) {
        Map.Entry entry;
        int i8;
        int i9;
        int i10;
        Map.Entry entry2;
        if (this.zzh) {
            zzadp zzadpVar = ((zzadv) obj).zzb;
            if (zzadpVar.zza.isEmpty()) {
                entry = null;
            } else {
                entry = (Map.Entry) zzadpVar.zze().next();
            }
        } else {
            entry = null;
        }
        int[] iArr = this.zzc;
        Unsafe unsafe = zzb;
        int i11 = 1048575;
        int i12 = 1048575;
        int i13 = 0;
        int i14 = 0;
        while (i14 < iArr.length) {
            int iZzu = zzu(i14);
            int[] iArr2 = this.zzc;
            int iZzt = zzt(iZzu);
            int i15 = iArr2[i14];
            if (iZzt <= 17) {
                int i16 = iArr2[i14 + 2];
                int i17 = i16 & i11;
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
            if (entry != null) {
                throw null;
            }
            long j8 = iZzu & i11;
            switch (iZzt) {
                case 0:
                    entry2 = entry;
                    if (zzO(obj, i14, i8, i9, i10)) {
                        zzaguVar.zzf(i15, zzago.zza(obj, j8));
                        continue;
                    }
                    i14 += 3;
                    i12 = i8;
                    entry = entry2;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 1:
                    entry2 = entry;
                    if (zzO(obj, i14, i8, i9, i10)) {
                        zzaguVar.zzo(i15, zzago.zzb(obj, j8));
                    } else {
                        continue;
                    }
                    i14 += 3;
                    i12 = i8;
                    entry = entry2;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 2:
                    entry2 = entry;
                    if (zzO(obj, i14, i8, i9, i10)) {
                        zzaguVar.zzt(i15, unsafe.getLong(obj, j8));
                    } else {
                        continue;
                    }
                    i14 += 3;
                    i12 = i8;
                    entry = entry2;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 3:
                    entry2 = entry;
                    if (zzO(obj, i14, i8, i9, i10)) {
                        zzaguVar.zzK(i15, unsafe.getLong(obj, j8));
                    } else {
                        continue;
                    }
                    i14 += 3;
                    i12 = i8;
                    entry = entry2;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 4:
                    entry2 = entry;
                    if (zzO(obj, i14, i8, i9, i10)) {
                        zzaguVar.zzr(i15, unsafe.getInt(obj, j8));
                    } else {
                        continue;
                    }
                    i14 += 3;
                    i12 = i8;
                    entry = entry2;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 5:
                    entry2 = entry;
                    if (zzO(obj, i14, i8, i9, i10)) {
                        zzaguVar.zzm(i15, unsafe.getLong(obj, j8));
                    } else {
                        continue;
                    }
                    i14 += 3;
                    i12 = i8;
                    entry = entry2;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 6:
                    entry2 = entry;
                    if (zzO(obj, i14, i8, i9, i10)) {
                        zzaguVar.zzk(i15, unsafe.getInt(obj, j8));
                    } else {
                        continue;
                    }
                    i14 += 3;
                    i12 = i8;
                    entry = entry2;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 7:
                    entry2 = entry;
                    if (zzO(obj, i14, i8, i9, i10)) {
                        zzaguVar.zzb(i15, zzago.zzw(obj, j8));
                    } else {
                        continue;
                    }
                    i14 += 3;
                    i12 = i8;
                    entry = entry2;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 8:
                    entry2 = entry;
                    if (zzO(obj, i14, i8, i9, i10)) {
                        zzT(i15, unsafe.getObject(obj, j8), zzaguVar);
                    } else {
                        continue;
                    }
                    i14 += 3;
                    i12 = i8;
                    entry = entry2;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 9:
                    entry2 = entry;
                    if (zzO(obj, i14, i8, i9, i10)) {
                        zzaguVar.zzv(i15, unsafe.getObject(obj, j8), zzx(i14));
                    } else {
                        continue;
                    }
                    i14 += 3;
                    i12 = i8;
                    entry = entry2;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 10:
                    entry2 = entry;
                    if (zzO(obj, i14, i8, i9, i10)) {
                        zzaguVar.zzd(i15, (zzacw) unsafe.getObject(obj, j8));
                    } else {
                        continue;
                    }
                    i14 += 3;
                    i12 = i8;
                    entry = entry2;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 11:
                    entry2 = entry;
                    if (zzO(obj, i14, i8, i9, i10)) {
                        zzaguVar.zzI(i15, unsafe.getInt(obj, j8));
                    } else {
                        continue;
                    }
                    i14 += 3;
                    i12 = i8;
                    entry = entry2;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 12:
                    entry2 = entry;
                    if (zzO(obj, i14, i8, i9, i10)) {
                        zzaguVar.zzi(i15, unsafe.getInt(obj, j8));
                    } else {
                        continue;
                    }
                    i14 += 3;
                    i12 = i8;
                    entry = entry2;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 13:
                    entry2 = entry;
                    if (zzO(obj, i14, i8, i9, i10)) {
                        zzaguVar.zzx(i15, unsafe.getInt(obj, j8));
                    } else {
                        continue;
                    }
                    i14 += 3;
                    i12 = i8;
                    entry = entry2;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 14:
                    entry2 = entry;
                    if (zzO(obj, i14, i8, i9, i10)) {
                        zzaguVar.zzz(i15, unsafe.getLong(obj, j8));
                    } else {
                        continue;
                    }
                    i14 += 3;
                    i12 = i8;
                    entry = entry2;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 15:
                    entry2 = entry;
                    if (zzO(obj, i14, i8, i9, i10)) {
                        zzaguVar.zzB(i15, unsafe.getInt(obj, j8));
                    } else {
                        continue;
                    }
                    i14 += 3;
                    i12 = i8;
                    entry = entry2;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 16:
                    entry2 = entry;
                    if (zzO(obj, i14, i8, i9, i10)) {
                        zzaguVar.zzD(i15, unsafe.getLong(obj, j8));
                    } else {
                        continue;
                    }
                    i14 += 3;
                    i12 = i8;
                    entry = entry2;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 17:
                    entry2 = entry;
                    if (zzO(obj, i14, i8, i9, i10)) {
                        zzaguVar.zzq(i15, unsafe.getObject(obj, j8), zzx(i14));
                    } else {
                        continue;
                    }
                    i14 += 3;
                    i12 = i8;
                    entry = entry2;
                    i13 = i9;
                    i11 = 1048575;
                    break;
                case 18:
                    zzafv.zzs(this.zzc[i14], (List) unsafe.getObject(obj, j8), zzaguVar, false);
                    break;
                case 19:
                    zzafv.zzw(this.zzc[i14], (List) unsafe.getObject(obj, j8), zzaguVar, false);
                    break;
                case 20:
                    zzafv.zzy(this.zzc[i14], (List) unsafe.getObject(obj, j8), zzaguVar, false);
                    break;
                case 21:
                    zzafv.zzE(this.zzc[i14], (List) unsafe.getObject(obj, j8), zzaguVar, false);
                    break;
                case 22:
                    zzafv.zzx(this.zzc[i14], (List) unsafe.getObject(obj, j8), zzaguVar, false);
                    break;
                case 23:
                    zzafv.zzv(this.zzc[i14], (List) unsafe.getObject(obj, j8), zzaguVar, false);
                    break;
                case 24:
                    zzafv.zzu(this.zzc[i14], (List) unsafe.getObject(obj, j8), zzaguVar, false);
                    break;
                case 25:
                    zzafv.zzr(this.zzc[i14], (List) unsafe.getObject(obj, j8), zzaguVar, false);
                    break;
                case Service.BILLING_FIELD_NUMBER /* 26 */:
                    int i18 = this.zzc[i14];
                    List list = (List) unsafe.getObject(obj, j8);
                    int i19 = zzafv.zza;
                    if (list != null && !list.isEmpty()) {
                        zzaguVar.zzH(i18, list);
                    }
                    break;
                case 27:
                    int i20 = this.zzc[i14];
                    List list2 = (List) unsafe.getObject(obj, j8);
                    zzaft zzaftVarZzx = zzx(i14);
                    int i21 = zzafv.zza;
                    if (list2 != null && !list2.isEmpty()) {
                        for (int i22 = 0; i22 < list2.size(); i22++) {
                            ((zzadg) zzaguVar).zzv(i20, list2.get(i22), zzaftVarZzx);
                        }
                    }
                    break;
                case Service.MONITORING_FIELD_NUMBER /* 28 */:
                    int i23 = this.zzc[i14];
                    List list3 = (List) unsafe.getObject(obj, j8);
                    int i24 = zzafv.zza;
                    if (list3 != null && !list3.isEmpty()) {
                        zzaguVar.zze(i23, list3);
                    }
                    break;
                case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                    zzafv.zzD(this.zzc[i14], (List) unsafe.getObject(obj, j8), zzaguVar, false);
                    break;
                case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                    zzafv.zzt(this.zzc[i14], (List) unsafe.getObject(obj, j8), zzaguVar, false);
                    break;
                case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                    zzafv.zzz(this.zzc[i14], (List) unsafe.getObject(obj, j8), zzaguVar, false);
                    break;
                case 32:
                    zzafv.zzA(this.zzc[i14], (List) unsafe.getObject(obj, j8), zzaguVar, false);
                    break;
                case 33:
                    zzafv.zzB(this.zzc[i14], (List) unsafe.getObject(obj, j8), zzaguVar, false);
                    break;
                case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                    zzafv.zzC(this.zzc[i14], (List) unsafe.getObject(obj, j8), zzaguVar, false);
                    break;
                case 35:
                    zzafv.zzs(this.zzc[i14], (List) unsafe.getObject(obj, j8), zzaguVar, true);
                    break;
                case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                    zzafv.zzw(this.zzc[i14], (List) unsafe.getObject(obj, j8), zzaguVar, true);
                    break;
                case 37:
                    zzafv.zzy(this.zzc[i14], (List) unsafe.getObject(obj, j8), zzaguVar, true);
                    break;
                case 38:
                    zzafv.zzE(this.zzc[i14], (List) unsafe.getObject(obj, j8), zzaguVar, true);
                    break;
                case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                    zzafv.zzx(this.zzc[i14], (List) unsafe.getObject(obj, j8), zzaguVar, true);
                    break;
                case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                    zzafv.zzv(this.zzc[i14], (List) unsafe.getObject(obj, j8), zzaguVar, true);
                    break;
                case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
                    zzafv.zzu(this.zzc[i14], (List) unsafe.getObject(obj, j8), zzaguVar, true);
                    break;
                case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                    zzafv.zzr(this.zzc[i14], (List) unsafe.getObject(obj, j8), zzaguVar, true);
                    break;
                case 43:
                    zzafv.zzD(this.zzc[i14], (List) unsafe.getObject(obj, j8), zzaguVar, true);
                    break;
                case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                    zzafv.zzt(this.zzc[i14], (List) unsafe.getObject(obj, j8), zzaguVar, true);
                    break;
                case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                    zzafv.zzz(this.zzc[i14], (List) unsafe.getObject(obj, j8), zzaguVar, true);
                    break;
                case 46:
                    zzafv.zzA(this.zzc[i14], (List) unsafe.getObject(obj, j8), zzaguVar, true);
                    break;
                case 47:
                    zzafv.zzB(this.zzc[i14], (List) unsafe.getObject(obj, j8), zzaguVar, true);
                    break;
                case 48:
                    zzafv.zzC(this.zzc[i14], (List) unsafe.getObject(obj, j8), zzaguVar, true);
                    break;
                case 49:
                    int i25 = this.zzc[i14];
                    List list4 = (List) unsafe.getObject(obj, j8);
                    zzaft zzaftVarZzx2 = zzx(i14);
                    int i26 = zzafv.zza;
                    if (list4 != null && !list4.isEmpty()) {
                        for (int i27 = 0; i27 < list4.size(); i27++) {
                            ((zzadg) zzaguVar).zzq(i25, list4.get(i27), zzaftVarZzx2);
                        }
                    }
                    break;
                case 50:
                    if (unsafe.getObject(obj, j8) != null) {
                        throw null;
                    }
                    break;
                case 51:
                    if (zzR(obj, i15, i14)) {
                        zzaguVar.zzf(i15, zzn(obj, j8));
                    }
                    break;
                case 52:
                    if (zzR(obj, i15, i14)) {
                        zzaguVar.zzo(i15, zzo(obj, j8));
                    }
                    break;
                case 53:
                    if (zzR(obj, i15, i14)) {
                        zzaguVar.zzt(i15, zzv(obj, j8));
                    }
                    break;
                case 54:
                    if (zzR(obj, i15, i14)) {
                        zzaguVar.zzK(i15, zzv(obj, j8));
                    }
                    break;
                case 55:
                    if (zzR(obj, i15, i14)) {
                        zzaguVar.zzr(i15, zzp(obj, j8));
                    }
                    break;
                case 56:
                    if (zzR(obj, i15, i14)) {
                        zzaguVar.zzm(i15, zzv(obj, j8));
                    }
                    break;
                case 57:
                    if (zzR(obj, i15, i14)) {
                        zzaguVar.zzk(i15, zzp(obj, j8));
                    }
                    break;
                case 58:
                    if (zzR(obj, i15, i14)) {
                        zzaguVar.zzb(i15, zzS(obj, j8));
                    }
                    break;
                case 59:
                    if (zzR(obj, i15, i14)) {
                        zzT(i15, unsafe.getObject(obj, j8), zzaguVar);
                    }
                    break;
                case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                    if (zzR(obj, i15, i14)) {
                        zzaguVar.zzv(i15, unsafe.getObject(obj, j8), zzx(i14));
                    }
                    break;
                case 61:
                    if (zzR(obj, i15, i14)) {
                        zzaguVar.zzd(i15, (zzacw) unsafe.getObject(obj, j8));
                    }
                    break;
                case 62:
                    if (zzR(obj, i15, i14)) {
                        zzaguVar.zzI(i15, zzp(obj, j8));
                    }
                    break;
                case 63:
                    if (zzR(obj, i15, i14)) {
                        zzaguVar.zzi(i15, zzp(obj, j8));
                    }
                    break;
                case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                    if (zzR(obj, i15, i14)) {
                        zzaguVar.zzx(i15, zzp(obj, j8));
                    }
                    break;
                case 65:
                    if (zzR(obj, i15, i14)) {
                        zzaguVar.zzz(i15, zzv(obj, j8));
                    }
                    break;
                case 66:
                    if (zzR(obj, i15, i14)) {
                        zzaguVar.zzB(i15, zzp(obj, j8));
                    }
                    break;
                case 67:
                    if (zzR(obj, i15, i14)) {
                        zzaguVar.zzD(i15, zzv(obj, j8));
                    }
                    break;
                case 68:
                    if (zzR(obj, i15, i14)) {
                        zzaguVar.zzq(i15, unsafe.getObject(obj, j8), zzx(i14));
                    }
                    break;
            }
            entry2 = entry;
            i14 += 3;
            i12 = i8;
            entry = entry2;
            i13 = i9;
            i11 = 1048575;
        }
        Map.Entry entry3 = entry;
        if (entry3 != null) {
            throw null;
        }
        ((zzady) obj).zzc.zzl(zzaguVar);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzaft
    public final boolean zzk(Object obj, Object obj2) {
        boolean zZzF;
        for (int i8 = 0; i8 < this.zzc.length; i8 += 3) {
            int iZzu = zzu(i8);
            long j8 = iZzu & 1048575;
            switch (zzt(iZzu)) {
                case 0:
                    if (!zzL(obj, obj2, i8) || Double.doubleToLongBits(zzago.zza(obj, j8)) != Double.doubleToLongBits(zzago.zza(obj2, j8))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 1:
                    if (!zzL(obj, obj2, i8) || Float.floatToIntBits(zzago.zzb(obj, j8)) != Float.floatToIntBits(zzago.zzb(obj2, j8))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 2:
                    if (!zzL(obj, obj2, i8) || zzago.zzd(obj, j8) != zzago.zzd(obj2, j8)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 3:
                    if (!zzL(obj, obj2, i8) || zzago.zzd(obj, j8) != zzago.zzd(obj2, j8)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 4:
                    if (!zzL(obj, obj2, i8) || zzago.zzc(obj, j8) != zzago.zzc(obj2, j8)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 5:
                    if (!zzL(obj, obj2, i8) || zzago.zzd(obj, j8) != zzago.zzd(obj2, j8)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 6:
                    if (!zzL(obj, obj2, i8) || zzago.zzc(obj, j8) != zzago.zzc(obj2, j8)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 7:
                    if (!zzL(obj, obj2, i8) || zzago.zzw(obj, j8) != zzago.zzw(obj2, j8)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 8:
                    if (!zzL(obj, obj2, i8) || !zzafv.zzF(zzago.zzf(obj, j8), zzago.zzf(obj2, j8))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 9:
                    if (!zzL(obj, obj2, i8) || !zzafv.zzF(zzago.zzf(obj, j8), zzago.zzf(obj2, j8))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 10:
                    if (!zzL(obj, obj2, i8) || !zzafv.zzF(zzago.zzf(obj, j8), zzago.zzf(obj2, j8))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 11:
                    if (!zzL(obj, obj2, i8) || zzago.zzc(obj, j8) != zzago.zzc(obj2, j8)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 12:
                    if (!zzL(obj, obj2, i8) || zzago.zzc(obj, j8) != zzago.zzc(obj2, j8)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 13:
                    if (!zzL(obj, obj2, i8) || zzago.zzc(obj, j8) != zzago.zzc(obj2, j8)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 14:
                    if (!zzL(obj, obj2, i8) || zzago.zzd(obj, j8) != zzago.zzd(obj2, j8)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 15:
                    if (!zzL(obj, obj2, i8) || zzago.zzc(obj, j8) != zzago.zzc(obj2, j8)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 16:
                    if (!zzL(obj, obj2, i8) || zzago.zzd(obj, j8) != zzago.zzd(obj2, j8)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 17:
                    if (!zzL(obj, obj2, i8) || !zzafv.zzF(zzago.zzf(obj, j8), zzago.zzf(obj2, j8))) {
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
                    zZzF = zzafv.zzF(zzago.zzf(obj, j8), zzago.zzf(obj2, j8));
                    break;
                case 50:
                    zZzF = zzafv.zzF(zzago.zzf(obj, j8), zzago.zzf(obj2, j8));
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
                    long jZzr = zzr(i8) & 1048575;
                    if (zzago.zzc(obj, jZzr) != zzago.zzc(obj2, jZzr) || !zzafv.zzF(zzago.zzf(obj, j8), zzago.zzf(obj2, j8))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                default:
                    continue;
                    break;
            }
            if (!zZzF) {
                return false;
            }
        }
        if (!((zzady) obj).zzc.equals(((zzady) obj2).zzc)) {
            return false;
        }
        if (this.zzh) {
            return ((zzadv) obj).zzb.equals(((zzadv) obj2).zzb);
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x009d  */
    /* JADX WARN: Code duplicated, block: B:44:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:47:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:50:0x00c2 A[LOOP:1: B:45:0x00b1->B:50:0x00c2, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:67:0x00c1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:71:0x00df A[SYNTHETIC] */
    @Override // com.google.ads.interactivemedia.v3.internal.zzaft
    public final boolean zzl(Object obj) {
        int i8;
        int i9;
        List list;
        zzaft zzaftVarZzx;
        int i10;
        int i11 = 1048575;
        int i12 = 0;
        int i13 = 0;
        while (i13 < this.zzk) {
            int[] iArr = this.zzj;
            int[] iArr2 = this.zzc;
            int i14 = iArr[i13];
            int i15 = iArr2[i14];
            int iZzu = zzu(i14);
            int i16 = this.zzc[i14 + 2];
            int i17 = i16 & 1048575;
            int i18 = 1 << (i16 >>> 20);
            if (i17 != i11) {
                if (i17 != 1048575) {
                    i12 = zzb.getInt(obj, i17);
                }
                i9 = i12;
                i8 = i17;
            } else {
                i8 = i11;
                i9 = i12;
            }
            if ((268435456 & iZzu) != 0 && !zzO(obj, i14, i8, i9, i18)) {
                return false;
            }
            int iZzt = zzt(iZzu);
            if (iZzt == 9 || iZzt == 17) {
                if (zzO(obj, i14, i8, i9, i18) && !zzP(obj, iZzu, zzx(i14))) {
                    return false;
                }
            } else if (iZzt == 27) {
                list = (List) zzago.zzf(obj, iZzu & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zzaftVarZzx = zzx(i14);
                    for (i10 = 0; i10 < list.size(); i10++) {
                        if (!zzaftVarZzx.zzl(list.get(i10))) {
                            return false;
                        }
                    }
                }
            } else if (iZzt == 60 || iZzt == 68) {
                if (zzR(obj, i15, i14) && !zzP(obj, iZzu, zzx(i14))) {
                    return false;
                }
            } else if (iZzt == 49) {
                list = (List) zzago.zzf(obj, iZzu & 1048575);
                if (list.isEmpty()) {
                    zzaftVarZzx = zzx(i14);
                    while (i10 < list.size()) {
                        if (!zzaftVarZzx.zzl(list.get(i10))) {
                            return false;
                        }
                    }
                } else {
                    continue;
                }
            } else if (iZzt == 50 && !((zzaev) zzago.zzf(obj, iZzu & 1048575)).isEmpty()) {
                throw null;
            }
            i13++;
            i11 = i8;
            i12 = i9;
        }
        return !this.zzh || ((zzadv) obj).zzb.zzh();
    }
}
