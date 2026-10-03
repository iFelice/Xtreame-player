package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.Set;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Mj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0839Mj extends AbstractC1666mI implements F9 {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Bundle f14782H;

    public C0839Mj(Set set) {
        super(set);
        this.f14782H = new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.F9
    public final synchronized void o(String str, Bundle bundle) {
        this.f14782H.putAll(bundle);
        Z0(new F2.G(6));
    }
}
