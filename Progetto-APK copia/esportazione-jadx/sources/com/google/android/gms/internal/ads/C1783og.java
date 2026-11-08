package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import p090l3.InterfaceC3074d0;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.og, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1783og implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final QJ f20302a;

    public C1783og(C1523jg c1523jg) {
        this.f20302a = c1523jg;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final String zzb() {
        p090l3.L0 liteSdkVersion;
        InterfaceC3074d0 interfaceC3074d0 = C1281ew.a(((C1523jg) this.f20302a).a()).f18624b;
        if (interfaceC3074d0 != null) {
            try {
                liteSdkVersion = interfaceC3074d0.getLiteSdkVersion();
            } catch (RemoteException unused) {
                liteSdkVersion = null;
            }
        } else {
            liteSdkVersion = null;
        }
        if (liteSdkVersion != null) {
            return liteSdkVersion.f26494I;
        }
        return null;
    }
}
