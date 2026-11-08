package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class Js implements InterfaceC2056tu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14227a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f14228b;

    public /* synthetic */ Js(ArrayList arrayList, int i8) {
        this.f14227a = i8;
        this.f14228b = arrayList;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2056tu
    public final void a(Object obj) {
        int i8 = this.f14227a;
        ArrayList<String> arrayList = this.f14228b;
        switch (i8) {
            case 0:
                ((Bundle) obj).putStringArrayList("ad_types", arrayList);
                break;
            default:
                ((Bundle) obj).putStringArrayList("android_permissions", arrayList);
                break;
        }
    }
}
