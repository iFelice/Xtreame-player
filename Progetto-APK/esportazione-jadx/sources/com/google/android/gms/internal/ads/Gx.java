package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class Gx extends Jx {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final Gx f13668J = new Gx();

    @Override // com.google.android.gms.internal.ads.Jx
    public final void a(boolean z7) {
        Iterator it = Collections.unmodifiableCollection(Hx.f13820c.f13821a).iterator();
        while (it.hasNext()) {
            Px px = ((C2267xx) it.next()).f21959d;
            if (px.f15521b.get() != 0) {
                Cw.L0(px.a(), "setState", true != z7 ? "backgrounded" : "foregrounded", px.f15520a);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.Jx
    public final boolean b() {
        Iterator it = Collections.unmodifiableCollection(Hx.f13820c.f13822b).iterator();
        while (it.hasNext()) {
            View view = (View) ((C2267xx) it.next()).f21958c.get();
            if (view != null && view.hasWindowFocus()) {
                return true;
            }
        }
        return false;
    }
}
