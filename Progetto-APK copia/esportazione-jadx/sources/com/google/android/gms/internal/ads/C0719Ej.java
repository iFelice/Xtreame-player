package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Ej, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0719Ej implements InterfaceC1942rk, InterfaceC1218dk, InterfaceC1746nv {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f13175G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ InterfaceC1211dd f13176H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ String f13177I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ String f13178J;

    public /* synthetic */ C0719Ej(InterfaceC1211dd interfaceC1211dd, String str, String str2, int i8) {
        this.f13175G = i8;
        this.f13176H = interfaceC1211dd;
        this.f13177I = str;
        this.f13178J = str2;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1942rk, com.google.android.gms.internal.ads.InterfaceC1218dk
    /* JADX INFO: renamed from: zza */
    public final void mo0zza(Object obj) {
        int i8 = this.f13175G;
        String str = this.f13178J;
        String str2 = this.f13177I;
        InterfaceC1211dd interfaceC1211dd = this.f13176H;
        switch (i8) {
            case 0:
                ((InterfaceC1838pj) obj).g(interfaceC1211dd, str2, str);
                break;
            case 1:
                ((Gv) obj).g(interfaceC1211dd, str2, str);
                break;
            case 2:
                C2299yd c2299yd = (C2299yd) obj;
                BinderC1108bd binderC1108bd = (BinderC1108bd) interfaceC1211dd;
                BinderC0683Cd binderC0683Cd = new BinderC0683Cd(binderC1108bd.f18055G, binderC1108bd.f18056H);
                Parcel parcelJ0 = c2299yd.j0();
                A5.e(parcelJ0, binderC0683Cd);
                parcelJ0.writeString(str2);
                parcelJ0.writeString(str);
                c2299yd.O2(2, parcelJ0);
                break;
            default:
                C1262ed c1262ed = (C1262ed) obj;
                Parcel parcelJ1 = c1262ed.j0();
                A5.e(parcelJ1, interfaceC1211dd);
                parcelJ1.writeString(str2);
                parcelJ1.writeString(str);
                c1262ed.O2(2, parcelJ1);
                break;
        }
    }
}
