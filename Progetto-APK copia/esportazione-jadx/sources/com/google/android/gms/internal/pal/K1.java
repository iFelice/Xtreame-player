package com.google.android.gms.internal.pal;

import android.content.Context;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class K1 extends Y1 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final C2805r1 f23576i = new C2805r1();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Context f23577h;

    public K1(A1 a8, L4 l4, int i8, Context context) {
        super(a8, "joxZSCFIfSio2J1Z0g3HMtlcDGNvogfMyrj1e2b+qPNv6DXnDVXfwkgCXW9zFWFC", "iJiFXDBrMwFOGpG8WmWNKc3sGwXbWv8N6fPQac0mMm0=", l4, i8, 29);
        this.f23577h = context;
    }

    @Override // com.google.android.gms.internal.pal.Y1
    public final void a() {
        L4 l4 = this.f23701d;
        if (l4.f23476I) {
            l4.f();
            l4.f23476I = false;
        }
        C2765m0.u0((C2765m0) l4.f23475H, "E");
        AtomicReference atomicReferenceD = f23576i.d(this.f23577h.getPackageName());
        if (atomicReferenceD.get() == null) {
            synchronized (atomicReferenceD) {
                try {
                    if (atomicReferenceD.get() == null) {
                        atomicReferenceD.set((String) this.f23702e.invoke(null, this.f23577h));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        String str = (String) atomicReferenceD.get();
        synchronized (this.f23701d) {
            L4 l8 = this.f23701d;
            String strP = AbstractC2864y4.p(str.getBytes(), true);
            if (l8.f23476I) {
                l8.f();
                l8.f23476I = false;
            }
            C2765m0.u0((C2765m0) l8.f23475H, strP);
        }
    }
}
