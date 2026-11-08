package p000a;

import C2.C0091g;
import C6.a;
import Y.D;
import Y.K;
import android.animation.AnimatorSet;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import com.google.android.gms.internal.ads.AbstractC1906qz;
import com.google.android.gms.internal.ads.AbstractC1988se;
import com.google.android.gms.internal.ads.C1232dz;
import com.google.android.gms.internal.ads.C1336fz;
import com.google.android.gms.internal.ads.C1542jz;
import com.google.android.gms.internal.ads.C1854pz;
import com.google.android.gms.internal.ads.InterfaceC0715Ef;
import com.google.android.gms.internal.ads.Q7;
import com.google.android.gms.internal.ads.RunnableC1698mz;
import com.google.android.gms.internal.ads.Xu;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.ListIterator;
import p032e0.EnumC2982j;
import p032e0.m;
import p032e0.o;
import p083k3.l;
import p090l3.C3099q;
import p113o3.I;
import p162u6.i;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f8619a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f8620b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f8621c = new i();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f8622d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f8623e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object f8624f;

    public x(Runnable runnable) {
        this.f8620b = runnable;
        if (Build.VERSION.SDK_INT >= 33) {
            this.f8622d = new s(this, 0);
            this.f8623e = u.f8612a.a(new s(this, 1));
        }
    }

    public final void a(m mVar, D d6) {
        q0.h(mVar, "owner");
        q0.h(d6, "onBackPressedCallback");
        o oVarH = mVar.h();
        if (oVarH.f24751L == EnumC2982j.f24741G) {
            return;
        }
        d6.f8606b.add(new v(this, oVarH, d6));
        if (Build.VERSION.SDK_INT >= 33) {
            c();
            d6.f8607c = (a) this.f8622d;
        }
    }

    public final void b() {
        Object objPrevious;
        i iVar = (i) this.f8621c;
        ListIterator listIterator = iVar.listIterator(iVar.b());
        do {
            if (!listIterator.hasPrevious()) {
                objPrevious = null;
                break;
            }
            objPrevious = listIterator.previous();
        } while (!((q) objPrevious).f8605a);
        q qVar = (q) objPrevious;
        if (qVar == null) {
            Runnable runnable = (Runnable) this.f8620b;
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        D d6 = (D) qVar;
        int i8 = d6.f7697d;
        Object obj = d6.f7698e;
        switch (i8) {
            case 0:
                K k8 = (K) obj;
                k8.x(true);
                if (!k8.f7729h.f8605a) {
                    k8.f7728g.b();
                } else {
                    k8.M();
                }
                break;
            default:
                ((AnimatorSet) obj).start();
                break;
        }
    }

    public final void c() {
        boolean z7;
        i iVar = (i) this.f8621c;
        if (!(iVar instanceof Collection) || !iVar.isEmpty()) {
            Iterator it = iVar.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z7 = false;
                    break;
                } else if (((q) it.next()).f8605a) {
                    z7 = true;
                    break;
                }
            }
        } else {
            z7 = false;
            break;
        }
        OnBackInvokedDispatcher onBackInvokedDispatcher = (OnBackInvokedDispatcher) this.f8624f;
        OnBackInvokedCallback onBackInvokedCallback = (OnBackInvokedCallback) this.f8623e;
        if (onBackInvokedDispatcher == null || onBackInvokedCallback == null) {
            return;
        }
        u uVar = u.f8612a;
        if (z7 && !this.f8619a) {
            uVar.b(onBackInvokedDispatcher, 0, onBackInvokedCallback);
            this.f8619a = true;
        } else {
            if (z7 || !this.f8619a) {
                return;
            }
            uVar.c(onBackInvokedDispatcher, onBackInvokedCallback);
            this.f8619a = false;
        }
    }

    public final void d(String str, HashMap map) {
        AbstractC1988se.f20910e.execute(new K.a(this, str, map, 8, 0));
    }

    public final void e(String str, String str2) {
        I.k(str);
        if (((InterfaceC0715Ef) this.f8622d) != null) {
            d("onError", r.m("message", str, "action", str2));
        }
    }

    public final void f(InterfaceC0715Ef interfaceC0715Ef, C1232dz c1232dz) {
        int i8 = 1;
        if (interfaceC0715Ef == null) {
            e("adWebview missing", "onLMDShow");
            return;
        }
        this.f8622d = interfaceC0715Ef;
        if (!this.f8619a && !g(interfaceC0715Ef.getContext())) {
            e("LMDOverlay not bound", "on_play_store_bind");
            return;
        }
        boolean zBooleanValue = ((Boolean) C3099q.f26624d.f26627c.a(Q7.Na)).booleanValue();
        String str = c1232dz.f18404b;
        if (zBooleanValue) {
            this.f8621c = str;
        }
        if (((C0091g) this.f8624f) == null) {
            this.f8624f = new C0091g(this, 6);
        }
        Xu xu = (Xu) this.f8623e;
        if (xu != null) {
            C0091g c0091g = (C0091g) this.f8624f;
            C1542jz c1542jz = (C1542jz) xu.f17529H;
            C1854pz c1854pz = c1542jz.f19540a;
            if (c1854pz == null) {
                C1542jz.f19538c.b("error: %s", "Play Store not found.");
            } else if (C1542jz.c(c0091g, "Failed to apply OverlayDisplayShowRequest: missing appId and sessionToken.", Arrays.asList(null, str))) {
                c1854pz.a(new RunnableC1698mz(c1854pz, new K.a(c1542jz, c1232dz, c0091g, 25, 0), i8));
            }
        }
    }

    public final synchronized boolean g(Context context) {
        if (!AbstractC1906qz.a(context)) {
            return false;
        }
        try {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            this.f8623e = new Xu(new C1542jz(context), 16);
        } catch (NullPointerException e8) {
            I.k("Error connecting LMD Overlay service");
            l.f25980A.f25987g.i("LastMileDeliveryOverlay.bindLastMileDeliveryService", e8);
        }
        if (((Xu) this.f8623e) == null) {
            this.f8619a = false;
            return false;
        }
        if (((C0091g) this.f8624f) == null) {
            this.f8624f = new C0091g(this, 6);
        }
        this.f8619a = true;
        return true;
    }

    public final C1336fz h() {
        String str;
        String str2 = null;
        if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.Na)).booleanValue() || TextUtils.isEmpty((String) this.f8621c)) {
            String str3 = (String) this.f8620b;
            if (str3 != null) {
                str2 = str3;
                str = null;
            } else {
                e("Missing session token and/or appId", "onLMDupdate");
                str = null;
            }
        } else {
            str = (String) this.f8621c;
        }
        return new C1336fz(str2, str);
    }
}
