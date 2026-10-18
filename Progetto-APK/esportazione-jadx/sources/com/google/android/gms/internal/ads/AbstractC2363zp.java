package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Looper;
import com.google.android.gms.common.internal.InterfaceC0626b;
import com.google.android.gms.common.internal.InterfaceC0627c;
import java.util.Locale;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.zp, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2363zp implements InterfaceC0626b, InterfaceC0627c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C2040te f22198a = new C2040te();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f22199b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f22200c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public C0742Gc f22201d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Context f22202e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Looper f22203f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ScheduledExecutorService f22204g;

    public final synchronized void a() {
        try {
            if (this.f22201d == null) {
                this.f22201d = new C0742Gc(this.f22202e, this.f22203f, this, this, 0);
            }
            this.f22201d.checkAvailabilityAndConnect();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void b() {
        try {
            this.f22200c = true;
            C0742Gc c0742Gc = this.f22201d;
            if (c0742Gc == null) {
                return;
            }
            if (c0742Gc.isConnected() || this.f22201d.isConnecting()) {
                this.f22201d.disconnect();
            }
            Binder.flushPendingCommands();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.common.internal.InterfaceC0627c
    public final void onConnectionFailed(J3.b bVar) {
        Locale locale = Locale.US;
        String str = "Remote ad service connection failed, cause: " + bVar.f4133H + ".";
        p120p3.h.b(str);
        this.f22198a.c(new C1274ep(1, str));
    }

    @Override // com.google.android.gms.common.internal.InterfaceC0626b
    public void onConnectionSuspended(int i8) {
        Locale locale = Locale.US;
        String str = "Remote ad service connection suspended, cause: " + i8 + ".";
        p120p3.h.b(str);
        this.f22198a.c(new C1274ep(1, str));
    }
}
