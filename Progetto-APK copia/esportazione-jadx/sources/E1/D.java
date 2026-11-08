package E1;

import android.os.Message;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import org.videolan.libvlc.MediaPlayer;

/* JADX INFO: loaded from: classes.dex */
public final class D {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AbstractC0178m f2612a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2613b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final F f2614c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final F f2615d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final F f2616e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList f2617f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final WeakReference f2618g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public D4.b f2619h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f2620i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f2621j = false;

    public D(A a8, F f8, AbstractC0178m abstractC0178m, int i8, F f9, Collection collection) {
        this.f2618g = new WeakReference(a8);
        this.f2615d = f8;
        this.f2612a = abstractC0178m;
        this.f2613b = i8;
        this.f2614c = a8.f2603t;
        this.f2616e = f9;
        this.f2617f = collection != null ? new ArrayList(collection) : null;
        a8.f2597n.postDelayed(new C(this, 0), 15000L);
    }

    public final void a() {
        if (this.f2620i || this.f2621j) {
            return;
        }
        this.f2621j = true;
        AbstractC0178m abstractC0178m = this.f2612a;
        if (abstractC0178m != null) {
            abstractC0178m.h(0);
            abstractC0178m.d();
        }
    }

    public final void b() {
        D4.b bVar;
        H.b();
        if (this.f2620i || this.f2621j) {
            return;
        }
        WeakReference weakReference = this.f2618g;
        A a8 = (A) weakReference.get();
        if (a8 == null || a8.f2581C != this || ((bVar = this.f2619h) != null && bVar.isCancelled())) {
            a();
            return;
        }
        this.f2620i = true;
        a8.f2581C = null;
        A a9 = (A) weakReference.get();
        int i8 = this.f2613b;
        F f8 = this.f2614c;
        if (a9 != null && a9.f2603t == f8) {
            Message messageObtainMessage = a9.f2597n.obtainMessage(263, f8);
            messageObtainMessage.arg1 = i8;
            messageObtainMessage.sendToTarget();
            AbstractC0178m abstractC0178m = a9.f2604u;
            if (abstractC0178m != null) {
                abstractC0178m.h(i8);
                a9.f2604u.d();
            }
            HashMap map = a9.f2607x;
            if (!map.isEmpty()) {
                for (AbstractC0178m abstractC0178m2 : map.values()) {
                    abstractC0178m2.h(i8);
                    abstractC0178m2.d();
                }
                map.clear();
            }
            a9.f2604u = null;
        }
        A a10 = (A) weakReference.get();
        if (a10 == null) {
            return;
        }
        F f9 = this.f2615d;
        a10.f2603t = f9;
        a10.f2604u = this.f2612a;
        HandlerC0186v handlerC0186v = a10.f2597n;
        F f10 = this.f2616e;
        if (f10 == null) {
            Message messageObtainMessage2 = handlerC0186v.obtainMessage(MediaPlayer.Event.Stopped, new M.b(f8, f9));
            messageObtainMessage2.arg1 = i8;
            messageObtainMessage2.sendToTarget();
        } else {
            Message messageObtainMessage3 = handlerC0186v.obtainMessage(264, new M.b(f10, f9));
            messageObtainMessage3.arg1 = i8;
            messageObtainMessage3.sendToTarget();
        }
        a10.f2607x.clear();
        a10.h();
        a10.n();
        ArrayList arrayList = this.f2617f;
        if (arrayList != null) {
            a10.f2603t.j(arrayList);
        }
    }
}
