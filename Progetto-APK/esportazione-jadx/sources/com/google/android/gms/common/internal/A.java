package com.google.android.gms.common.internal;

import K3.InterfaceC0232e;
import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public final class A implements InterfaceC0626b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ InterfaceC0232e f11779a;

    public A(InterfaceC0232e interfaceC0232e) {
        this.f11779a = interfaceC0232e;
    }

    @Override // com.google.android.gms.common.internal.InterfaceC0626b
    public final void onConnected(Bundle bundle) {
        this.f11779a.onConnected();
    }

    @Override // com.google.android.gms.common.internal.InterfaceC0626b
    public final void onConnectionSuspended(int i8) {
        this.f11779a.onConnectionSuspended(i8);
    }
}
