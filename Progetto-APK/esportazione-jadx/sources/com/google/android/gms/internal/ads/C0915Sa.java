package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.net.Uri;
import android.view.InputEvent;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Sa, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0915Sa implements RB {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16431a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f16432b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f16433c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f16434d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f16435e;

    public C0915Sa(C0785Ja c0785Ja, String str, InterfaceC0859Oa interfaceC0859Oa, InterfaceC0845Na interfaceC0845Na) {
        this.f16431a = 0;
        this.f16435e = c0785Ja;
        this.f16432b = str;
        this.f16434d = interfaceC0859Oa;
        this.f16433c = interfaceC0845Na;
    }

    public final D4.b a(Object obj) {
        C2040te c2040te = new C2040te();
        C0725Fa c0725FaA = ((C0785Ja) this.f16435e).a();
        p113o3.I.k("callJs > getEngine: Promise created");
        c0725FaA.r(new C2246xc(this, c0725FaA, obj, c2040te, 8, 0), new C2218x(c2040te, c0725FaA, 13));
        return c2040te;
    }

    @Override // com.google.android.gms.internal.ads.RB
    public final D4.b zza(Object obj) {
        D4.b bVarH1;
        C1298fC c1298fCN1;
        int i8 = 3;
        Object obj2 = null;
        switch (this.f16431a) {
            case 0:
                return a(obj);
            case 1:
                C1784oh c1784oh = (C1784oh) this.f16433c;
                Uri.Builder builder = (Uri.Builder) this.f16434d;
                String str = (String) this.f16432b;
                InputEvent inputEvent = (InputEvent) this.f16435e;
                c1784oh.getClass();
                if (((Integer) obj).intValue() != 1) {
                    builder.appendQueryParameter((String) C3099q.f26624d.f26627c.a(Q7.y9), "10");
                    return Cw.N1(builder.toString());
                }
                Uri.Builder builderBuildUpon = builder.build().buildUpon();
                J7 j8 = Q7.z9;
                C3099q c3099q = C3099q.f26624d;
                builderBuildUpon.appendQueryParameter((String) c3099q.f26627c.a(j8), "1");
                J7 j9 = Q7.y9;
                O7 o7 = c3099q.f26627c;
                builderBuildUpon.appendQueryParameter((String) o7.a(j9), "12");
                if (str.contains((CharSequence) o7.a(Q7.A9))) {
                    builderBuildUpon.authority((String) o7.a(Q7.B9));
                }
                Uri uriBuild = builderBuildUpon.build();
                C1741nq c1741nq = c1784oh.f20305c;
                c1741nq.getClass();
                try {
                    I1.d dVar = c1741nq.f20200a;
                    Objects.requireNonNull(dVar);
                    bVarH1 = dVar.e(uriBuild, inputEvent);
                    break;
                } catch (Exception e8) {
                    bVarH1 = Cw.H1(e8);
                }
                return Cw.d2(AbstractC1040aC.r(bVarH1), new No(builder, i8), c1784oh.f20308f);
            case 2:
                C1481ip c1481ip = (C1481ip) this.f16433c;
                return Cw.d2(((InterfaceC1430hp) this.f16434d).b((C0973Wc) this.f16435e), (RB) this.f16432b, c1481ip.f19351a);
            case 3:
                return ((C2312yq) this.f16433c).c((Ov) this.f16434d, (Tv) this.f16435e, (C0871Om) this.f16432b);
            case 4:
                Jq jq = (Jq) this.f16433c;
                Uri uri = (Uri) this.f16434d;
                Tv tv = (Tv) this.f16435e;
                Ov ov = (Ov) this.f16432b;
                jq.getClass();
                try {
                    p096m2.l lVarA = new p109o.g().a();
                    ((Intent) lVarA.f27231H).setData(uri);
                    p105n3.f fVar = new p105n3.f((Intent) lVarA.f27231H, null);
                    C2040te c2040te = new C2040te();
                    C0836Mg c0836MgC = ((C0851Ng) jq.f14220c).c(new p004a3.b(tv, ov, (String) null), new C2218x(22, new O1.J(c2040te, 3), obj2));
                    c2040te.b(new AdOverlayInfoParcel(fVar, null, (C0896Qj) c0836MgC.f14771q0.zzb(), null, new p120p3.a(0, 0, false, false), null, null));
                    ((Nv) jq.f14222e).c(2, 3);
                    return Cw.N1(c0836MgC.G0());
                } catch (Throwable th) {
                    p120p3.h.e("Error in CustomTabsAdRenderer", th);
                    throw th;
                }
            case 5:
                return ((C2312yq) this.f16433c).c((Ov) this.f16434d, (Tv) this.f16435e, (C0871Om) this.f16432b);
            case 6:
                C1949rr c1949rr = (C1949rr) this.f16433c;
                Ov ov2 = (Ov) this.f16434d;
                Tv tv2 = (Tv) this.f16435e;
                InterfaceC1845pq interfaceC1845pq = (InterfaceC1845pq) this.f16432b;
                Ow owH = U4.a.h(c1949rr.f20791j, 12);
                owH.s(ov2.f15224E);
                owH.zzi();
                D4.b bVarE2 = Cw.e2(interfaceC1845pq.a(tv2, ov2), ov2.f15237R, TimeUnit.MILLISECONDS, c1949rr.f20787f);
                c1949rr.f20789h.b(tv2, ov2, bVarE2, c1949rr.f20784c);
                com.google.android.gms.internal.measurement.H1.N(bVarE2, c1949rr.f20792k, owH, false);
                return bVarE2;
            case 7:
                return ((C2312yq) this.f16433c).c((Ov) this.f16434d, (Tv) this.f16435e, (C0871Om) this.f16432b);
            default:
                Aw aw = (Aw) this.f16433c;
                Xu xu = (Xu) this.f16434d;
                p004a3.b bVar = (p004a3.b) this.f16435e;
                C1486iv c1486iv = (C1486iv) this.f16432b;
                C1851pw c1851pw = (C1851pw) obj;
                synchronized (aw) {
                    try {
                        aw.f12074d = true;
                        c1851pw.f20503a = ((C1384gv) ((InterfaceC2161vv) xu.f17529H)).f19024a;
                        if (aw.f12073c) {
                            c1298fCN1 = Cw.N1(new C2214ww(c1851pw, c1486iv));
                        } else {
                            bVar.t(c1486iv.f19386g, c1851pw);
                            c1298fCN1 = Cw.N1(null);
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                return c1298fCN1;
        }
    }

    public /* synthetic */ C0915Sa(C1784oh c1784oh, Uri.Builder builder, String str, InputEvent inputEvent) {
        this.f16431a = 1;
        this.f16433c = c1784oh;
        this.f16434d = builder;
        this.f16432b = str;
        this.f16435e = inputEvent;
    }

    public /* synthetic */ C0915Sa(Object obj, Object obj2, Object obj3, Object obj4, int i8) {
        this.f16431a = i8;
        this.f16433c = obj;
        this.f16434d = obj2;
        this.f16435e = obj3;
        this.f16432b = obj4;
    }
}
