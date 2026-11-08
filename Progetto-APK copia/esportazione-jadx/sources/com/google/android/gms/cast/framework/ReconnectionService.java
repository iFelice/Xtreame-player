package com.google.android.gms.cast.framework;

import D3.C0157a;
import D3.C0160d;
import D3.C0163g;
import D3.k;
import D3.s;
import D3.t;
import D3.v;
import D3.z;
import H3.b;
import R3.a;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.bumptech.glide.c;
import com.google.android.gms.internal.cast.AbstractC2434d;
import com.google.android.gms.internal.cast.AbstractC2501u;
import com.google.android.gms.internal.cast.C2442f;

/* JADX INFO: loaded from: classes.dex */
public class ReconnectionService extends Service {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final b f11731H = new b("ReconnectionService", null);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public v f11732G;

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        v vVar = this.f11732G;
        if (vVar != null) {
            try {
                t tVar = (t) vVar;
                Parcel parcelJ0 = tVar.j0();
                AbstractC2501u.c(parcelJ0, intent);
                Parcel parcelV0 = tVar.v0(3, parcelJ0);
                IBinder strongBinder = parcelV0.readStrongBinder();
                parcelV0.recycle();
                return strongBinder;
            } catch (RemoteException e8) {
                f11731H.a(e8, "Unable to call %s on %s.", "onBind", v.class.getSimpleName());
            }
        }
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        a aVarJ0;
        a aVarJ1;
        C0157a c0157aA = C0157a.a(this);
        c0157aA.getClass();
        c.d("Must be called from the main thread.");
        C0163g c0163g = c0157aA.f2340b;
        c0163g.getClass();
        v vVarA3 = null;
        try {
            z zVar = c0163g.f2383a;
            Parcel parcelV0 = zVar.v0(7, zVar.j0());
            aVarJ0 = R3.b.j0(parcelV0.readStrongBinder());
            parcelV0.recycle();
        } catch (RemoteException e8) {
            C0163g.f2382c.a(e8, "Unable to call %s on %s.", "getWrappedThis", z.class.getSimpleName());
            aVarJ0 = null;
        }
        c.d("Must be called from the main thread.");
        k kVar = c0157aA.f2341c;
        kVar.getClass();
        try {
            s sVar = kVar.f2387a;
            Parcel parcelV1 = sVar.v0(5, sVar.j0());
            aVarJ1 = R3.b.j0(parcelV1.readStrongBinder());
            parcelV1.recycle();
        } catch (RemoteException e9) {
            k.f2386b.a(e9, "Unable to call %s on %s.", "getWrappedThis", s.class.getSimpleName());
            aVarJ1 = null;
        }
        b bVar = AbstractC2434d.f22665a;
        if (aVarJ0 != null && aVarJ1 != null) {
            try {
                vVarA3 = AbstractC2434d.b(getApplicationContext()).A3(new R3.b(this), aVarJ0, aVarJ1);
            } catch (C0160d | RemoteException e10) {
                AbstractC2434d.f22665a.a(e10, "Unable to call %s on %s.", "newReconnectionServiceImpl", C2442f.class.getSimpleName());
            }
        }
        this.f11732G = vVarA3;
        if (vVarA3 != null) {
            try {
                t tVar = (t) vVarA3;
                tVar.r1(1, tVar.j0());
            } catch (RemoteException e11) {
                f11731H.a(e11, "Unable to call %s on %s.", "onCreate", v.class.getSimpleName());
            }
            super.onCreate();
        }
    }

    @Override // android.app.Service
    public final void onDestroy() {
        v vVar = this.f11732G;
        if (vVar != null) {
            try {
                t tVar = (t) vVar;
                tVar.r1(4, tVar.j0());
            } catch (RemoteException e8) {
                f11731H.a(e8, "Unable to call %s on %s.", "onDestroy", v.class.getSimpleName());
            }
            super.onDestroy();
        }
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i8, int i9) {
        v vVar = this.f11732G;
        if (vVar != null) {
            try {
                t tVar = (t) vVar;
                Parcel parcelJ0 = tVar.j0();
                AbstractC2501u.c(parcelJ0, intent);
                parcelJ0.writeInt(i8);
                parcelJ0.writeInt(i9);
                Parcel parcelV0 = tVar.v0(2, parcelJ0);
                int i10 = parcelV0.readInt();
                parcelV0.recycle();
                return i10;
            } catch (RemoteException e8) {
                f11731H.a(e8, "Unable to call %s on %s.", "onStartCommand", v.class.getSimpleName());
            }
        }
        return 2;
    }
}
