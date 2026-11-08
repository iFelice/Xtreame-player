package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.oz, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class ServiceConnectionC1802oz implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C1854pz f20361a;

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        C1854pz c1854pz = this.f20361a;
        c1854pz.f20510c.d("LmdServiceConnectionManager.onServiceConnected(%s)", componentName);
        c1854pz.a(new RunnableC1170co(16, this, iBinder));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        C1854pz c1854pz = this.f20361a;
        c1854pz.f20510c.d("LmdServiceConnectionManager.onServiceDisconnected(%s)", componentName);
        c1854pz.a(new RunnableC1026Zn(this, 18));
    }
}
