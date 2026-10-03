package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.util.Log;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class H extends AbstractBinderC2653x implements M {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final AtomicReference f22927G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public boolean f22928H;

    public H() {
        super("com.google.android.gms.measurement.api.internal.IBundleReceiver");
        this.f22927G = new AtomicReference();
    }

    public static final Object v0(Bundle bundle, Class cls) {
        Object obj;
        if (bundle == null || (obj = bundle.get("r")) == null) {
            return null;
        }
        try {
            return cls.cast(obj);
        } catch (ClassCastException e8) {
            Log.w("AM", com.google.protobuf.U2.m("Unexpected object type. Expected, Received: ", cls.getCanonicalName(), ", ", obj.getClass().getCanonicalName()), e8);
            throw e8;
        }
    }

    @Override // com.google.android.gms.internal.measurement.M
    public final void V0(Bundle bundle) {
        AtomicReference atomicReference = this.f22927G;
        synchronized (atomicReference) {
            try {
                try {
                    atomicReference.set(bundle);
                    this.f22928H = true;
                    this.f22927G.notify();
                } catch (Throwable th) {
                    this.f22927G.notify();
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractBinderC2653x
    public final boolean Y(int i8, Parcel parcel, Parcel parcel2) {
        if (i8 != 1) {
            return false;
        }
        Bundle bundle = (Bundle) AbstractC2658y.a(parcel, Bundle.CREATOR);
        AbstractC2658y.b(parcel);
        V0(bundle);
        parcel2.writeNoException();
        return true;
    }

    public final Bundle j0(long j8) {
        Bundle bundle;
        AtomicReference atomicReference = this.f22927G;
        synchronized (atomicReference) {
            if (!this.f22928H) {
                try {
                    atomicReference.wait(j8);
                } catch (InterruptedException unused) {
                    return null;
                }
            }
            bundle = (Bundle) this.f22927G.get();
        }
        return bundle;
    }
}
