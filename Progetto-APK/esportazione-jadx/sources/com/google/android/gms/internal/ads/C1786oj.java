package com.google.android.gms.internal.ads;

import com.google.api.Service;
import java.util.Collections;
import java.util.Set;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.oj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1786oj implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f20317a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f20318b;

    public C1786oj(MJ mj) {
        this.f20317a = 29;
        this.f20318b = mj;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        int i8 = this.f20317a;
        QJ qj = this.f20318b;
        switch (i8) {
            case 0:
                return new C1734nj(((NJ) qj).zzb());
            case 1:
                C2357zj c2357zj = new C2357zj(((NJ) qj).zzb());
                c2357zj.f22183H = false;
                return c2357zj;
            case 2:
                return new C0689Cj(((NJ) qj).zzb());
            case 3:
                return new C0734Fj(((NJ) qj).zzb());
            case 4:
                return new C0764Hj(((NJ) qj).zzb());
            case 5:
                return new C0839Mj(((NJ) qj).zzb());
            case 6:
                return new C0854Nj(((NJ) qj).zzb());
            case 7:
                return new C0896Qj(((NJ) qj).zzb());
            case 8:
                return new C1321fk(((NJ) qj).zzb());
            case 9:
                return new C1425hk(((NJ) qj).zzb());
            case 10:
                return new C1527jk(((NJ) qj).zzb());
            case 11:
                return new C1735nk(((NJ) qj).zzb());
            case 12:
                return new C1839pk(((NJ) qj).zzb());
            case 13:
                return new C0780Ik(((NJ) qj).zzb());
            case 14:
                return new C0795Jk(((NJ) qj).zzb());
            case 15:
                return new C0855Nk(((NJ) qj).zzb());
            case 16:
                return new C0883Pk(((NJ) qj).zzb());
            case 17:
                return new C0911Rk(((NJ) qj).zzb());
            case 18:
                return new C0939Tk(((NJ) qj).zzb());
            case 19:
                return new C0953Uk(((NJ) qj).zzb());
            case 20:
                Set setSingleton = Collections.singleton(new C0825Lk((C0979Wi) qj.zzb(), AbstractC1988se.f20911f));
                Cw.N0(setSingleton);
                return setSingleton;
            case 21:
                return new C0825Lk((Nw) qj.zzb(), AbstractC1988se.f20911f);
            case 22:
                return new C0825Lk((Nw) qj.zzb(), AbstractC1988se.f20911f);
            case 23:
                Set setSingleton2 = Collections.singleton(new C0825Lk((C0979Wi) qj.zzb(), AbstractC1988se.f20911f));
                Cw.N0(setSingleton2);
                return setSingleton2;
            case 24:
                return new C0825Lk((C1426hl) qj.zzb(), AbstractC1988se.f20910e);
            case 25:
                return new C0825Lk((C1426hl) qj.zzb(), AbstractC1988se.f20910e);
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                return new C0825Lk((C1426hl) qj.zzb(), AbstractC1988se.f20910e);
            case 27:
                return new C0825Lk((C1066an) qj.zzb(), AbstractC1988se.f20911f);
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                Set setSingleton3 = Collections.singleton(new C0825Lk((C0979Wi) qj.zzb(), AbstractC1988se.f20911f));
                Cw.N0(setSingleton3);
                return setSingleton3;
            default:
                C1528jl c1528jl = (C1528jl) qj.zzb();
                C1936re c1936re = AbstractC1988se.f20906a;
                Cw.N0(c1936re);
                return new C0825Lk(c1528jl, c1936re);
        }
    }

    public /* synthetic */ C1786oj(MJ mj, int i8) {
        this.f20317a = i8;
        this.f20318b = mj;
    }

    public /* synthetic */ C1786oj(NJ nj, int i8) {
        this.f20317a = i8;
        this.f20318b = nj;
    }
}
