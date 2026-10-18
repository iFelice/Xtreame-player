package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import java.io.Serializable;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.pz, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1854pz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Gz f20508a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f20509b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final J f20510c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f20513f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Intent f20514g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final C1646lz f20515h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ServiceConnectionC1802oz f20516i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public IInterface f20517j;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f20512e = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f20511d = "OverlayDisplayService";

    /* JADX WARN: Type inference failed for: r2v4, types: [com.google.android.gms.internal.ads.lz] */
    public C1854pz(Context context, J j8, Intent intent) {
        this.f20509b = context;
        this.f20510c = j8;
        this.f20514g = intent;
        Gz c1594kz = new C1594kz();
        if (!(c1594kz instanceof Iz) && !(c1594kz instanceof Hz)) {
            c1594kz = c1594kz instanceof Serializable ? new Hz(c1594kz) : new Iz(c1594kz);
        }
        this.f20508a = c1594kz;
        this.f20515h = new IBinder.DeathRecipient() { // from class: com.google.android.gms.internal.ads.lz
            @Override // android.os.IBinder.DeathRecipient
            public final void binderDied() {
                C1854pz c1854pz = this.f19883a;
                c1854pz.f20510c.d("%s : Binder has died.", c1854pz.f20511d);
                synchronized (c1854pz.f20512e) {
                    c1854pz.f20512e.clear();
                }
            }
        };
    }

    public final void a(Runnable runnable) {
        ((Handler) this.f20508a.zza()).post(new RunnableC1698mz(this, runnable, 0));
    }
}
