package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.List;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.gw, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1385gw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC1260eb f19025a;

    public C1385gw(InterfaceC1260eb interfaceC1260eb) {
        this.f19025a = interfaceC1260eb;
    }

    public final boolean a() throws C1075aw {
        try {
            return this.f19025a.zzN();
        } catch (Throwable th) {
            throw new C1075aw(th);
        }
    }

    public final void b(Context context, InterfaceC1415ha interfaceC1415ha, List list) throws C1075aw {
        try {
            this.f19025a.I0(new R3.b(context), interfaceC1415ha, list);
        } catch (Throwable th) {
            throw new C1075aw(th);
        }
    }

    public final void c(boolean z7) throws C1075aw {
        try {
            this.f19025a.l2(z7);
        } catch (Throwable th) {
            throw new C1075aw(th);
        }
    }
}
