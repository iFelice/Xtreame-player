package com.google.android.gms.internal.cast;

import D3.C0158b;
import D3.C0160d;
import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.HashMap;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2434d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final H3.b f22665a = new H3.b("CastDynamiteModule", null);

    public static D3.o a(Context context, C0158b c0158b, InterfaceC2450h interfaceC2450h, HashMap map) throws C0160d {
        D3.o mVar;
        C2442f c2442fB = b(context);
        R3.b bVar = new R3.b(context.getApplicationContext());
        Parcel parcelJ0 = c2442fB.j0();
        AbstractC2501u.d(parcelJ0, bVar);
        AbstractC2501u.c(parcelJ0, c0158b);
        AbstractC2501u.d(parcelJ0, interfaceC2450h);
        parcelJ0.writeMap(map);
        Parcel parcelV0 = c2442fB.v0(1, parcelJ0);
        IBinder strongBinder = parcelV0.readStrongBinder();
        int i8 = D3.n.f2388H;
        if (strongBinder == null) {
            mVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.cast.framework.ICastContext");
            mVar = iInterfaceQueryLocalInterface instanceof D3.o ? (D3.o) iInterfaceQueryLocalInterface : new D3.m(strongBinder, "com.google.android.gms.cast.framework.ICastContext", 2);
        }
        parcelV0.recycle();
        return mVar;
    }

    public static C2442f b(Context context) throws C0160d {
        try {
            IBinder iBinderB = S3.c.c(context, S3.c.f6415b, "com.google.android.gms.cast.framework.dynamite").b("com.google.android.gms.cast.framework.internal.CastDynamiteModuleImpl");
            if (iBinderB == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinderB.queryLocalInterface("com.google.android.gms.cast.framework.internal.ICastDynamiteModule");
            return iInterfaceQueryLocalInterface instanceof C2442f ? (C2442f) iInterfaceQueryLocalInterface : new C2442f(iBinderB, "com.google.android.gms.cast.framework.internal.ICastDynamiteModule", 2);
        } catch (S3.a e8) {
            throw new C0160d(e8);
        }
    }
}
