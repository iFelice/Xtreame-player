package p090l3;

import R3.a;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.internal.ads.AbstractC1812p8;
import com.google.android.gms.internal.ads.BinderC1054ab;
import com.google.android.gms.internal.ads.L5;
import com.google.android.gms.internal.ads.Q7;
import java.util.concurrent.atomic.AtomicBoolean;
import p004a3.b;
import p043f3.g;
import p043f3.m;
import p086l.RunnableC3036k;
import p096m2.l;
import p120p3.d;
import p120p3.h;

/* JADX INFO: loaded from: classes.dex */
public final class I0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BinderC1054ab f26473a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final c1 f26474b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final b f26475c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final H0 f26476d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public InterfaceC3067a f26477e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public p043f3.b f26478f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public g[] f26479g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public p051g3.b f26480h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public J f26481i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f26482j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ViewGroup f26483k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f26484l;

    public I0(ViewGroup viewGroup, AttributeSet attributeSet) {
        g[] gVarArrQ;
        d1 d1Var;
        c1 c1Var = c1.f26545a;
        this.f26473a = new BinderC1054ab();
        this.f26475c = new b(1);
        this.f26476d = new H0(this);
        this.f26483k = viewGroup;
        this.f26474b = c1Var;
        this.f26481i = null;
        new AtomicBoolean(false);
        this.f26484l = 0;
        if (attributeSet != null) {
            Context context = viewGroup.getContext();
            try {
                TypedArray typedArrayObtainAttributes = context.getResources().obtainAttributes(attributeSet, m.f25185a);
                String string = typedArrayObtainAttributes.getString(0);
                String string2 = typedArrayObtainAttributes.getString(1);
                boolean z7 = !TextUtils.isEmpty(string);
                boolean z8 = !TextUtils.isEmpty(string2);
                if (z7 && !z8) {
                    gVarArrQ = l.q(string);
                } else {
                    if (z7 || !z8) {
                        if (z7) {
                            typedArrayObtainAttributes.recycle();
                            throw new IllegalArgumentException("Either XML attribute \"adSize\" or XML attribute \"supportedAdSizes\" should be specified, but not both.");
                        }
                        typedArrayObtainAttributes.recycle();
                        throw new IllegalArgumentException("Required XML attribute \"adSize\" was missing.");
                    }
                    gVarArrQ = l.q(string2);
                }
                String string3 = typedArrayObtainAttributes.getString(2);
                typedArrayObtainAttributes.recycle();
                if (TextUtils.isEmpty(string3)) {
                    throw new IllegalArgumentException("Required XML attribute \"adUnitId\" was missing.");
                }
                if (gVarArrQ.length != 1) {
                    throw new IllegalArgumentException("The adSizes XML attribute is only allowed on PublisherAdViews.");
                }
                this.f26479g = gVarArrQ;
                this.f26482j = string3;
                if (viewGroup.isInEditMode()) {
                    d dVar = C3097p.f26618f.f26619a;
                    g gVar = this.f26479g[0];
                    if (gVar.equals(g.f25172p)) {
                        d1Var = new d1("invalid", 0, 0, false, 0, 0, null, false, false, false, true, false, false, false, false);
                    } else {
                        d1 d1Var2 = new d1(context, gVar);
                        d1Var2.f26557P = false;
                        d1Var = d1Var2;
                    }
                    dVar.getClass();
                    d.e(viewGroup, d1Var, "Ads by Google", -16777216, -1);
                }
            } catch (IllegalArgumentException e8) {
                d dVar2 = C3097p.f26618f.f26619a;
                d1 d1Var3 = new d1(context, g.f25164h);
                String message = e8.getMessage();
                String message2 = e8.getMessage();
                dVar2.getClass();
                if (message2 != null) {
                    h.g(message2);
                }
                d.e(viewGroup, d1Var3, message, -65536, -16777216);
            }
        }
    }

    public static d1 a(Context context, g[] gVarArr, int i8) {
        for (g gVar : gVarArr) {
            if (gVar.equals(g.f25172p)) {
                return new d1("invalid", 0, 0, false, 0, 0, null, false, false, false, true, false, false, false, false);
            }
        }
        d1 d1Var = new d1(context, gVarArr);
        d1Var.f26557P = i8 == 1;
        return d1Var;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00c6 A[Catch: RemoteException -> 0x00c4, TRY_LEAVE, TryCatch #1 {RemoteException -> 0x00c4, blocks: (B:25:0x0091, B:27:0x0097, B:29:0x00a5, B:31:0x00b7, B:34:0x00c6), top: B:49:0x0091, outer: #0 }] */
    public final void b(G0 g8) {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            J j8 = this.f26481i;
            ViewGroup viewGroup = this.f26483k;
            if (j8 == null) {
                if (this.f26479g == null || this.f26482j == null) {
                    throw new IllegalStateException("The ad size and ad unit ID must be set before loadAd is called.");
                }
                Context context = viewGroup.getContext();
                d1 d1VarA = a(context, this.f26479g, this.f26484l);
                J j9 = "search_v2".equals(d1VarA.f26548G) ? (J) new C3083i(C3097p.f26618f.f26620b, context, d1VarA, this.f26482j).d(context, false) : (J) new C3079g(C3097p.f26618f.f26620b, context, d1VarA, this.f26482j, this.f26473a).d(context, false);
                this.f26481i = j9;
                j9.C0(new W0(this.f26476d));
                InterfaceC3067a interfaceC3067a = this.f26477e;
                if (interfaceC3067a != null) {
                    this.f26481i.h2(new BinderC3091m(interfaceC3067a));
                }
                p051g3.b bVar = this.f26480h;
                if (bVar != null) {
                    this.f26481i.p0(new L5(bVar));
                }
                this.f26481i.N2(new S0());
                this.f26481i.s3(false);
                J j10 = this.f26481i;
                if (j10 != null) {
                    try {
                        a aVarZzn = j10.zzn();
                        if (aVarZzn != null) {
                            if (((Boolean) AbstractC1812p8.f20424d.l()).booleanValue()) {
                                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.xa)).booleanValue()) {
                                    d.f28202b.post(new RunnableC3036k(this, aVarZzn, 17));
                                } else {
                                    viewGroup.addView((View) R3.b.v0(aVarZzn));
                                }
                            } else {
                                viewGroup.addView((View) R3.b.v0(aVarZzn));
                            }
                        }
                    } catch (RemoteException e8) {
                        h.i("#007 Could not call remote method.", e8);
                    }
                }
            }
            if (g8 != null) {
                g8.f26469k = jCurrentTimeMillis;
            }
            J j11 = this.f26481i;
            j11.getClass();
            c1 c1Var = this.f26474b;
            Context context2 = viewGroup.getContext();
            c1Var.getClass();
            j11.h3(c1.a(context2, g8));
        } catch (RemoteException e9) {
            h.i("#007 Could not call remote method.", e9);
        }
    }

    public final void c(InterfaceC3067a interfaceC3067a) {
        try {
            this.f26477e = interfaceC3067a;
            J j8 = this.f26481i;
            if (j8 != null) {
                j8.h2(interfaceC3067a != null ? new BinderC3091m(interfaceC3067a) : null);
            }
        } catch (RemoteException e8) {
            h.i("#007 Could not call remote method.", e8);
        }
    }
}
