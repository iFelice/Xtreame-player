package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.measurement.AbstractC2617p2;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class OB extends AbstractC2617p2 {
    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public boolean b(p148t.h hVar, p148t.e eVar, p148t.e eVar2) {
        synchronized (hVar) {
            try {
                if (hVar.f30157H != eVar) {
                    return false;
                }
                hVar.f30157H = eVar2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public boolean c(p148t.h hVar, Object obj, Object obj2) {
        synchronized (hVar) {
            try {
                if (hVar.f30156G != obj) {
                    return false;
                }
                hVar.f30156G = obj2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public boolean d(p148t.h hVar, p148t.g gVar, p148t.g gVar2) {
        synchronized (hVar) {
            try {
                if (hVar.f30158I != gVar) {
                    return false;
                }
                hVar.f30158I = gVar2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public void j(p148t.g gVar, p148t.g gVar2) {
        gVar.f30151b = gVar2;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public void k(p148t.g gVar, Thread thread) {
        gVar.f30150a = thread;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public int o(PB pb) {
        int i8;
        synchronized (pb) {
            i8 = pb.f15346O - 1;
            pb.f15346O = i8;
        }
        return i8;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public void s(PB pb, Set set) {
        synchronized (pb) {
            if (pb.f15345N == null) {
                pb.f15345N = set;
            }
        }
    }
}
