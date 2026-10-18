package com.google.android.gms.internal.ads;

import android.app.UiModeManager;
import android.media.MediaCodec;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.webkit.WebView;
import java.security.SecureRandom;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;
import p090l3.C3093n;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class Xu implements InterfaceC2109uv, InterfaceC1746nv, InterfaceC1743ns, InterfaceC1195dC, p011b2.d, Ox, p052g4.e, p052g4.d, Fz, InterfaceC1119bo, InterfaceC1103bN, NM {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f17528G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f17529H;

    public Xu(int i8) {
        this.f17528G = 13;
        this.f17529H = new int[2];
    }

    private final void h() {
        synchronized (((BinderC1228dv) this.f17529H)) {
            ((BinderC1228dv) this.f17529H).f18388Q = null;
        }
    }

    private final void i() {
        synchronized (((Lv) this.f17529H)) {
            ((Lv) this.f17529H).f14588P = null;
        }
    }

    public static Xu j(C2061tz c2061tz) {
        return new Xu(new Xu(c2061tz, 17));
    }

    public static Xu k(byte[] bArr) {
        return new Xu(NG.a(bArr), 22);
    }

    private final void m(Object obj) {
        C0777Ih c0777Ih = (C0777Ih) obj;
        synchronized (((BinderC1228dv) this.f17529H)) {
            try {
                C0777Ih c0777Ih2 = ((BinderC1228dv) this.f17529H).f18388Q;
                if (c0777Ih2 != null) {
                    c0777Ih2.b();
                }
                BinderC1228dv binderC1228dv = (BinderC1228dv) this.f17529H;
                binderC1228dv.f18388Q = c0777Ih;
                InterfaceC0715Ef interfaceC0715Ef = c0777Ih.f14009j;
                if (interfaceC0715Ef != null) {
                    interfaceC0715Ef.i0(binderC1228dv);
                }
                BinderC1228dv binderC1228dv2 = (BinderC1228dv) this.f17529H;
                binderC1228dv2.f18383L.b(new BinderC0792Jh(c0777Ih, binderC1228dv2, binderC1228dv2.f18383L, binderC1228dv2.f18385N));
                c0777Ih.a();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void n(Object obj) {
        C1118bn c1118bn = (C1118bn) obj;
        synchronized (((Lv) this.f17529H)) {
            try {
                ((Lv) this.f17529H).f14588P = c1118bn;
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15887m3)).booleanValue()) {
                    c1118bn.f18094s.f17128a = ((Lv) this.f17529H).f14583K;
                }
                ((Lv) this.f17529H).f14588P.a();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void o(Object obj) {
        C1118bn c1118bn = (C1118bn) obj;
        synchronized (((Mv) this.f17529H)) {
            try {
                ((Mv) this.f17529H).f14829J = c1118bn;
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15887m3)).booleanValue()) {
                    c1118bn.f18094s.f17128a = ((Mv) this.f17529H).f14828I;
                }
                ((Mv) this.f17529H).f14829J.a();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static Xu q(int i8) {
        K3.X x7 = HE.f13733a;
        byte[] bArr = new byte[i8];
        ((SecureRandom) HE.f13733a.get()).nextBytes(bArr);
        return new Xu(NG.a(bArr), 22);
    }

    @Override // com.google.android.gms.internal.ads.NM
    public final void a(Bundle bundle) {
        ((MediaCodec) this.f17529H).setParameters(bundle);
    }

    @Override // com.google.android.gms.internal.ads.NM
    public final void b(long j8, int i8, int i9, int i10) {
        ((MediaCodec) this.f17529H).queueInputBuffer(i8, 0, i9, j8, i10);
    }

    @Override // com.google.android.gms.internal.ads.Fz
    public final /* synthetic */ Iterator c(Xu xu, CharSequence charSequence) {
        return new Bz(this, charSequence);
    }

    @Override // com.google.android.gms.internal.ads.NM
    public final void d(int i8, p171w0.c cVar, long j8) {
        ((MediaCodec) this.f17529H).queueSecureInputBuffer(i8, 0, cVar.f30900i, j8, 0);
    }

    public final int e() {
        return ((NG) this.f17529H).f14895a.length;
    }

    public final C0701Dg f(InterfaceC2057tv interfaceC2057tv) {
        switch (this.f17528G) {
            case 0:
                return ((C1126bv) this.f17529H).d(interfaceC2057tv);
            default:
                return ((Jv) this.f17529H).c(interfaceC2057tv);
        }
    }

    public final JSONObject g(View view) {
        int currentModeType;
        switch (this.f17528G) {
            case 12:
                JSONObject jSONObjectA = Sx.a(0, 0, 0, 0);
                UiModeManager uiModeManager = Cw.f12723g;
                int i8 = (uiModeManager == null || (currentModeType = uiModeManager.getCurrentModeType()) == 1 || currentModeType != 4) ? 2 : Cw.f12724h;
                int i9 = i8 - 1;
                if (i8 == 0) {
                    throw null;
                }
                try {
                    jSONObjectA.put("noOutputDevice", i9 == 0);
                    break;
                } catch (JSONException e8) {
                    p113o3.r.s("Error with setting output device status", e8);
                }
                return jSONObjectA;
            default:
                if (view == null) {
                    return Sx.a(0, 0, 0, 0);
                }
                int[] iArr = (int[]) this.f17529H;
                int width = view.getWidth();
                int height = view.getHeight();
                view.getLocationOnScreen(iArr);
                int[] iArr2 = (int[]) this.f17529H;
                return Sx.a(iArr2[0], iArr2[1], width, height);
        }
    }

    public final void l(XG xg) {
        if (!xg.q()) {
            if (!(xg instanceof C1046aI)) {
                throw new IllegalArgumentException("Has a new type of ByteString been created? Found ".concat(String.valueOf(xg.getClass())));
            }
            C1046aI c1046aI = (C1046aI) xg;
            l(c1046aI.f17862J);
            l(c1046aI.f17863K);
            return;
        }
        int iBinarySearch = Arrays.binarySearch(C1046aI.f17860N, xg.n());
        if (iBinarySearch < 0) {
            iBinarySearch = (-(iBinarySearch + 1)) - 1;
        }
        ArrayDeque arrayDeque = (ArrayDeque) this.f17529H;
        int iA = C1046aI.A(iBinarySearch + 1);
        if (arrayDeque.isEmpty() || ((XG) ((ArrayDeque) this.f17529H).peek()).n() >= iA) {
            ((ArrayDeque) this.f17529H).push(xg);
            return;
        }
        int iA2 = C1046aI.A(iBinarySearch);
        XG c1046aI2 = (XG) ((ArrayDeque) this.f17529H).pop();
        while (!((ArrayDeque) this.f17529H).isEmpty() && ((XG) ((ArrayDeque) this.f17529H).peek()).n() < iA2) {
            c1046aI2 = new C1046aI((XG) ((ArrayDeque) this.f17529H).pop(), c1046aI2);
        }
        C1046aI c1046aI3 = new C1046aI(c1046aI2, xg);
        while (!((ArrayDeque) this.f17529H).isEmpty()) {
            int iBinarySearch2 = Arrays.binarySearch(C1046aI.f17860N, c1046aI3.f17861I);
            if (iBinarySearch2 < 0) {
                iBinarySearch2 = (-(iBinarySearch2 + 1)) - 1;
            }
            if (((XG) ((ArrayDeque) this.f17529H).peek()).n() >= C1046aI.A(iBinarySearch2 + 1)) {
                break;
            } else {
                c1046aI3 = new C1046aI((XG) ((ArrayDeque) this.f17529H).pop(), c1046aI3);
            }
        }
        ((ArrayDeque) this.f17529H).push(c1046aI3);
    }

    @Override // p052g4.d
    public final void onComplete(p052g4.h hVar) {
        Vy vy = (Vy) this.f17529H;
        if (((p052g4.r) hVar).f25372d) {
            vy.cancel(false);
            return;
        }
        if (hVar.h()) {
            vy.f(hVar.f());
            return;
        }
        Exception excE = hVar.e();
        if (excE == null) {
            throw new IllegalStateException();
        }
        vy.g(excE);
    }

    @Override // p052g4.e
    public final void onFailure(Exception exc) {
        C3093n c3093n = (C3093n) this.f17529H;
        c3093n.getClass();
        if (exc instanceof InterruptedException) {
            Thread.currentThread().interrupt();
        }
        ((C1180cy) c3093n.f26611c).b(2025, -1L, exc);
    }

    @Override // p011b2.d
    public final void onPostMessage(WebView webView, p011b2.c cVar, Uri uri, boolean z7, p011b2.a aVar) {
        try {
            JSONObject jSONObject = new JSONObject(cVar.a());
            String string = jSONObject.getString("method");
            String string2 = jSONObject.getJSONObject("data").getString("adSessionId");
            if (string.equals("startSession")) {
                Bx.a((Bx) this.f17529H, string2);
                return;
            }
            if (string.equals("finishSession")) {
                Bx bx = (Bx) this.f17529H;
                C2267xx c2267xx = (C2267xx) bx.f12519c.get(string2);
                if (c2267xx != null) {
                    c2267xx.a();
                    bx.f12519c.remove(string2);
                }
            }
        } catch (JSONException e8) {
            p113o3.r.s("Error parsing JS message in JavaScriptSessionService.", e8);
        }
    }

    public final int p() {
        int iOptInt = ((JSONObject) this.f17529H).optInt("media_type", -1);
        if (iOptInt != 0) {
            return iOptInt != 1 ? 3 : 1;
        }
        return 2;
    }

    public final byte[] r() {
        return ((NG) this.f17529H).b();
    }

    public final List s(CharSequence charSequence) {
        charSequence.getClass();
        Iterator itT = t(charSequence);
        ArrayList arrayList = new ArrayList();
        while (itT.hasNext()) {
            arrayList.add((String) itT.next());
        }
        return Collections.unmodifiableList(arrayList);
    }

    public final Iterator t(CharSequence charSequence) {
        return ((Fz) this.f17529H).c(this, charSequence);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1103bN
    public final int zza(Object obj) {
        PM pm = (PM) obj;
        Pattern pattern = AbstractC1154cN.f18220a;
        C1804p0 c1804p0 = (C1804p0) this.f17529H;
        pm.getClass();
        String str = c1804p0.f20383m;
        String str2 = pm.f15376b;
        return ((str2.equals(str) || str2.equals(AbstractC1154cN.b(c1804p0))) && pm.i(c1804p0, false)) ? 1 : 0;
    }

    @Override // com.google.android.gms.internal.ads.NM
    public final void zzb() {
    }

    @Override // com.google.android.gms.internal.ads.NM
    public final void zzc() {
    }

    @Override // com.google.android.gms.internal.ads.NM
    public final void zzg() {
    }

    @Override // com.google.android.gms.internal.ads.NM
    public final void zzh() {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1743ns, com.google.android.gms.internal.ads.InterfaceC1195dC
    /* JADX INFO: renamed from: zzb */
    public final void mo3zzb(Object obj) {
        switch (this.f17528G) {
            case 2:
                m(obj);
                return;
            case 3:
            case 4:
            default:
                int i8 = 0;
                ((AbstractC2059tx) this.f17529H).f21167j.set(false);
                if (obj == null) {
                    AbstractC2059tx.d((AbstractC2059tx) this.f17529H, true);
                    return;
                }
                Object obj2 = this.f17529H;
                C1696mx c1696mx = ((AbstractC2059tx) obj2).f21166i;
                c1696mx.f20026d = c1696mx.f20023a;
                c1696mx.f20025c = 0L;
                AbstractC2059tx abstractC2059tx = (AbstractC2059tx) obj2;
                synchronized (abstractC2059tx) {
                    P3.a aVar = abstractC2059tx.f21170m;
                    C1955rx c1955rx = new C1955rx(obj, aVar);
                    abstractC2059tx.f21165h.add(c1955rx);
                    p113o3.O.f27924l.post(new RunnableC2007sx(abstractC2059tx, 2));
                    RunnableC2007sx runnableC2007sx = new RunnableC2007sx(abstractC2059tx, i8);
                    ((P3.b) aVar).getClass();
                    abstractC2059tx.f21168k.schedule(runnableC2007sx, (c1955rx.f20812d + 100) - (System.currentTimeMillis() - c1955rx.f20810b), TimeUnit.MILLISECONDS);
                }
                AbstractC2059tx.d((AbstractC2059tx) this.f17529H, false);
                return;
            case 5:
                n(obj);
                return;
            case 6:
                o(obj);
                return;
        }
    }

    public /* synthetic */ Xu(Object obj, int i8) {
        this.f17528G = i8;
        this.f17529H = obj;
    }

    public Xu(Fz fz) {
        this.f17528G = 18;
        this.f17529H = fz;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1746nv
    /* JADX INFO: renamed from: zza, reason: collision with other method in class */
    public final void mo8zza(Object obj) {
        switch (this.f17528G) {
            case 1:
                ((InterfaceC1292f6) obj).U2((InterfaceC1137c6) this.f17529H);
                break;
            case 24:
                int i8 = C2135vK.f21463U;
                C2032tL c2032tL = (C2032tL) ((InterfaceC1152cL) obj);
                c2032tL.i(c2032tL.d(), 14, new C1669mL(28, 0));
                break;
            default:
                C2043th c2043th = (C2043th) this.f17529H;
                C2032tL c2032tL2 = (C2032tL) ((InterfaceC1152cL) obj);
                C1204dL c1204dLL = c2032tL2.l();
                c2032tL2.i(c1204dLL, 25, new C1773oL(3, c1204dLL, c2043th));
                break;
        }
    }

    public /* synthetic */ Xu() {
        this.f17528G = 23;
        this.f17529H = new ArrayDeque();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1743ns
    public final void zza() {
        switch (this.f17528G) {
            case 2:
                h();
                return;
            case 5:
                i();
                return;
            default:
                synchronized (((Mv) this.f17529H)) {
                    ((Mv) this.f17529H).f14829J = null;
                    break;
                }
                return;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    public final void zza(Throwable th) {
        ((AbstractC2059tx) this.f17529H).f21167j.set(false);
        if ((th instanceof C1540jx) && ((C1540jx) th).f19535G == 0) {
            throw null;
        }
        AbstractC2059tx.d((AbstractC2059tx) this.f17529H, true);
    }
}
