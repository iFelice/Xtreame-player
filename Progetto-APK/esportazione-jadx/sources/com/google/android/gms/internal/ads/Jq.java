package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import java.util.Collections;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class Jq implements InterfaceC1845pq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14218a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f14219b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f14220c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f14221d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f14222e;

    public Jq(Context context, Executor executor, C0851Ng c0851Ng, Nv nv) {
        this.f14219b = context;
        this.f14220c = c0851Ng;
        this.f14221d = executor;
        this.f14222e = nv;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1845pq
    public final D4.b a(Tv tv, Ov ov) {
        String string;
        int i8 = this.f14218a;
        Object obj = this.f14221d;
        switch (i8) {
            case 0:
                try {
                    string = ov.f15288v.getString("tab_url");
                    break;
                } catch (Exception unused) {
                    string = null;
                }
                return Cw.d2(Cw.N1(null), new C0915Sa(this, string != null ? Uri.parse(string) : null, tv, ov, 4), (Executor) obj);
            default:
                C2040te c2040te = new C2040te();
                Tr tr = new Tr();
                Yu yu = new Yu(this, c2040te, tv, ov, tr, 4);
                synchronized (tr) {
                    tr.f16748G = yu;
                }
                Rv rv = ov.f15282s;
                X7 x7 = new X7(tr, rv.f16373b, rv.f16372a);
                return new C1950rs((Kw) obj, Iw.CUSTOM_RENDER_SYN, null, Gw.f13664d, Collections.emptyList(), ((IB) ((InterfaceExecutorServiceC1504jC) this.f14220c)).b(new CallableC1419he(new C0871Om(12, this, x7), 29))).g(Iw.CUSTOM_RENDER_ACK).n(new C1996sm(3, c2040te), AbstractC1988se.f20911f).c();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1845pq
    public final boolean b(Tv tv, Ov ov) {
        String string;
        Rv rv;
        int i8 = this.f14218a;
        Object obj = this.f14219b;
        switch (i8) {
            case 0:
                Context context = (Context) obj;
                if (!(context instanceof Activity) || !C1036a8.a(context)) {
                    return false;
                }
                try {
                    string = ov.f15288v.getString("tab_url");
                    break;
                } catch (Exception unused) {
                    string = null;
                }
                return !TextUtils.isEmpty(string);
            default:
                return (((Z7) obj) == null || (rv = ov.f15282s) == null || rv.f16372a == null) ? false : true;
        }
    }

    public Jq(Kw kw, InterfaceExecutorServiceC1504jC interfaceExecutorServiceC1504jC, Z7 z7, Ur ur) {
        this.f14221d = kw;
        this.f14220c = interfaceExecutorServiceC1504jC;
        this.f14219b = z7;
        this.f14222e = ur;
    }
}
