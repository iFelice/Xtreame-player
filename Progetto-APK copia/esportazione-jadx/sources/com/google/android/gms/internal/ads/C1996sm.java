package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.sm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1996sm implements RB {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f20967a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ D4.b f20968b;

    public /* synthetic */ C1996sm(int i8, D4.b bVar) {
        this.f20967a = i8;
        this.f20968b = bVar;
    }

    @Override // com.google.android.gms.internal.ads.RB
    public final D4.b zza(Object obj) throws C1898qr {
        int i8 = this.f20967a;
        D4.b bVar = this.f20968b;
        switch (i8) {
            case 0:
                InterfaceC0715Ef interfaceC0715Ef = (InterfaceC0715Ef) obj;
                if (interfaceC0715Ef == null || interfaceC0715Ef.zzq() == null) {
                    throw new C1898qr(1, "Retrieve video view in html5 ad response failed.");
                }
                return bVar;
            case 1:
                if (((InterfaceC0715Ef) obj) != null) {
                    return bVar;
                }
                throw new C1898qr(1, "Retrieve Web View from image ad response failed.");
            case 2:
                return obj != null ? bVar : Cw.H1(new C1898qr(1, "Retrieve required value in native ad response failed."));
            default:
                return bVar;
        }
    }
}
