package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcel;
import com.google.android.gms.common.internal.InterfaceC0626b;
import com.google.android.gms.common.internal.InterfaceC0627c;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.iy, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1489iy implements InterfaceC0626b, InterfaceC0627c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C2268xy f19394a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C2060ty f19395b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f19396c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f19397d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f19398e = false;

    public C1489iy(Context context, Looper looper, C2060ty c2060ty) {
        this.f19395b = c2060ty;
        this.f19394a = new C2268xy(context, looper, this, this, 12800000);
    }

    public final void a() {
        synchronized (this.f19396c) {
            try {
                if (this.f19394a.isConnected() || this.f19394a.isConnecting()) {
                    this.f19394a.disconnect();
                }
                Binder.flushPendingCommands();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.InterfaceC0626b
    public final void onConnected(Bundle bundle) {
        synchronized (this.f19396c) {
            try {
                if (this.f19398e) {
                    return;
                }
                this.f19398e = true;
                try {
                    Ay ay = (Ay) this.f19394a.getService();
                    C2216wy c2216wy = new C2216wy(1, this.f19395b.d());
                    Parcel parcelJ0 = ay.j0();
                    A5.c(parcelJ0, c2216wy);
                    ay.O2(2, parcelJ0);
                } catch (Exception unused) {
                } finally {
                    a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.InterfaceC0626b
    public final void onConnectionSuspended(int i8) {
    }

    @Override // com.google.android.gms.common.internal.InterfaceC0627c
    public final void onConnectionFailed(J3.b bVar) {
    }
}
