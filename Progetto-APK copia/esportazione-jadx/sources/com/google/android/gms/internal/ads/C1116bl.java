package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.bl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1116bl implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f18080a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f18081b;

    public /* synthetic */ C1116bl(Object obj, int i8) {
        this.f18080a = i8;
        this.f18081b = obj;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        int i8 = this.f18080a;
        Object obj = this.f18081b;
        switch (i8) {
            case 0:
                InterfaceC0715Ef interfaceC0715Ef = (InterfaceC0715Ef) ((C2218x) obj).f21780I;
                if (interfaceC0715Ef != null) {
                    return interfaceC0715Ef.h0();
                }
                return null;
            case 1:
                String str = ((Ku) obj).f14431a.f13763L;
                Cw.N0(str);
                return str;
            case 2:
                String str2 = ((Pu) obj).f15498a.f14169M;
                Cw.N0(str2);
                return str2;
            default:
                String str3 = ((C0973Wc) ((K.k) obj).f4295I).f17257N;
                Cw.N0(str3);
                return str3;
        }
    }
}
