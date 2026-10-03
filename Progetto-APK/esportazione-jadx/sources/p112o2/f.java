package p112o2;

import p190y4.k;

/* JADX INFO: loaded from: classes.dex */
public final class f extends k {
    @Override // p190y4.k
    public final void b0(g gVar, g gVar2) {
        gVar.f27859b = gVar2;
    }

    @Override // p190y4.k
    public final void c0(g gVar, Thread thread) {
        gVar.f27858a = thread;
    }

    @Override // p190y4.k
    public final boolean k(h hVar, c cVar, c cVar2) {
        synchronized (hVar) {
            try {
                if (hVar.f27865H != cVar) {
                    return false;
                }
                hVar.f27865H = cVar2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p190y4.k
    public final boolean l(h hVar, Object obj, Object obj2) {
        synchronized (hVar) {
            try {
                if (hVar.f27864G != obj) {
                    return false;
                }
                hVar.f27864G = obj2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p190y4.k
    public final boolean m(h hVar, g gVar, g gVar2) {
        synchronized (hVar) {
            try {
                if (hVar.f27866I != gVar) {
                    return false;
                }
                hVar.f27866I = gVar2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
