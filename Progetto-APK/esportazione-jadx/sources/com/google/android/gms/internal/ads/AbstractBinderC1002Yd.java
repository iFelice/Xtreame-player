package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Point;
import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.text.TextUtils;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebView;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;
import p090l3.C3099q;
import p167v3.C3193a;
import p167v3.C3194b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Yd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractBinderC1002Yd extends AbstractBinderC2328z5 implements InterfaceC1016Zd {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final /* synthetic */ int f17624G = 0;

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        R3.b bVar;
        InterfaceC0974Wd c0960Vd = null;
        switch (i8) {
            case 1:
                R3.a aVarJ0 = R3.b.j0(parcel.readStrongBinder());
                C1212de c1212de = (C1212de) A5.a(parcel, C1212de.CREATOR);
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalCallback");
                    c0960Vd = iInterfaceQueryLocalInterface instanceof InterfaceC0974Wd ? (InterfaceC0974Wd) iInterfaceQueryLocalInterface : new C0960Vd(strongBinder, "com.google.android.gms.ads.internal.signals.ISignalCallback", 0);
                }
                A5.b(parcel);
                ((p167v3.j) this).t1(aVarJ0, c1212de, c0960Vd);
                parcel2.writeNoException();
                return true;
            case 2:
                R3.a aVarJ1 = R3.b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                p167v3.j jVar = (p167v3.j) this;
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15754W6)).booleanValue()) {
                    MotionEvent motionEvent = (MotionEvent) R3.b.v0(aVarJ1);
                    C2298yc c2298yc = jVar.f30631O;
                    View view = c2298yc != null ? c2298yc.f22034G : null;
                    int[] iArr = new int[2];
                    if (view != null) {
                        view.getLocationOnScreen(iArr);
                    }
                    jVar.f30632P = new Point(((int) motionEvent.getRawX()) - iArr[0], ((int) motionEvent.getRawY()) - iArr[1]);
                    if (motionEvent.getAction() == 0) {
                        jVar.f30633Q = jVar.f30632P;
                    }
                    MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                    Point point = jVar.f30632P;
                    motionEventObtain.setLocation(point.x, point.y);
                    jVar.f30626J.f13700b.zzk(motionEventObtain);
                    motionEventObtain.recycle();
                }
                parcel2.writeNoException();
                return true;
            case 3:
                R3.b.j0(parcel.readStrongBinder());
                R3.b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                parcel2.writeNoException();
                A5.e(parcel2, null);
                return true;
            case 4:
                R3.b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                parcel2.writeNoException();
                A5.e(parcel2, null);
                return true;
            case 5:
                ArrayList arrayListCreateTypedArrayList = parcel.createTypedArrayList(Uri.CREATOR);
                R3.a aVarJ2 = R3.b.j0(parcel.readStrongBinder());
                InterfaceC1986sc interfaceC1986scZ3 = AbstractBinderC1934rc.z3(parcel.readStrongBinder());
                A5.b(parcel);
                ((p167v3.j) this).E3(arrayListCreateTypedArrayList, aVarJ2, interfaceC1986scZ3, false);
                parcel2.writeNoException();
                return true;
            case 6:
                ArrayList arrayListCreateTypedArrayList2 = parcel.createTypedArrayList(Uri.CREATOR);
                R3.a aVarJ3 = R3.b.j0(parcel.readStrongBinder());
                InterfaceC1986sc interfaceC1986scZ4 = AbstractBinderC1934rc.z3(parcel.readStrongBinder());
                A5.b(parcel);
                ((p167v3.j) this).D3(arrayListCreateTypedArrayList2, aVarJ3, interfaceC1986scZ4, false);
                parcel2.writeNoException();
                return true;
            case 7:
                C2298yc c2298yc2 = (C2298yc) A5.a(parcel, C2298yc.CREATOR);
                A5.b(parcel);
                p167v3.j jVar2 = (p167v3.j) this;
                jVar2.f30631O = c2298yc2;
                jVar2.f30628L.c(1);
                parcel2.writeNoException();
                return true;
            case 8:
                R3.a aVarJ4 = R3.b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                p167v3.j jVar3 = (p167v3.j) this;
                J7 j8 = Q7.N8;
                C3099q c3099q = C3099q.f26624d;
                if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
                    J7 j9 = Q7.f15738U6;
                    O7 o7 = c3099q.f26627c;
                    if (!((Boolean) o7.a(j9)).booleanValue()) {
                        jVar3.C3();
                    }
                    WebView webView = (WebView) R3.b.v0(aVarJ4);
                    if (webView == null) {
                        p120p3.h.d("The webView cannot be null.");
                    } else {
                        C1936re c1936re = AbstractC1988se.f20910e;
                        C3194b c3194b = jVar3.f30655m0;
                        p167v3.v vVar = new p167v3.v(webView, c3194b, c1936re);
                        webView.addJavascriptInterface(new C3193a(webView, jVar3.f30626J, jVar3.f30634R, jVar3.f30635S, jVar3.f30627K, jVar3.f30654l0, jVar3.f30655m0, vVar), "gmaSdk");
                        if (((Boolean) o7.a(Q7.X8)).booleanValue()) {
                            p083k3.l.f25980A.f25987g.f19815k.incrementAndGet();
                        }
                        if (((Boolean) AbstractC2175w8.f21643a.l()).booleanValue()) {
                            c3194b.b();
                            AbstractC1988se.f20909d.scheduleWithFixedDelay(new p167v3.u(vVar, 1), 0L, ((Integer) o7.a(Q7.Y8)).intValue(), TimeUnit.MILLISECONDS);
                        }
                        if (((Boolean) o7.a(j9)).booleanValue()) {
                            jVar3.C3();
                        }
                    }
                }
                parcel2.writeNoException();
                return true;
            case 9:
                ArrayList arrayListCreateTypedArrayList3 = parcel.createTypedArrayList(Uri.CREATOR);
                R3.a aVarJ5 = R3.b.j0(parcel.readStrongBinder());
                InterfaceC1986sc interfaceC1986scZ5 = AbstractBinderC1934rc.z3(parcel.readStrongBinder());
                A5.b(parcel);
                ((p167v3.j) this).E3(arrayListCreateTypedArrayList3, aVarJ5, interfaceC1986scZ5, true);
                parcel2.writeNoException();
                return true;
            case 10:
                ArrayList arrayListCreateTypedArrayList4 = parcel.createTypedArrayList(Uri.CREATOR);
                R3.a aVarJ6 = R3.b.j0(parcel.readStrongBinder());
                InterfaceC1986sc interfaceC1986scZ6 = AbstractBinderC1934rc.z3(parcel.readStrongBinder());
                A5.b(parcel);
                ((p167v3.j) this).D3(arrayListCreateTypedArrayList4, aVarJ6, interfaceC1986scZ6, true);
                parcel2.writeNoException();
                return true;
            case 11:
                R3.a aVarJ7 = R3.b.j0(parcel.readStrongBinder());
                R3.a aVarJ8 = R3.b.j0(parcel.readStrongBinder());
                String string = parcel.readString();
                R3.a aVarJ9 = R3.b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                p167v3.j jVar4 = (p167v3.j) this;
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.b9)).booleanValue()) {
                    Context context = (Context) R3.b.v0(aVarJ7);
                    p109o.e eVar = (p109o.e) R3.b.v0(aVarJ8);
                    C1088b8 c1088b8 = (C1088b8) R3.b.v0(aVarJ9);
                    C1139c8 c1139c8 = jVar4.f30653k0;
                    c1139c8.getClass();
                    if (context == null) {
                        throw new IllegalArgumentException("App Context parameter is null");
                    }
                    if (TextUtils.isEmpty(string)) {
                        throw new IllegalArgumentException("Origin parameter is empty or null");
                    }
                    if (eVar == null) {
                        throw new IllegalArgumentException("CustomTabsClient parameter is null");
                    }
                    c1139c8.f18189l = context;
                    c1139c8.f18185h = string;
                    C0783In c0783In = c1139c8.f18181d;
                    C1088b8 c1088b9 = new C1088b8(c1139c8, c1088b8, c0783In);
                    c1139c8.f18183f = c1088b9;
                    p109o.j jVarA = eVar.a(c1088b9);
                    c1139c8.f18184g = jVarA;
                    if (jVarA == null) {
                        p120p3.h.d("CustomTabsClient failed to create new session.");
                    }
                    U2.m.m(c0783In, "pact_action", new Pair("pe", "pact_init"));
                    if (((Boolean) AbstractC2175w8.f21644b.l()).booleanValue()) {
                        p167v3.x xVar = jVar4.f30654l0;
                        synchronized (xVar) {
                            xVar.c(true);
                            xVar.c(false);
                        }
                    }
                    if (((Boolean) AbstractC2175w8.f21643a.l()).booleanValue()) {
                        jVar4.f30655m0.b();
                    }
                    bVar = new R3.b(c1139c8.f18184g);
                } else {
                    bVar = new R3.b(null);
                }
                parcel2.writeNoException();
                A5.e(parcel2, bVar);
                return true;
            default:
                return false;
        }
    }
}
