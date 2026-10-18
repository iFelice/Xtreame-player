package com.google.android.gms.internal.pal;

/* JADX INFO: loaded from: classes.dex */
public final class T1 extends Y1 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f23659h;

    public T1(A1 a8, L4 l4, int i8) {
        boolean z7;
        super(a8, "RjfRn/7K/Mx2/M8Fl6a7u1D5niklht4X0VG1cOixOa4SuaPG6Qd7la4v6f0IM/MO", "cZ2qwY2ZIJRch325gepGJtH7dQ9IcqmfWvaHdfiFi6Y=", l4, i8, 61);
        com.google.android.gms.internal.ads.R4 r7 = a8.f23441q;
        switch (r7.f16205a) {
            case 0:
                z7 = r7.f16206b;
                break;
            default:
                z7 = r7.f16206b;
                break;
        }
        this.f23659h = z7;
    }

    @Override // com.google.android.gms.internal.pal.Y1
    public final void a() {
        long jLongValue = ((Long) this.f23702e.invoke(null, this.f23698a.f23425a, Boolean.valueOf(this.f23659h))).longValue();
        synchronized (this.f23701d) {
            L4 l4 = this.f23701d;
            if (l4.f23476I) {
                l4.f();
                l4.f23476I = false;
            }
            C2765m0.G((C2765m0) l4.f23475H, jLongValue);
        }
    }
}
