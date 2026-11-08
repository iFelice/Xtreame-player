package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public final class RJ extends p109o.i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final WeakReference f16237b;

    public RJ(C1036a8 c1036a8) {
        this.f16237b = new WeakReference(c1036a8);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        C1036a8 c1036a8 = (C1036a8) this.f16237b.get();
        if (c1036a8 != null) {
            c1036a8.f17838b = null;
            c1036a8.f17837a = null;
        }
    }
}
