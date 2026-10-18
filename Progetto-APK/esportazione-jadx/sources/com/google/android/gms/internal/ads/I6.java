package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.RandomAccess;
import org.videolan.libvlc.interfaces.IMediaList;

/* JADX INFO: loaded from: classes.dex */
public final class I6 extends AbstractC1873qH {
    public static final int zza = 1;
    public static final int zzb = 2;
    public static final int zzc = 3;
    public static final int zzd = 4;
    public static final int zze = 5;
    public static final int zzf = 6;
    public static final int zzg = 7;
    public static final int zzh = 8;
    public static final int zzi = 9;
    public static final int zzj = 10;
    public static final int zzk = 11;
    public static final int zzl = 12;
    public static final int zzm = 13;
    private static final InterfaceC2132vH zzn = new C1561kH(20);
    private static final I6 zzo;
    private static volatile SH zzp;
    private F6 zzA;
    private int zzB;
    private int zzC;
    private int zzD;
    private int zzE;
    private int zzF;
    private int zzG;
    private long zzH;
    private int zzu;
    private long zzv;
    private int zzw;
    private long zzx;
    private long zzy;
    private InterfaceC2080uH zzz = C1924rH.f20709J;

    static {
        I6 i8 = new I6();
        zzo = i8;
        AbstractC1873qH.t(I6.class, i8);
    }

    public static void A(I6 i8, long j8) {
        i8.zzu |= 1;
        i8.zzv = j8;
    }

    public static void B(I6 i8, int i9) {
        i8.getClass();
        i8.zzw = p000a.r.a(i9);
        i8.zzu |= 2;
    }

    public static void C(I6 i8, long j8) {
        i8.zzu |= 4;
        i8.zzx = j8;
    }

    public static void D(I6 i8, long j8) {
        i8.zzu |= 8;
        i8.zzy = j8;
    }

    public static void E(I6 i8, ArrayList arrayList) {
        RandomAccess randomAccess = i8.zzz;
        if (!((QG) randomAccess).f16004G) {
            C1924rH c1924rH = (C1924rH) randomAccess;
            int i9 = c1924rH.f20711I;
            int i10 = i9 == 0 ? 10 : i9 + i9;
            if (i10 < i9) {
                throw new IllegalArgumentException();
            }
            i8.zzz = new C1924rH(Arrays.copyOf(c1924rH.f20710H, i10), c1924rH.f20711I, true);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((C1924rH) i8.zzz).i(((EnumC1863q7) it.next()).f20546G);
        }
    }

    public static void F(I6 i8, F6 f8) {
        i8.getClass();
        f8.getClass();
        i8.zzA = f8;
        i8.zzu |= 16;
    }

    public static void G(I6 i8, int i9) {
        i8.getClass();
        i8.zzB = p000a.r.a(i9);
        i8.zzu |= 32;
    }

    public static void H(I6 i8, int i9) {
        i8.getClass();
        i8.zzC = p000a.r.a(i9);
        i8.zzu |= 64;
    }

    public static void I(I6 i8, int i9) {
        i8.getClass();
        i8.zzD = p000a.r.a(i9);
        i8.zzu |= 128;
    }

    public static void J(I6 i8, int i9) {
        i8.zzu |= 256;
        i8.zzE = i9;
    }

    public static void K(I6 i8, int i9) {
        i8.getClass();
        i8.zzF = p000a.r.a(i9);
        i8.zzu |= IMediaList.Event.ItemAdded;
    }

    public static void L(I6 i8, L6 l8) {
        i8.getClass();
        i8.zzG = l8.f14475G;
        i8.zzu |= 1024;
    }

    public static void M(I6 i8, long j8) {
        i8.zzu |= 2048;
        i8.zzH = j8;
    }

    public static H6 P() {
        return (H6) zzo.g();
    }

    public static I6 Q(byte[] bArr) throws AH {
        I6 i8 = zzo;
        int length = bArr.length;
        C1509jH c1509jH = C1509jH.f19448b;
        UH uh = UH.f16822c;
        AbstractC1873qH abstractC1873qHZ = AbstractC1873qH.z(i8, bArr, length, C1509jH.f19449c);
        AbstractC1873qH.y(abstractC1873qHZ);
        return (I6) abstractC1873qHZ;
    }

    public final long N() {
        return this.zzv;
    }

    public final int O() {
        int i8;
        int i9 = this.zzw;
        if (i9 == 0) {
            i8 = 1;
        } else if (i9 != 1) {
            i8 = i9 != 1000 ? 0 : 3;
        } else {
            i8 = 2;
        }
        if (i8 == 0) {
            return 1;
        }
        return i8;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                B7 b8 = B7.f12286a;
                return new XH(zzo, "\u0004\r\u0000\u0001\u0001\r\r\u0000\u0001\u0000\u0001ဂ\u0000\u0002᠌\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ࠞ\u0006ဉ\u0004\u0007᠌\u0005\b᠌\u0006\t᠌\u0007\nင\b\u000b᠌\t\f᠌\n\rဂ\u000b", new Object[]{"zzu", "zzv", "zzw", b8, "zzx", "zzy", "zzz", C1811p7.f20420a, "zzA", "zzB", b8, "zzC", b8, "zzD", b8, "zzE", "zzF", b8, "zzG", K6.f14302a, "zzH"});
            case 3:
                return new I6();
            case 4:
                return new H6(zzo);
            case 5:
                return zzo;
            case 6:
                SH c1821pH = zzp;
                if (c1821pH == null) {
                    synchronized (I6.class) {
                        try {
                            c1821pH = zzp;
                            if (c1821pH == null) {
                                c1821pH = new C1821pH();
                                zzp = c1821pH;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                        break;
                    }
                }
                return c1821pH;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
