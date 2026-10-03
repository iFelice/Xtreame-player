package p018c1;

import P2.o;
import P3.a;
import S3.g;
import android.content.Context;
import android.os.Bundle;
import com.bumptech.glide.c;
import com.google.ads.mediation.admob.AdMobAdapter;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Queue;
import java.util.Set;
import p021c4.C0591j0;
import p021c4.C0597l0;
import p021c4.InterfaceC0612t0;
import p021c4.T;
import p043f3.e;
import p090l3.F0;
import p176w5.b;
import p196z2.k;

/* JADX INFO: loaded from: classes.dex */
public abstract class d implements InterfaceC0612t0 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public Object f10616G;

    public d(int i8) {
        if (i8 == 3) {
            F0 f8 = new F0();
            this.f10616G = f8;
            f8.f26452d.add("B3EEABB8EE11C2BE770B684D95219ECB");
        } else if (i8 == 6) {
            this.f10616G = Collections.newSetFromMap(new IdentityHashMap());
        } else if (i8 != 7) {
            char[] cArr = o.f5906a;
            this.f10616G = new ArrayDeque(20);
        }
    }

    @Override // p021c4.InterfaceC0612t0
    public final g a() {
        throw null;
    }

    @Override // p021c4.InterfaceC0612t0
    public final T b() {
        throw null;
    }

    @Override // p021c4.InterfaceC0612t0
    public final a c() {
        throw null;
    }

    @Override // p021c4.InterfaceC0612t0
    public final C0591j0 d() {
        throw null;
    }

    public final d e(Bundle bundle) {
        F0 f8 = (F0) this.f10616G;
        f8.getClass();
        f8.f26450b.putBundle(AdMobAdapter.class.getName(), bundle);
        if (AdMobAdapter.class.equals(AdMobAdapter.class) && bundle.getBoolean("_emulatorLiveAds")) {
            ((F0) this.f10616G).f26452d.remove("B3EEABB8EE11C2BE770B684D95219ECB");
        }
        return (e) this;
    }

    public abstract p176w5.e f(p130q5.g gVar);

    public abstract b g();

    public abstract p176w5.a h(int i8, p176w5.a aVar);

    public abstract void i();

    public abstract void j();

    public final void k(k kVar) {
        if (((Queue) this.f10616G).size() < 20) {
            ((Queue) this.f10616G).offer(kVar);
        }
    }

    public final void l(Object obj, boolean z7) {
        int size = ((Set) this.f10616G).size();
        if (z7) {
            ((Set) this.f10616G).add(obj);
            if (size == 0) {
                i();
                return;
            }
            return;
        }
        if (((Set) this.f10616G).remove(obj) && size == 1) {
            j();
        }
    }

    public void m() {
        C0591j0 c0591j0 = ((C0597l0) this.f10616G).f11259P;
        C0597l0.k(c0591j0);
        c0591j0.m();
    }

    @Override // p021c4.InterfaceC0612t0
    public final Context zzaT() {
        throw null;
    }

    public /* synthetic */ d(Object obj) {
        this.f10616G = obj;
    }

    public d(C0597l0 c0597l0) {
        c.h(c0597l0);
        this.f10616G = c0597l0;
    }
}
