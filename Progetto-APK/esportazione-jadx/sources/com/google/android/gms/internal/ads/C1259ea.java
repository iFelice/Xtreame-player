package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.internal.InterfaceC0626b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ea, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1259ea implements InterfaceC0626b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C2040te f18524a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ J3.k f18525b;

    public C1259ea(J3.k kVar, C2040te c2040te) {
        this.f18524a = c2040te;
        this.f18525b = kVar;
    }

    @Override // com.google.android.gms.common.internal.InterfaceC0626b
    public final void onConnected(Bundle bundle) {
        try {
            this.f18524a.b((C1156ca) ((C1706n6) this.f18525b.f4153H).getService());
        } catch (DeadObjectException e8) {
            this.f18524a.c(e8);
        }
    }

    @Override // com.google.android.gms.common.internal.InterfaceC0626b
    public final void onConnectionSuspended(int i8) {
        this.f18524a.c(new RuntimeException(p000a.r.f("onConnectionSuspended: ", i8)));
    }
}
