package com.google.android.gms.internal.ads;

import android.os.Parcel;
import java.util.List;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ia, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1467ia extends AbstractC2276y5 implements InterfaceC1517ja {
    @Override // com.google.android.gms.internal.ads.InterfaceC1517ja
    public final void r2(List list) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeTypedList(list);
        O2(1, parcelJ0);
    }
}
