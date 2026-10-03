package com.google.android.gms.internal.cast;

import com.google.android.gms.internal.measurement.AbstractC2617p2;

/* JADX INFO: loaded from: classes.dex */
public final class B1 extends AbstractC2617p2 {
    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public final C2523z1 p(F1 f8) {
        C2523z1 c2523z1;
        C2523z1 c2523z2 = C2523z1.f22856d;
        synchronized (f8) {
            c2523z1 = f8.f22461H;
            if (c2523z1 != c2523z2) {
                f8.f22461H = c2523z2;
            }
        }
        return c2523z1;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public final E1 q(F1 f8) {
        E1 e8;
        E1 e9 = E1.f22441c;
        synchronized (f8) {
            e8 = f8.f22462I;
            if (e8 != e9) {
                f8.f22462I = e9;
            }
        }
        return e8;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public final void t(E1 e8, E1 e9) {
        e8.f22443b = e9;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public final void u(E1 e8, Thread thread) {
        e8.f22442a = thread;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public final boolean v(F1 f8, C2523z1 c2523z1, C2523z1 c2523z2) {
        synchronized (f8) {
            try {
                if (f8.f22461H != c2523z1) {
                    return false;
                }
                f8.f22461H = c2523z2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public final boolean w(F1 f8, Object obj, Object obj2) {
        synchronized (f8) {
            try {
                if (f8.f22460G != obj) {
                    return false;
                }
                f8.f22460G = obj2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public final boolean x(F1 f8, E1 e8, E1 e9) {
        synchronized (f8) {
            try {
                if (f8.f22462I != e8) {
                    return false;
                }
                f8.f22462I = e9;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
