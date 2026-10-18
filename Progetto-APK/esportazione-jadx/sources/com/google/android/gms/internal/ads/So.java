package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import com.google.android.gms.common.internal.InterfaceC0626b;
import com.google.android.gms.common.internal.InterfaceC0627c;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public abstract class So implements InterfaceC0626b, InterfaceC0627c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C2040te f16526a = new C2040te();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f16527b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f16528c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f16529d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public C0973Wc f16530e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public C1706n6 f16531f;

    public static void b(Context context, C2040te c2040te, Executor executor) {
        if (((Boolean) AbstractC1604l8.f19721j.l()).booleanValue() || ((Boolean) AbstractC1604l8.f19719h.l()).booleanValue()) {
            Cw.h2(c2040te, new I7(context, 4), executor);
        }
    }

    public final void a() {
        synchronized (this.f16527b) {
            try {
                this.f16529d = true;
                if (this.f16531f.isConnected() || this.f16531f.isConnecting()) {
                    this.f16531f.disconnect();
                }
                Binder.flushPendingCommands();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void onConnectionFailed(J3.b bVar) {
        p120p3.h.b("Disconnected from remote ad request service.");
        this.f16526a.c(new C1274ep(1));
    }

    @Override // com.google.android.gms.common.internal.InterfaceC0626b
    public final void onConnectionSuspended(int i8) {
        p120p3.h.b("Cannot connect to remote service, fallback to local instance.");
    }
}
