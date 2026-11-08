package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.os.Looper;
import android.os.Message;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class M extends X3.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AbstractC0631g f11803a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public M(AbstractC0631g abstractC0631g, Looper looper) {
        super(looper, 2);
        this.f11803a = abstractC0631g;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        Object obj;
        if (this.f11803a.zzd.get() != message.arg1) {
            int i8 = message.what;
            if (i8 == 2 || i8 == 1 || i8 == 7) {
                E e8 = (E) message.obj;
                e8.getClass();
                e8.e();
                return;
            }
            return;
        }
        int i9 = message.what;
        if ((i9 == 1 || i9 == 7 || ((i9 == 4 && !this.f11803a.enableLocalFallback()) || message.what == 5)) && !this.f11803a.isConnecting()) {
            E e9 = (E) message.obj;
            e9.getClass();
            e9.e();
            return;
        }
        int i10 = message.what;
        if (i10 == 4) {
            this.f11803a.zzC = new J3.b(message.arg2);
            if (AbstractC0631g.zzo(this.f11803a)) {
                AbstractC0631g abstractC0631g = this.f11803a;
                if (!abstractC0631g.zzD) {
                    abstractC0631g.c(3, null);
                    return;
                }
            }
            AbstractC0631g abstractC0631g2 = this.f11803a;
            J3.b bVar = abstractC0631g2.zzC != null ? abstractC0631g2.zzC : new J3.b(8);
            this.f11803a.zzc.a(bVar);
            this.f11803a.onConnectionFailed(bVar);
            return;
        }
        if (i10 == 5) {
            AbstractC0631g abstractC0631g3 = this.f11803a;
            J3.b bVar2 = abstractC0631g3.zzC != null ? abstractC0631g3.zzC : new J3.b(8);
            this.f11803a.zzc.a(bVar2);
            this.f11803a.onConnectionFailed(bVar2);
            return;
        }
        if (i10 == 3) {
            Object obj2 = message.obj;
            J3.b bVar3 = new J3.b(message.arg2, obj2 instanceof PendingIntent ? (PendingIntent) obj2 : null);
            this.f11803a.zzc.a(bVar3);
            this.f11803a.onConnectionFailed(bVar3);
            return;
        }
        if (i10 == 6) {
            this.f11803a.c(5, null);
            AbstractC0631g abstractC0631g4 = this.f11803a;
            if (abstractC0631g4.zzw != null) {
                abstractC0631g4.zzw.onConnectionSuspended(message.arg2);
            }
            this.f11803a.onConnectionSuspended(message.arg2);
            AbstractC0631g.zzn(this.f11803a, 5, 1, null);
            return;
        }
        if (i10 == 2 && !this.f11803a.isConnected()) {
            E e10 = (E) message.obj;
            e10.getClass();
            e10.e();
            return;
        }
        int i11 = message.what;
        if (i11 != 2 && i11 != 1 && i11 != 7) {
            Log.wtf("GmsClient", p000a.r.f("Don't know how to handle message: ", i11), new Exception());
            return;
        }
        E e11 = (E) message.obj;
        synchronized (e11) {
            try {
                obj = e11.f11791a;
                if (e11.f11792b) {
                    Log.w("GmsClient", "Callback proxy " + e11.toString() + " being reused. This is not safe.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (obj != null) {
            e11.a(obj);
        }
        synchronized (e11) {
            e11.f11792b = true;
        }
        e11.e();
    }
}
