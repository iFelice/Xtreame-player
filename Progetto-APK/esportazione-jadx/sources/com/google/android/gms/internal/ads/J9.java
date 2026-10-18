package com.google.android.gms.internal.ads;

import p090l3.C3097p;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class J9 implements RB {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14126a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C1784oh f14127b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f14128c;

    public /* synthetic */ J9(C1784oh c1784oh, String str, int i8) {
        this.f14126a = i8;
        this.f14127b = c1784oh;
        this.f14128c = str;
    }

    @Override // com.google.android.gms.internal.ads.RB
    public final D4.b zza(Object obj) {
        int i8 = this.f14126a;
        String str = this.f14128c;
        C1784oh c1784oh = this.f14127b;
        switch (i8) {
            case 0:
                String str2 = (String) obj;
                H9 h9 = M9.f14657a;
                return (((Boolean) C3099q.f26624d.f26627c.a(Q7.p9)).booleanValue() && c1784oh != null && C1784oh.b(str)) ? c1784oh.a(str2, C3097p.f26618f.f26623e) : Cw.N1(str2);
            default:
                c1784oh.getClass();
                ((IB) c1784oh.f20307e).a(new RunnableC1732nh(c1784oh, (Throwable) obj, 1));
                return Cw.N1(str);
        }
    }
}
