package D3;

import B0.w0;
import C2.C0091g;
import C3.AbstractC0107g;
import C3.C0104d;
import C3.C0105e;
import E1.e0;
import K3.AbstractC0245s;
import K3.C0236i;
import K3.C0237j;
import K3.C0241n;
import K3.C0242o;
import K3.K;
import K3.L;
import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.cast.AbstractC2434d;
import com.google.android.gms.internal.cast.AbstractC2501u;
import com.google.android.gms.internal.cast.BinderC2486q;
import com.google.android.gms.internal.cast.C2442f;
import com.google.android.gms.internal.cast.P1;
import java.util.HashSet;

/* JADX INFO: renamed from: D3.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0159c extends AbstractC0162f {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final H3.b f2368m = new H3.b("CastSession", null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f2369c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final HashSet f2370d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final r f2371e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final C0158b f2372f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final BinderC2486q f2373g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final F3.l f2374h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public C3.F f2375i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public E3.j f2376j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public CastDevice f2377k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public P1 f2378l;

    public C0159c(Context context, String str, String str2, C0158b c0158b, BinderC2486q binderC2486q, F3.l lVar) {
        super(context, str, str2);
        this.f2370d = new HashSet();
        this.f2369c = context.getApplicationContext();
        this.f2372f = c0158b;
        this.f2373g = binderC2486q;
        this.f2374h = lVar;
        R3.a aVarC = c();
        H h8 = new H(this);
        H3.b bVar = AbstractC2434d.f22665a;
        r rVarZ3 = null;
        if (aVarC != null) {
            try {
                rVarZ3 = AbstractC2434d.b(context).z3(c0158b, aVarC, h8);
            } catch (C0160d | RemoteException e8) {
                AbstractC2434d.f22665a.a(e8, "Unable to call %s on %s.", "newCastSessionImpl", C2442f.class.getSimpleName());
            }
        }
        this.f2371e = rVarZ3;
    }

    public static void d(C0159c c0159c, int i8) {
        F3.l lVar = c0159c.f2374h;
        if (lVar.f3240q) {
            lVar.f3240q = false;
            E3.j jVar = lVar.f3237n;
            if (jVar != null) {
                F3.k kVar = lVar.f3236m;
                com.bumptech.glide.c.d("Must be called from the main thread.");
                if (kVar != null) {
                    jVar.f2910i.remove(kVar);
                }
            }
            lVar.f3226c.j0(null);
            e0 e0Var = lVar.f3231h;
            if (e0Var != null) {
                e0Var.c();
                e0Var.f2728h = null;
            }
            e0 e0Var2 = lVar.f3232i;
            if (e0Var2 != null) {
                e0Var2.c();
                e0Var2.f2728h = null;
            }
            MediaSessionCompat mediaSessionCompat = lVar.f3239p;
            if (mediaSessionCompat != null) {
                mediaSessionCompat.setCallback(null);
                lVar.f3239p.setMetadata(new MediaMetadataCompat.Builder().build());
                lVar.j(0, null);
            }
            MediaSessionCompat mediaSessionCompat2 = lVar.f3239p;
            if (mediaSessionCompat2 != null) {
                mediaSessionCompat2.setActive(false);
                lVar.f3239p.release();
                lVar.f3239p = null;
            }
            lVar.f3237n = null;
            lVar.f3238o = null;
            lVar.getClass();
            lVar.h();
            if (i8 == 0) {
                lVar.i();
            }
        }
        C3.F f8 = c0159c.f2375i;
        if (f8 != null) {
            K3.r rVarA = AbstractC0245s.a();
            rVarA.f4570c = C3.z.f1626G;
            rVarA.f4568a = 8403;
            f8.doWrite(rVarA.a());
            f8.e();
            C0236i c0236i = f8.registerListener(f8.f1443a, "castDeviceControllerListenerKey").f4556b;
            com.bumptech.glide.c.i(c0236i, "Key must not be null");
            f8.doUnregisterEventListener(c0236i, 8415);
            c0159c.f2375i = null;
        }
        c0159c.f2377k = null;
        E3.j jVar2 = c0159c.f2376j;
        if (jVar2 != null) {
            jVar2.s(null);
            c0159c.f2376j = null;
        }
    }

    public static void e(C0159c c0159c, String str, p052g4.h hVar) {
        H3.b bVar = f2368m;
        if (c0159c.f2371e == null) {
            return;
        }
        try {
            boolean zH = hVar.h();
            r rVar = c0159c.f2371e;
            if (zH) {
                H3.v vVar = (H3.v) hVar.f();
                Status status = vVar.f3728G;
                if (status != null && status.f11756G <= 0) {
                    bVar.b("%s() -> success result", str);
                    E3.j jVar = new E3.j(new H3.n());
                    c0159c.f2376j = jVar;
                    jVar.s(c0159c.f2375i);
                    E3.j jVar2 = c0159c.f2376j;
                    F3.k kVar = new F3.k(c0159c, 2);
                    jVar2.getClass();
                    com.bumptech.glide.c.d("Must be called from the main thread.");
                    jVar2.f2910i.add(kVar);
                    c0159c.f2376j.r();
                    F3.l lVar = c0159c.f2374h;
                    E3.j jVar3 = c0159c.f2376j;
                    com.bumptech.glide.c.d("Must be called from the main thread.");
                    lVar.a(jVar3, c0159c.f2377k);
                    C0104d c0104d = vVar.f3729H;
                    com.bumptech.glide.c.h(c0104d);
                    String str2 = vVar.f3730I;
                    String str3 = vVar.f3731J;
                    com.bumptech.glide.c.h(str3);
                    boolean z7 = vVar.f3732K;
                    p pVar = (p) rVar;
                    Parcel parcelJ0 = pVar.j0();
                    AbstractC2501u.c(parcelJ0, c0104d);
                    parcelJ0.writeString(str2);
                    parcelJ0.writeString(str3);
                    parcelJ0.writeInt(z7 ? 1 : 0);
                    pVar.r1(4, parcelJ0);
                    return;
                }
                if (status != null) {
                    bVar.b("%s() -> failure result", str);
                    int i8 = status.f11756G;
                    p pVar2 = (p) rVar;
                    Parcel parcelJ1 = pVar2.j0();
                    parcelJ1.writeInt(i8);
                    pVar2.r1(5, parcelJ1);
                    return;
                }
            } else {
                Exception excE = hVar.e();
                if (excE instanceof com.google.android.gms.common.api.h) {
                    int i9 = ((com.google.android.gms.common.api.h) excE).f11763G.f11756G;
                    p pVar3 = (p) rVar;
                    Parcel parcelJ2 = pVar3.j0();
                    parcelJ2.writeInt(i9);
                    pVar3.r1(5, parcelJ2);
                    return;
                }
            }
            p pVar4 = (p) rVar;
            Parcel parcelJ3 = pVar4.j0();
            parcelJ3.writeInt(2476);
            pVar4.r1(5, parcelJ3);
        } catch (RemoteException e8) {
            bVar.a(e8, "Unable to call %s on %s.", "methods", r.class.getSimpleName());
        }
    }

    public final void f(Bundle bundle) {
        CastDevice castDeviceI = CastDevice.i(bundle);
        this.f2377k = castDeviceI;
        if (castDeviceI == null) {
            com.bumptech.glide.c.d("Must be called from the main thread.");
            y yVar = this.f2381a;
            if (yVar != null) {
                try {
                    w wVar = (w) yVar;
                    Parcel parcelV0 = wVar.v0(9, wVar.j0());
                    int i8 = AbstractC2501u.f22800a;
                    boolean z7 = parcelV0.readInt() != 0;
                    parcelV0.recycle();
                    if (z7) {
                        y yVar2 = this.f2381a;
                        if (yVar2 == null) {
                            return;
                        }
                        try {
                            w wVar2 = (w) yVar2;
                            Parcel parcelJ0 = wVar2.j0();
                            parcelJ0.writeInt(2153);
                            wVar2.r1(15, parcelJ0);
                            return;
                        } catch (RemoteException e8) {
                            AbstractC0162f.f2380b.a(e8, "Unable to call %s on %s.", "notifyFailedToResumeSession", y.class.getSimpleName());
                            return;
                        }
                    }
                } catch (RemoteException e9) {
                    AbstractC0162f.f2380b.a(e9, "Unable to call %s on %s.", "isResuming", y.class.getSimpleName());
                }
            }
            y yVar3 = this.f2381a;
            if (yVar3 == null) {
                return;
            }
            try {
                w wVar3 = (w) yVar3;
                Parcel parcelJ1 = wVar3.j0();
                parcelJ1.writeInt(2151);
                wVar3.r1(12, parcelJ1);
                return;
            } catch (RemoteException e10) {
                AbstractC0162f.f2380b.a(e10, "Unable to call %s on %s.", "notifyFailedToStartSession", y.class.getSimpleName());
                return;
            }
        }
        C3.F f8 = this.f2375i;
        if (f8 != null) {
            K3.r rVarA = AbstractC0245s.a();
            rVarA.f4570c = C3.z.f1626G;
            rVarA.f4568a = 8403;
            f8.doWrite(rVarA.a());
            f8.e();
            C0236i c0236i = f8.registerListener(f8.f1443a, "castDeviceControllerListenerKey").f4556b;
            com.bumptech.glide.c.i(c0236i, "Key must not be null");
            f8.doUnregisterEventListener(c0236i, 8415);
            this.f2375i = null;
        }
        f2368m.b("Acquiring a connection to Google Play Services for %s", this.f2377k);
        CastDevice castDevice = this.f2377k;
        com.bumptech.glide.c.h(castDevice);
        Bundle bundle2 = new Bundle();
        C0158b c0158b = this.f2372f;
        E3.b bVar = c0158b == null ? null : c0158b.f2357L;
        E3.g gVar = bVar != null ? bVar.f2834J : null;
        boolean z8 = bVar != null && bVar.f2835K;
        bundle2.putBoolean("com.google.android.gms.cast.EXTRA_CAST_FRAMEWORK_NOTIFICATION_ENABLED", gVar != null);
        bundle2.putBoolean("com.google.android.gms.cast.EXTRA_CAST_REMOTE_CONTROL_NOTIFICATION_ENABLED", z8);
        bundle2.putBoolean("com.google.android.gms.cast.EXTRA_CAST_ALWAYS_FOLLOW_SESSION_ENABLED", this.f2373g.f22785L);
        w0 w0Var = new w0(castDevice, new I(this));
        w0Var.f1123K = bundle2;
        C0105e c0105e = new C0105e(w0Var);
        Context context = this.f2369c;
        int i9 = AbstractC0107g.f1510a;
        C3.F f9 = new C3.F(context, c0105e);
        f9.f1463u.add(new j(this));
        this.f2375i = f9;
        C0237j c0237jRegisterListener = f9.registerListener(f9.f1443a, "castDeviceControllerListenerKey");
        C0241n c0241n = new C0241n();
        C0091g c0091g = new C0091g(f9, 21);
        C3.C c8 = C3.C.f1436G;
        c0241n.f4563c = c0237jRegisterListener;
        c0241n.f4561a = c0091g;
        c0241n.f4562b = c8;
        c0241n.f4564d = new J3.d[]{C3.y.f1621a};
        c0241n.f4565e = 8428;
        com.bumptech.glide.c.a("Must set holder", c0237jRegisterListener != null);
        C0236i c0236i2 = c0241n.f4563c.f4556b;
        com.bumptech.glide.c.i(c0236i2, "Key must not be null");
        f9.doRegisterEventListener(new C0242o(new K(c0241n, c0241n.f4563c, c0241n.f4564d, c0241n.f4565e), new L(c0241n, c0236i2)));
    }
}
