package com.google.android.gms.internal.ads;

import C2.C0091g;
import android.os.Bundle;
import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.tc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC2038tc extends AbstractBinderC2328z5 implements InterfaceC0974Wd {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ p182x3.a f21081G;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BinderC2038tc(p182x3.a aVar) {
        super("com.google.android.gms.ads.internal.signals.ISignalCallback");
        this.f21081G = aVar;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0974Wd
    public final void F0(String str, String str2, Bundle bundle) {
        this.f21081G.b(new C0091g(new p004a3.b(str, bundle, str2, 2), 13));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0974Wd
    public final void m(String str) {
        this.f21081G.a(str);
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        if (i8 == 1) {
            parcel.readString();
            parcel.readString();
            A5.b(parcel);
        } else if (i8 == 2) {
            String string = parcel.readString();
            A5.b(parcel);
            m(string);
        } else {
            if (i8 != 3) {
                return false;
            }
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            Bundle bundle = (Bundle) A5.a(parcel, Bundle.CREATOR);
            A5.b(parcel);
            F0(string2, string3, bundle);
        }
        parcel2.writeNoException();
        return true;
    }
}
