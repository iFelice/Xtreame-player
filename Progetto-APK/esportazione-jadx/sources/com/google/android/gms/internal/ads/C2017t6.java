package com.google.android.gms.internal.ads;

import com.google.android.gms.common.internal.InterfaceC0627c;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.t6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2017t6 implements InterfaceC0627c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C2040te f21039a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C2222x3 f21040b;

    public C2017t6(C2222x3 c2222x3, C1862q6 c1862q6) {
        this.f21039a = c1862q6;
        this.f21040b = c2222x3;
    }

    @Override // com.google.android.gms.common.internal.InterfaceC0627c
    public final void onConnectionFailed(J3.b bVar) {
        synchronized (this.f21040b.f21827H) {
            this.f21039a.c(new RuntimeException("Connection failed."));
        }
    }
}
