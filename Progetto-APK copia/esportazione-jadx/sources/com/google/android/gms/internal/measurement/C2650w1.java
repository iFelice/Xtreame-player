package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.ads.AbstractC2090uc;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.w1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2650w1 extends AbstractC2631s2 {
    private static final C2650w1 zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;

    static {
        C2650w1 c2650w1 = new C2650w1();
        zzb = c2650w1;
        AbstractC2631s2.l(C2650w1.class, c2650w1);
    }

    public static C2630s1 q() {
        return (C2630s1) zzb.f();
    }

    public static C2650w1 s() {
        return zzb;
    }

    public static void t(C2650w1 c2650w1, int i8) {
        c2650w1.zzf = AbstractC2090uc.l(i8);
        c2650w1.zzd |= 2;
    }

    public static /* synthetic */ void w(C2650w1 c2650w1, int i8) {
        c2650w1.zzg = i8 - 1;
        c2650w1.zzd |= 4;
    }

    public static /* synthetic */ void x(C2650w1 c2650w1, int i8) {
        c2650w1.zze = i8 - 1;
        c2650w1.zzd |= 1;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2631s2
    public final Object p(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new X2(zzb, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002᠌\u0001\u0003᠌\u0002", new Object[]{"zzd", "zze", C2645v1.f23340a, "zzf", C2635t1.f23255a, "zzg", C2640u1.f23265a});
        }
        if (i9 == 3) {
            return new C2650w1();
        }
        if (i9 == 4) {
            return new C2630s1(zzb);
        }
        if (i9 == 5) {
            return zzb;
        }
        throw null;
    }

    public final int r() {
        int iC = AbstractC2090uc.c(this.zzf);
        if (iC == 0) {
            return 1;
        }
        return iC;
    }

    public final int u() {
        int i8;
        int i9 = this.zzg;
        if (i9 != 0) {
            i8 = 2;
            if (i9 != 1) {
                if (i9 != 2) {
                    i8 = 4;
                    if (i9 != 3) {
                        if (i9 != 4) {
                            i8 = i9 != 5 ? 0 : 6;
                        } else {
                            i8 = 5;
                        }
                    }
                } else {
                    i8 = 3;
                }
            }
        } else {
            i8 = 1;
        }
        if (i8 == 0) {
            return 1;
        }
        return i8;
    }

    public final int v() {
        int i8;
        int i9 = this.zze;
        if (i9 != 0) {
            i8 = 2;
            if (i9 != 1) {
                if (i9 != 2) {
                    i8 = 4;
                    if (i9 != 3) {
                        i8 = i9 != 4 ? 0 : 5;
                    }
                } else {
                    i8 = 3;
                }
            }
        } else {
            i8 = 1;
        }
        if (i8 == 0) {
            return 1;
        }
        return i8;
    }
}
