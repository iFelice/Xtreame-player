package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class AB extends Q3.b {
    @Override // Q3.b
    public final C2230xB B(GB gb) {
        C2230xB c2230xB;
        C2230xB c2230xB2 = C2230xB.f21851d;
        synchronized (gb) {
            c2230xB = gb.f13490H;
            if (c2230xB != c2230xB2) {
                gb.f13490H = c2230xB2;
            }
        }
        return c2230xB;
    }

    @Override // Q3.b
    public final FB F(GB gb) {
        FB fb;
        FB fb2 = FB.f13328c;
        synchronized (gb) {
            fb = gb.f13491I;
            if (fb != fb2) {
                gb.f13491I = fb2;
            }
        }
        return fb;
    }

    @Override // Q3.b
    public final void M(FB fb, FB fb2) {
        fb.f13330b = fb2;
    }

    @Override // Q3.b
    public final void P(FB fb, Thread thread) {
        fb.f13329a = thread;
    }

    @Override // Q3.b
    public final boolean T(GB gb, C2230xB c2230xB, C2230xB c2230xB2) {
        synchronized (gb) {
            try {
                if (gb.f13490H != c2230xB) {
                    return false;
                }
                gb.f13490H = c2230xB2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // Q3.b
    public final boolean W(GB gb, Object obj, Object obj2) {
        synchronized (gb) {
            try {
                if (gb.f13489G != obj) {
                    return false;
                }
                gb.f13489G = obj2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // Q3.b
    public final boolean Z(GB gb, FB fb, FB fb2) {
        synchronized (gb) {
            try {
                if (gb.f13491I != fb) {
                    return false;
                }
                gb.f13491I = fb2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
