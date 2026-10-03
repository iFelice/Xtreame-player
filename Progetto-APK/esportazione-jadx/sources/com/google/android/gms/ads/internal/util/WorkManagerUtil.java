package com.google.android.gms.ads.internal.util;

import R3.a;
import android.content.Context;
import android.os.Build;
import android.os.Parcel;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.ads.internal.offline.buffering.OfflineNotificationPoster;
import com.google.android.gms.ads.internal.offline.buffering.OfflinePingSender;
import com.google.android.gms.internal.ads.A5;
import com.google.android.gms.internal.ads.AbstractBinderC2328z5;
import java.util.HashMap;
import java.util.LinkedHashSet;
import okhttp3.HttpUrl;
import p027d2.b;
import p027d2.d;
import p027d2.e;
import p034e2.y;
import p096m2.q;
import p096m2.u;
import p113o3.x;
import p120p3.h;
import p162u6.o;
import p162u6.s;

/* JADX INFO: loaded from: classes.dex */
public class WorkManagerUtil extends AbstractBinderC2328z5 implements x {
    @UsedByReflection("This class must be instantiated reflectively so that the default class loader can be used.")
    public WorkManagerUtil() {
        super("com.google.android.gms.ads.internal.util.IWorkManagerUtil");
    }

    public static void z3(Context context) {
        try {
            Context applicationContext = context.getApplicationContext();
            b bVar = new b(new U4.b());
            synchronized (y.f24841m) {
                try {
                    y yVar = y.f24839k;
                    if (yVar != null && y.f24840l != null) {
                        throw new IllegalStateException("WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information.");
                    }
                    if (yVar == null) {
                        Context applicationContext2 = applicationContext.getApplicationContext();
                        if (y.f24840l == null) {
                            y.f24840l = new y(applicationContext2, bVar, new u(bVar.f24610b));
                        }
                        y.f24839k = y.f24840l;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (IllegalStateException unused) {
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        if (i8 == 1) {
            a aVarJ0 = R3.b.j0(parcel.readStrongBinder());
            String string = parcel.readString();
            String string2 = parcel.readString();
            A5.b(parcel);
            boolean zZzf = zzf(aVarJ0, string, string2);
            parcel2.writeNoException();
            parcel2.writeInt(zZzf ? 1 : 0);
            return true;
        }
        if (i8 == 2) {
            a aVarJ1 = R3.b.j0(parcel.readStrongBinder());
            A5.b(parcel);
            zze(aVarJ1);
            parcel2.writeNoException();
            return true;
        }
        if (i8 != 3) {
            return false;
        }
        a aVarJ2 = R3.b.j0(parcel.readStrongBinder());
        p097m3.a aVar = (p097m3.a) A5.a(parcel, p097m3.a.CREATOR);
        A5.b(parcel);
        boolean zZzg = zzg(aVarJ2, aVar);
        parcel2.writeNoException();
        parcel2.writeInt(zZzg ? 1 : 0);
        return true;
    }

    @Override // p113o3.x
    public final void zze(a aVar) {
        Context context = (Context) R3.b.v0(aVar);
        z3(context);
        try {
            y yVarW = y.w(context);
            ((u) yVarW.f24845d).m(new p104n2.b(yVarW, "offline_ping_sender_work", 1));
            d dVar = new d(2, false, false, false, false, -1L, -1L, Build.VERSION.SDK_INT >= 24 ? o.D(new LinkedHashSet()) : s.f30544G);
            p027d2.o oVar = new p027d2.o(OfflinePingSender.class);
            oVar.f24648b.f27251j = dVar;
            oVar.f24649c.add("offline_ping_sender_work");
            yVarW.j(oVar.a());
        } catch (IllegalStateException e8) {
            h.h("Failed to instantiate WorkManager.", e8);
        }
    }

    @Override // p113o3.x
    public final boolean zzf(a aVar, String str, String str2) {
        return zzg(aVar, new p097m3.a(str, str2, HttpUrl.FRAGMENT_ENCODE_SET));
    }

    @Override // p113o3.x
    public final boolean zzg(a aVar, p097m3.a aVar2) throws Throwable {
        Context context = (Context) R3.b.v0(aVar);
        z3(context);
        d dVar = new d(2, false, false, false, false, -1L, -1L, Build.VERSION.SDK_INT >= 24 ? o.D(new LinkedHashSet()) : s.f30544G);
        HashMap map = new HashMap();
        map.put("uri", aVar2.f27281G);
        map.put("gws_query_id", aVar2.f27282H);
        map.put("image_url", aVar2.f27283I);
        e eVar = new e(map);
        e.c(eVar);
        p027d2.o oVar = new p027d2.o(OfflineNotificationPoster.class);
        q qVar = oVar.f24648b;
        qVar.f27251j = dVar;
        qVar.f27246e = eVar;
        oVar.f24649c.add("offline_notification_work");
        try {
            y.w(context).j(oVar.a());
            return true;
        } catch (IllegalStateException e8) {
            h.h("Failed to instantiate WorkManager.", e8);
            return false;
        }
    }
}
