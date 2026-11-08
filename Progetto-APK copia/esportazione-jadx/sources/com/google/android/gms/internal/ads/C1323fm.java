package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p090l3.C3099q;
import p090l3.InterfaceC3082h0;
import p090l3.InterfaceC3086j0;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.fm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1323fm implements InterfaceC0826Ll {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC1830pb f18792a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C2357zj f18793b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C1734nj f18794c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C0855Nk f18795d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Context f18796e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Ov f18797f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final p120p3.a f18798g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Yv f18799h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f18800i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f18801j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f18802k = true;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final C1570kb f18803l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final C1622lb f18804m;

    public C1323fm(C1570kb c1570kb, C1622lb c1622lb, InterfaceC1830pb interfaceC1830pb, C2357zj c2357zj, C1734nj c1734nj, C0855Nk c0855Nk, Context context, Ov ov, p120p3.a aVar, Yv yv) {
        this.f18803l = c1570kb;
        this.f18804m = c1622lb;
        this.f18792a = interfaceC1830pb;
        this.f18793b = c2357zj;
        this.f18794c = c1734nj;
        this.f18795d = c0855Nk;
        this.f18796e = context;
        this.f18797f = ov;
        this.f18798g = aVar;
        this.f18799h = yv;
    }

    public static final HashMap r(Map map) {
        HashMap map2 = new HashMap();
        if (map != null) {
            synchronized (map) {
                try {
                    for (Map.Entry entry : map.entrySet()) {
                        View view = (View) ((WeakReference) entry.getValue()).get();
                        if (view != null) {
                            map2.put((String) entry.getKey(), view);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return map2;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final void a(View view, Map map, Map map2, ImageView.ScaleType scaleType) {
        try {
            if (!this.f18800i) {
                this.f18800i = p083k3.l.f25980A.f25993m.j(this.f18796e, this.f18798g.f28196G, this.f18797f.f15222C.toString(), this.f18799h.f17679f);
            }
            if (this.f18802k) {
                InterfaceC1830pb interfaceC1830pb = this.f18792a;
                C2357zj c2357zj = this.f18793b;
                if (interfaceC1830pb != null && !interfaceC1830pb.t()) {
                    interfaceC1830pb.f();
                    c2357zj.zza();
                    return;
                }
                C1570kb c1570kb = this.f18803l;
                if (c1570kb != null) {
                    Parcel parcelN2 = c1570kb.n2(13, c1570kb.j0());
                    ClassLoader classLoader = A5.f11962a;
                    boolean z7 = parcelN2.readInt() != 0;
                    parcelN2.recycle();
                    if (!z7) {
                        c1570kb.O2(10, c1570kb.j0());
                        c2357zj.zza();
                        return;
                    }
                }
                C1622lb c1622lb = this.f18804m;
                if (c1622lb != null) {
                    Parcel parcelN3 = c1622lb.n2(11, c1622lb.j0());
                    ClassLoader classLoader2 = A5.f11962a;
                    boolean z8 = parcelN3.readInt() != 0;
                    parcelN3.recycle();
                    if (z8) {
                        return;
                    }
                    c1622lb.O2(8, c1622lb.j0());
                    c2357zj.zza();
                }
            }
        } catch (RemoteException e8) {
            p120p3.h.h("Failed to call recordImpression", e8);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final boolean b(Bundle bundle) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final void c(View view) {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final void d(MotionEvent motionEvent, View view) {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final void e(C2332z9 c2332z9) {
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00d8 A[Catch: RemoteException -> 0x0035, JSONException -> 0x0053, TRY_LEAVE, TryCatch #1 {JSONException -> 0x0053, blocks: (B:47:0x00bc, B:48:0x00d2, B:50:0x00d8), top: B:71:0x00bc }] */
    /* JADX WARN: Code duplicated, block: B:81:0x006e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:84:0x0053 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:87:0x00d2 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final void f(View view, Map map, Map map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        Object obj;
        ClassLoader classLoader;
        Iterator it;
        R3.a aVarZzn;
        try {
            R3.b bVar = new R3.b(view);
            JSONObject jSONObject = this.f18797f.f15265j0;
            boolean zBooleanValue = ((Boolean) C3099q.f26624d.f26627c.a(Q7.f15908p1)).booleanValue();
            InterfaceC1830pb interfaceC1830pb = this.f18792a;
            C1622lb c1622lb = this.f18804m;
            C1570kb c1570kb = this.f18803l;
            boolean z7 = true;
            if (zBooleanValue && jSONObject.length() != 0) {
                Map map3 = map == null ? new HashMap() : map;
                Map map4 = map2 == null ? new HashMap() : map2;
                HashMap map5 = new HashMap();
                map5.putAll(map3);
                map5.putAll(map4);
                Iterator<String> itKeys = jSONObject.keys();
                loop0: while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(next);
                    if (jSONArrayOptJSONArray != null) {
                        WeakReference weakReference = (WeakReference) map5.get(next);
                        if (weakReference != null && (obj = weakReference.get()) != null) {
                            Class<?> cls = obj.getClass();
                            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15916q1)).booleanValue() && next.equals("3010")) {
                                Object objV0 = null;
                                if (interfaceC1830pb != null) {
                                    try {
                                        aVarZzn = interfaceC1830pb.zzn();
                                    } catch (RemoteException | IllegalArgumentException unused) {
                                    }
                                } else if (c1570kb != null) {
                                    aVarZzn = c1570kb.z3();
                                } else {
                                    aVarZzn = c1622lb != null ? c1622lb.z3() : null;
                                }
                                if (aVarZzn != null) {
                                    objV0 = R3.b.v0(aVarZzn);
                                }
                                if (objV0 != null) {
                                    cls = objV0.getClass();
                                    ArrayList arrayList = new ArrayList();
                                    Q3.b.L(arrayList, jSONArrayOptJSONArray);
                                    p113o3.O o4 = p083k3.l.f25980A.f25983c;
                                    classLoader = this.f18796e.getClassLoader();
                                    it = arrayList.iterator();
                                    while (true) {
                                        if (it.hasNext()) {
                                            if (Class.forName((String) it.next(), false, classLoader).isAssignableFrom(cls)) {
                                            }
                                        }
                                    }
                                }
                            } else {
                                try {
                                    ArrayList arrayList2 = new ArrayList();
                                    Q3.b.L(arrayList2, jSONArrayOptJSONArray);
                                    p113o3.O o7 = p083k3.l.f25980A.f25983c;
                                    classLoader = this.f18796e.getClassLoader();
                                    it = arrayList2.iterator();
                                    while (true) {
                                        if (it.hasNext()) {
                                            if (Class.forName((String) it.next(), false, classLoader).isAssignableFrom(cls)) {
                                            }
                                        }
                                    }
                                } catch (JSONException unused2) {
                                    continue;
                                }
                            }
                        }
                        z7 = false;
                        break;
                    }
                }
            }
            this.f18802k = z7;
            HashMap mapR = r(map);
            HashMap mapR2 = r(map2);
            if (interfaceC1830pb != null) {
                interfaceC1830pb.j1(bVar, new R3.b(mapR), new R3.b(mapR2));
                return;
            }
            if (c1570kb != null) {
                R3.b bVar2 = new R3.b(mapR);
                R3.b bVar3 = new R3.b(mapR2);
                Parcel parcelJ0 = c1570kb.j0();
                A5.e(parcelJ0, bVar);
                A5.e(parcelJ0, bVar2);
                A5.e(parcelJ0, bVar3);
                c1570kb.O2(22, parcelJ0);
                Parcel parcelJ1 = c1570kb.j0();
                A5.e(parcelJ1, bVar);
                c1570kb.O2(12, parcelJ1);
                return;
            }
            if (c1622lb != null) {
                R3.b bVar4 = new R3.b(mapR);
                R3.b bVar5 = new R3.b(mapR2);
                Parcel parcelJ2 = c1622lb.j0();
                A5.e(parcelJ2, bVar);
                A5.e(parcelJ2, bVar4);
                A5.e(parcelJ2, bVar5);
                c1622lb.O2(22, parcelJ2);
                Parcel parcelJ3 = c1622lb.j0();
                A5.e(parcelJ3, bVar);
                c1622lb.O2(10, parcelJ3);
            }
        } catch (RemoteException e8) {
            p120p3.h.h("Failed to call trackView", e8);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final void g() {
        this.f18801j = true;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final void h(View view, View view2, Map map, Map map2, boolean z7, ImageView.ScaleType scaleType) {
        if (this.f18801j && this.f18797f.f15231L) {
            return;
        }
        q(view);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final void i(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final void j(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final JSONObject k(View view, Map map, Map map2, ImageView.ScaleType scaleType) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final void l(View view, View view2, Map map, Map map2, boolean z7, ImageView.ScaleType scaleType, int i8) {
        if (!this.f18801j) {
            p120p3.h.g("Custom click reporting for 3p ads failed. enableCustomClickGesture is not set.");
        } else if (this.f18797f.f15231L) {
            q(view2);
        } else {
            p120p3.h.g("Custom click reporting for 3p ads failed. Ad unit id not in allow list.");
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final void m(View view) {
        try {
            R3.b bVar = new R3.b(view);
            InterfaceC1830pb interfaceC1830pb = this.f18792a;
            if (interfaceC1830pb != null) {
                interfaceC1830pb.f2(bVar);
                return;
            }
            C1570kb c1570kb = this.f18803l;
            if (c1570kb != null) {
                Parcel parcelJ0 = c1570kb.j0();
                A5.e(parcelJ0, bVar);
                c1570kb.O2(16, parcelJ0);
            } else {
                C1622lb c1622lb = this.f18804m;
                if (c1622lb != null) {
                    Parcel parcelJ1 = c1622lb.j0();
                    A5.e(parcelJ1, bVar);
                    c1622lb.O2(14, parcelJ1);
                }
            }
        } catch (RemoteException e8) {
            p120p3.h.h("Failed to call untrackView", e8);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final void n(InterfaceC3082h0 interfaceC3082h0) {
        p120p3.h.g("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final JSONObject o(View view, Map map, Map map2, ImageView.ScaleType scaleType) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final void p(InterfaceC3086j0 interfaceC3086j0) {
        p120p3.h.g("Mute This Ad is not supported for 3rd party ads");
    }

    public final void q(View view) {
        InterfaceC1830pb interfaceC1830pb = this.f18792a;
        C0855Nk c0855Nk = this.f18795d;
        C1734nj c1734nj = this.f18794c;
        if (interfaceC1830pb != null) {
            try {
                if (!interfaceC1830pb.v()) {
                    interfaceC1830pb.l0(new R3.b(view));
                    c1734nj.x();
                    if (((Boolean) C3099q.f26624d.f26627c.a(Q7.aa)).booleanValue()) {
                        c0855Nk.q();
                        return;
                    }
                    return;
                }
            } catch (RemoteException e8) {
                p120p3.h.h("Failed to call handleClick", e8);
                return;
            }
        }
        C1570kb c1570kb = this.f18803l;
        if (c1570kb != null) {
            Parcel parcelN2 = c1570kb.n2(14, c1570kb.j0());
            ClassLoader classLoader = A5.f11962a;
            boolean z7 = parcelN2.readInt() != 0;
            parcelN2.recycle();
            if (!z7) {
                R3.b bVar = new R3.b(view);
                Parcel parcelJ0 = c1570kb.j0();
                A5.e(parcelJ0, bVar);
                c1570kb.O2(11, parcelJ0);
                c1734nj.x();
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.aa)).booleanValue()) {
                    c0855Nk.q();
                    return;
                }
                return;
            }
        }
        C1622lb c1622lb = this.f18804m;
        if (c1622lb != null) {
            Parcel parcelN3 = c1622lb.n2(12, c1622lb.j0());
            ClassLoader classLoader2 = A5.f11962a;
            boolean z8 = parcelN3.readInt() != 0;
            parcelN3.recycle();
            if (z8) {
                return;
            }
            R3.b bVar2 = new R3.b(view);
            Parcel parcelJ1 = c1622lb.j0();
            A5.e(parcelJ1, bVar2);
            c1622lb.O2(9, parcelJ1);
            c1734nj.x();
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.aa)).booleanValue()) {
                c0855Nk.q();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final boolean t() {
        return this.f18797f.f15231L;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final boolean v() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final void z(String str) {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final int zza() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final void zzg() {
        p120p3.h.g("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final void zzh() {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final void zzi() {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final void zzp() {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final void zzr() {
    }
}
