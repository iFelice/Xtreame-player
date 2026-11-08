package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.common.internal.InterfaceC0626b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.s6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1965s6 implements InterfaceC0626b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C1758o6 f20866a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C2040te f20867b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ C2222x3 f20868c;

    public C1965s6(C2222x3 c2222x3, C1758o6 c1758o6, C1862q6 c1862q6) {
        this.f20866a = c1758o6;
        this.f20867b = c1862q6;
        this.f20868c = c2222x3;
    }

    @Override // com.google.android.gms.common.internal.InterfaceC0626b
    public final void onConnected(Bundle bundle) {
        synchronized (this.f20868c.f21827H) {
            try {
                C2222x3 c2222x3 = this.f20868c;
                if (c2222x3.f21826G) {
                    return;
                }
                c2222x3.f21826G = true;
                C1706n6 c1706n6 = (C1706n6) c2222x3.f21828I;
                if (c1706n6 == null) {
                    return;
                }
                this.f20867b.a(new RunnableC0755Ha(7, this, AbstractC1988se.f20906a.a(new RunnableC0755Ha(6, this, c1706n6))), AbstractC1988se.f20911f);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.InterfaceC0626b
    public final void onConnectionSuspended(int i8) {
    }
}
