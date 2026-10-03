package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Hl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC0766Hl extends p090l3.A0 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Object f13781G = new Object();

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final p090l3.B0 f13782H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final InterfaceC1830pb f13783I;

    public BinderC0766Hl(p090l3.B0 b8, InterfaceC1830pb interfaceC1830pb) {
        this.f13782H = b8;
        this.f13783I = interfaceC1830pb;
    }

    @Override // p090l3.B0
    public final void L0(boolean z7) throws RemoteException {
        throw new RemoteException();
    }

    @Override // p090l3.B0
    public final void S0(p090l3.D0 d6) {
        synchronized (this.f13781G) {
            try {
                p090l3.B0 b8 = this.f13782H;
                if (b8 != null) {
                    b8.S0(d6);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p090l3.B0
    public final float zze() throws RemoteException {
        throw new RemoteException();
    }

    @Override // p090l3.B0
    public final float zzf() {
        InterfaceC1830pb interfaceC1830pb = this.f13783I;
        if (interfaceC1830pb != null) {
            return interfaceC1830pb.zzg();
        }
        return 0.0f;
    }

    @Override // p090l3.B0
    public final float zzg() {
        InterfaceC1830pb interfaceC1830pb = this.f13783I;
        if (interfaceC1830pb != null) {
            return interfaceC1830pb.zzh();
        }
        return 0.0f;
    }

    @Override // p090l3.B0
    public final int zzh() throws RemoteException {
        throw new RemoteException();
    }

    @Override // p090l3.B0
    public final p090l3.D0 zzi() {
        synchronized (this.f13781G) {
            try {
                p090l3.B0 b8 = this.f13782H;
                if (b8 == null) {
                    return null;
                }
                return b8.zzi();
            } catch (Throwable th) {
                throw th;
            }
        }
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
