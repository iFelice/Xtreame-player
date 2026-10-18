package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashMap;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.lh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1628lh implements InterfaceC1215dh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f19821a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p113o3.L f19822b = p083k3.l.f25980A.f25987g.d();

    public C1628lh(Context context) {
        this.f19821a = context;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1215dh
    public final void a(HashMap map) {
        String str;
        if (map.isEmpty() || (str = (String) map.get("gad_idless")) == null) {
            return;
        }
        boolean z7 = Boolean.parseBoolean(str);
        this.f19822b.h(z7);
        if (z7) {
            J6.r.v(this.f19821a);
        }
    }
}
