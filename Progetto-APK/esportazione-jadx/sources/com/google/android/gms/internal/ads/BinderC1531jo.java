package com.google.android.gms.internal.ads;

import android.os.Parcel;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.jo, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC1531jo extends AbstractBinderC2328z5 implements InterfaceC1517ja {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ C1635lo f19498G;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BinderC1531jo(C1635lo c1635lo) {
        super("com.google.android.gms.ads.internal.initialization.IInitializationCallback");
        this.f19498G = c1635lo;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1517ja
    public final void r2(List list) {
        this.f19498G.b((ArrayList) list);
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        if (i8 != 1) {
            return false;
        }
        ArrayList arrayListCreateTypedArrayList = parcel.createTypedArrayList(C1311fa.CREATOR);
        A5.b(parcel);
        r2(arrayListCreateTypedArrayList);
        parcel2.writeNoException();
        return true;
    }
}
