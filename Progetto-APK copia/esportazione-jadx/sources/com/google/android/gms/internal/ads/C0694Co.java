package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.nio.charset.StandardCharsets;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Co, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0694Co implements RB {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12694a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0973Wc f12695b;

    public /* synthetic */ C0694Co(C0973Wc c0973Wc, int i8) {
        this.f12694a = i8;
        this.f12695b = c0973Wc;
    }

    @Override // com.google.android.gms.internal.ads.RB
    public final D4.b zza(Object obj) {
        int i8 = this.f12694a;
        C0973Wc c0973Wc = this.f12695b;
        switch (i8) {
            case 0:
                return Cw.N1(new C1326fp(c0973Wc, (InputStream) obj));
            case 1:
                return Cw.N1(new C1326fp(c0973Wc, (InputStream) obj));
            default:
                c0973Wc.f17259P = new String(AbstractC1503jB.a((InputStream) obj), StandardCharsets.UTF_8);
                return Cw.N1(c0973Wc);
        }
    }
}
