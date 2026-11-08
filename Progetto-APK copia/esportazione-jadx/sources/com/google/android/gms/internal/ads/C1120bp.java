package com.google.android.gms.internal.ads;

import java.util.Map;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.bp, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1120bp implements InterfaceC1222dp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f18096a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InterfaceExecutorServiceC1504jC f18097b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C0994Xj f18098c;

    public C1120bp(Map map, C1936re c1936re, C0994Xj c0994Xj) {
        this.f18096a = map;
        this.f18097b = c1936re;
        this.f18098c = c0994Xj;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1222dp
    public final D4.b a(C0973Wc c0973Wc) {
        this.f18098c.z(c0973Wc);
        BB bbH1 = Cw.H1(new C0679Bo(3));
        for (String str : ((String) C3099q.f26624d.f26627c.a(Q7.z7)).split(",")) {
            QJ qj = (QJ) this.f18096a.get(str.trim());
            if (qj != null) {
                bbH1 = Cw.D1(bbH1, C0679Bo.class, new C0957Va(8, qj, c0973Wc), this.f18097b);
            }
        }
        Cw.h2(bbH1, new C0864Of(this, 16), AbstractC1988se.f20911f);
        return bbH1;
    }
}
