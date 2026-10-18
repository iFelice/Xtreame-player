package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.atomic.AtomicReference;
import p090l3.AbstractBinderC3072c0;
import p090l3.InterfaceC3074d0;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ew, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1281ew {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static C1281ew f18622d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f18623a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InterfaceC3074d0 f18624b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicReference f18625c = new AtomicReference();

    public C1281ew(Context context, InterfaceC3074d0 interfaceC3074d0) {
        this.f18623a = context;
        this.f18624b = interfaceC3074d0;
    }

    public static C1281ew a(Context context) {
        synchronized (C1281ew.class) {
            try {
                C1281ew c1281ew = f18622d;
                if (c1281ew != null) {
                    return c1281ew;
                }
                Context applicationContext = context.getApplicationContext();
                long jLongValue = ((Long) AbstractC1967s8.f20870b.l()).longValue();
                InterfaceC3074d0 interfaceC3074d0AsInterface = null;
                if (jLongValue > 0 && jLongValue <= 243220703) {
                    try {
                        interfaceC3074d0AsInterface = AbstractBinderC3072c0.asInterface((IBinder) applicationContext.getClassLoader().loadClass("com.google.android.gms.ads.internal.client.LiteSdkInfo").getConstructor(Context.class).newInstance(applicationContext));
                    } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e8) {
                        p120p3.h.e("Failed to retrieve lite SDK info.", e8);
                    }
                }
                C1281ew c1281ew2 = new C1281ew(applicationContext, interfaceC3074d0AsInterface);
                f18622d = c1281ew2;
                return c1281ew2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(InterfaceC1157cb interfaceC1157cb) {
        InterfaceC1157cb adapterCreator;
        boolean zBooleanValue = ((Boolean) AbstractC1967s8.f20869a.l()).booleanValue();
        AtomicReference atomicReference = this.f18625c;
        if (!zBooleanValue) {
            while (!atomicReference.compareAndSet(null, interfaceC1157cb)) {
                if (atomicReference.get() != null && atomicReference.get() != null) {
                    return;
                }
            }
            return;
        }
        InterfaceC3074d0 interfaceC3074d0 = this.f18624b;
        if (interfaceC3074d0 == null) {
            adapterCreator = null;
        } else {
            try {
                adapterCreator = interfaceC3074d0.getAdapterCreator();
            } catch (RemoteException unused) {
                adapterCreator = null;
            }
        }
        if (adapterCreator == null) {
            adapterCreator = interfaceC1157cb;
        }
        while (!atomicReference.compareAndSet(null, adapterCreator)) {
            if (atomicReference.get() != null && atomicReference.get() != null) {
                return;
            }
        }
    }
}
