package com.google.ads.interactivemedia.v3.internal;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import libcore.io.Memory;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes.dex */
final class zzago {
    static final long zza;
    static final boolean zzb;
    private static final Unsafe zzc;
    private static final Class zzd;
    private static final boolean zze;
    private static final zzagn zzf;
    private static final boolean zzg;
    private static final boolean zzh;

    /* JADX WARN: Code duplicated, block: B:11:0x003e  */
    static {
        boolean z7;
        boolean z8;
        zzagn zzagnVar;
        Unsafe unsafeZzg = zzg();
        zzc = unsafeZzg;
        int i8 = zzack.zza;
        zzd = Memory.class;
        Class<?> cls = Long.TYPE;
        boolean zZzv = zzv(cls);
        zze = zZzv;
        boolean zZzv2 = zzv(Integer.TYPE);
        zzagn zzaglVar = null;
        if (unsafeZzg != null) {
            if (zZzv) {
                zzaglVar = new zzagm(unsafeZzg);
            } else if (zZzv2) {
                zzaglVar = new zzagl(unsafeZzg);
            }
        }
        zzf = zzaglVar;
        if (zzaglVar == null) {
            z7 = false;
        } else {
            try {
                Class<?> cls2 = zzaglVar.zza.getClass();
                cls2.getMethod("objectFieldOffset", Field.class);
                cls2.getMethod("getLong", Object.class, cls);
                if (zzB() == null) {
                    z7 = false;
                } else {
                    z7 = true;
                }
            } catch (Throwable th) {
                zzh(th);
            }
        }
        zzg = z7;
        zzagn zzagnVar2 = zzf;
        if (zzagnVar2 == null) {
            z8 = false;
        } else {
            try {
                Class<?> cls3 = zzagnVar2.zza.getClass();
                cls3.getMethod("objectFieldOffset", Field.class);
                cls3.getMethod("arrayBaseOffset", Class.class);
                cls3.getMethod("arrayIndexScale", Class.class);
                Class<?> cls4 = Long.TYPE;
                cls3.getMethod("getInt", Object.class, cls4);
                cls3.getMethod("putInt", Object.class, cls4, Integer.TYPE);
                cls3.getMethod("getLong", Object.class, cls4);
                cls3.getMethod("putLong", Object.class, cls4, cls4);
                cls3.getMethod("getObject", Object.class, cls4);
                cls3.getMethod("putObject", Object.class, cls4, Object.class);
                z8 = true;
            } catch (Throwable th2) {
                zzh(th2);
                z8 = false;
            }
        }
        zzh = z8;
        zza = zzz(byte[].class);
        zzz(boolean[].class);
        zzA(boolean[].class);
        zzz(int[].class);
        zzA(int[].class);
        zzz(long[].class);
        zzA(long[].class);
        zzz(float[].class);
        zzA(float[].class);
        zzz(double[].class);
        zzA(double[].class);
        zzz(Object[].class);
        zzA(Object[].class);
        Field fieldZzB = zzB();
        if (fieldZzB != null && (zzagnVar = zzf) != null) {
            zzagnVar.zza.objectFieldOffset(fieldZzB);
        }
        zzb = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    private zzago() {
    }

    private static int zzA(Class cls) {
        if (zzh) {
            return zzf.zza.arrayIndexScale(cls);
        }
        return -1;
    }

    private static Field zzB() {
        int i8 = zzack.zza;
        Field fieldZzC = zzC(Buffer.class, "effectiveDirectAddress");
        if (fieldZzC != null) {
            return fieldZzC;
        }
        Field fieldZzC2 = zzC(Buffer.class, "address");
        if (fieldZzC2 == null || fieldZzC2.getType() != Long.TYPE) {
            return null;
        }
        return fieldZzC2;
    }

    private static Field zzC(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzD(Object obj, long j8, byte b8) {
        zzagn zzagnVar = zzf;
        long j9 = (-4) & j8;
        int i8 = zzagnVar.zza.getInt(obj, j9);
        int i9 = ((~((int) j8)) & 3) << 3;
        zzagnVar.zza.putInt(obj, j9, ((255 & b8) << i9) | (i8 & (~(255 << i9))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzE(Object obj, long j8, byte b8) {
        zzagn zzagnVar = zzf;
        long j9 = (-4) & j8;
        int i8 = (((int) j8) & 3) << 3;
        zzagnVar.zza.putInt(obj, j9, ((255 & b8) << i8) | (zzagnVar.zza.getInt(obj, j9) & (~(255 << i8))));
    }

    public static double zza(Object obj, long j8) {
        return zzf.zza(obj, j8);
    }

    public static float zzb(Object obj, long j8) {
        return zzf.zzb(obj, j8);
    }

    public static int zzc(Object obj, long j8) {
        return zzf.zza.getInt(obj, j8);
    }

    public static long zzd(Object obj, long j8) {
        return zzf.zza.getLong(obj, j8);
    }

    public static Object zze(Class cls) {
        try {
            return zzc.allocateInstance(cls);
        } catch (InstantiationException e8) {
            throw new IllegalStateException(e8);
        }
    }

    public static Object zzf(Object obj, long j8) {
        return zzf.zza.getObject(obj, j8);
    }

    public static Unsafe zzg() {
        try {
            return (Unsafe) AccessController.doPrivileged(new zzagk());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static /* bridge */ /* synthetic */ void zzh(Throwable th) {
        Logger.getLogger(zzago.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th.toString()));
    }

    public static void zzm(Object obj, long j8, boolean z7) {
        zzf.zzc(obj, j8, z7);
    }

    public static void zzn(byte[] bArr, long j8, byte b8) {
        zzf.zzd(bArr, zza + j8, b8);
    }

    public static void zzo(Object obj, long j8, double d6) {
        zzf.zze(obj, j8, d6);
    }

    public static void zzp(Object obj, long j8, float f8) {
        zzf.zzf(obj, j8, f8);
    }

    public static void zzq(Object obj, long j8, int i8) {
        zzf.zza.putInt(obj, j8, i8);
    }

    public static void zzr(Object obj, long j8, long j9) {
        zzf.zza.putLong(obj, j8, j9);
    }

    public static void zzs(Object obj, long j8, Object obj2) {
        zzf.zza.putObject(obj, j8, obj2);
    }

    public static /* bridge */ /* synthetic */ boolean zzt(Object obj, long j8) {
        return ((byte) ((zzf.zza.getInt(obj, (-4) & j8) >>> ((int) (((~j8) & 3) << 3))) & 255)) != 0;
    }

    public static /* bridge */ /* synthetic */ boolean zzu(Object obj, long j8) {
        return ((byte) ((zzf.zza.getInt(obj, (-4) & j8) >>> ((int) ((j8 & 3) << 3))) & 255)) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean zzv(Class cls) {
        int i8 = zzack.zza;
        try {
            Class cls2 = zzd;
            Class cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class cls4 = Integer.TYPE;
            cls2.getMethod("pokeInt", cls, cls4, cls3);
            cls2.getMethod("peekInt", cls, cls3);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, cls4, cls4);
            cls2.getMethod("peekByteArray", cls, byte[].class, cls4, cls4);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean zzw(Object obj, long j8) {
        return zzf.zzg(obj, j8);
    }

    public static boolean zzx() {
        return zzh;
    }

    public static boolean zzy() {
        return zzg;
    }

    private static int zzz(Class cls) {
        if (zzh) {
            return zzf.zza.arrayBaseOffset(cls);
        }
        return -1;
    }
}
