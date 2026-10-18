package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.qb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC1882qb extends p090l3.A0 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Object f20586G = new Object();

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public volatile p090l3.D0 f20587H;

    @Override // p090l3.B0
    public final void L0(boolean z7) throws RemoteException {
        throw new RemoteException();
    }

    @Override // p090l3.B0
    public final void S0(p090l3.D0 d6) {
        synchronized (this.f20586G) {
            this.f20587H = d6;
        }
    }

    @Override // p090l3.B0
    public final float zze() throws RemoteException {
        throw new RemoteException();
    }

    @Override // p090l3.B0
    public final float zzf() throws RemoteException {
        throw new RemoteException();
    }

    @Override // p090l3.B0
    public final float zzg() throws RemoteException {
        throw new RemoteException();
    }

    @Override // p090l3.B0
    public final int zzh() throws RemoteException {
        throw new RemoteException();
    }

    @Override // p090l3.B0
    public final p090l3.D0 zzi() {
        p090l3.D0 d6;
        synchronized (this.f20586G) {
            d6 = this.f20587H;
        }
        return d6;
    }

    @Override // p090l3.B0
    public final void zzk() throws RemoteException {
        throw new RemoteException();
    }

    @Override // p090l3.B0
    public final void zzl() throws RemoteException {
        throw new RemoteException();
    }

    @Override // p090l3.B0
    public final void zzn() throws RemoteException {
        throw new RemoteException();
    }

    @Override // p090l3.B0
    public final boolean zzo() throws RemoteException {
        throw new RemoteException();
    }

    @Override // p090l3.B0
    public final boolean zzp() throws RemoteException {
        throw new RemoteException();
    }

    @Override // p090l3.B0
    public final boolean zzq() throws RemoteException {
        throw new RemoteException();
    }
}
