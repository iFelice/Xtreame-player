package p000a;

import H3.p;
import N.N;
import P1.k;
import P1.l;
import Q.d;
import T.c;
import T1.a;
import T1.b;
import Y.AnimationAnimationListenerC0393e;
import Y.DialogInterfaceOnCancelListenerC0401m;
import Y.K;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.view.inputmethod.InputMethodManager;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.SearchView$SearchAutoComplete;
import androidx.appcompat.widget.Toolbar;
import androidx.leanback.widget.C0491q;
import androidx.viewpager.widget.ViewPager;
import androidx.work.Worker;
import com.bumptech.glide.n;
import com.google.android.gms.internal.ads.InterfaceC2247xd;
import com.google.api.Service;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import p032e0.t;
import p047g.h;
import p086l.C3042n;
import p086l.C3066z0;
import p090l3.InterfaceC3110w;
import p090l3.N0;
import p090l3.P0;
import p101n.e;
import p113o3.AbstractC3156n;
import p113o3.L;
import p162u6.s;
import p169v6.i;
import y2.C3230b;
import y2.C3231c;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class f implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f8564G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f8565H;

    public /* synthetic */ f(W3.f fVar) {
        this.f8564G = 29;
        this.f8565H = fVar;
    }

    private void b() {
        Object obj;
        synchronized (((t) this.f8565H).f24766a) {
            obj = ((t) this.f8565H).f24771f;
            ((t) this.f8565H).f24771f = t.f24765k;
        }
        ((t) this.f8565H).c(obj);
    }

    private void c() {
        Set setA;
        ReentrantReadWriteLock.ReadLock lock = ((l) this.f8565H).f5802a.f5861h.readLock();
        q0.g(lock, "readWriteLock.readLock()");
        lock.lock();
        try {
            try {
                if (!((l) this.f8565H).b()) {
                    lock.unlock();
                    ((l) this.f8565H).getClass();
                    return;
                }
                if (!((l) this.f8565H).f5807f.compareAndSet(true, false)) {
                    lock.unlock();
                    ((l) this.f8565H).getClass();
                    return;
                }
                if (((l) this.f8565H).f5802a.g().getWritableDatabase().L()) {
                    lock.unlock();
                    ((l) this.f8565H).getClass();
                    return;
                }
                b writableDatabase = ((l) this.f8565H).f5802a.g().getWritableDatabase();
                writableDatabase.z();
                try {
                    setA = a();
                    writableDatabase.x();
                    writableDatabase.D();
                    lock.unlock();
                    ((l) this.f8565H).getClass();
                    if (!setA.isEmpty()) {
                        l lVar = (l) this.f8565H;
                        synchronized (lVar.f5811j) {
                            Iterator it = lVar.f5811j.iterator();
                            while (true) {
                                e eVar = (e) it;
                                if (eVar.hasNext()) {
                                    ((k) ((Map.Entry) eVar.next()).getValue()).a(setA);
                                }
                            }
                        }
                    }
                } catch (Throwable th) {
                    writableDatabase.D();
                    throw th;
                }
            } catch (SQLiteException e8) {
                Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e8);
                setA = s.f30544G;
            } catch (IllegalStateException e9) {
                Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e9);
                setA = s.f30544G;
            }
        } catch (Throwable th2) {
            lock.unlock();
            ((l) this.f8565H).getClass();
            throw th2;
        }
    }

    public final i a() throws IOException {
        l lVar = (l) this.f8565H;
        i iVar = new i();
        Cursor cursorL = lVar.f5802a.l(new a("SELECT * FROM room_table_modification_log WHERE invalidated = 1;"), null);
        while (cursorL.moveToNext()) {
            try {
                iVar.add(Integer.valueOf(cursorL.getInt(0)));
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    q0.k(cursorL, th);
                    throw th2;
                }
            }
        }
        q0.k(cursorL, null);
        i iVarJ = p190y4.k.j(iVar);
        if (!iVarJ.f30761G.isEmpty()) {
            if (((l) this.f8565H).f5809h == null) {
                throw new IllegalStateException("Required value was null.".toString());
            }
            T1.i iVar2 = ((l) this.f8565H).f5809h;
            if (iVar2 == null) {
                throw new IllegalArgumentException("Required value was null.".toString());
            }
            iVar2.l();
        }
        return iVarJ;
    }

    /* JADX INFO: Infinite loop detected, blocks: 8, insns: 0 */
    @Override // java.lang.Runnable
    public final void run() {
        C3042n c3042n;
        switch (this.f8564G) {
            case 0:
                try {
                    super/*android.app.Activity*/.onBackPressed();
                    return;
                } catch (IllegalStateException e8) {
                    if (!TextUtils.equals(e8.getMessage(), "Can not perform this action after onSaveInstanceState")) {
                        throw e8;
                    }
                    return;
                }
            case 1:
                h hVar = (h) this.f8565H;
                hVar.a(true);
                hVar.invalidateSelf();
                return;
            case 2:
                C3066z0 c3066z0 = (C3066z0) this.f8565H;
                c3066z0.f26434R = null;
                c3066z0.drawableStateChanged();
                return;
            case 3:
                SearchView$SearchAutoComplete searchView$SearchAutoComplete = (SearchView$SearchAutoComplete) this.f8565H;
                if (searchView$SearchAutoComplete.f8847L) {
                    ((InputMethodManager) searchView$SearchAutoComplete.getContext().getSystemService("input_method")).showSoftInput(searchView$SearchAutoComplete, 0);
                    searchView$SearchAutoComplete.f8847L = false;
                    return;
                }
                return;
            case 4:
                ActionMenuView actionMenuView = ((Toolbar) this.f8565H).f8893G;
                if (actionMenuView == null || (c3042n = actionMenuView.f8824c0) == null) {
                    return;
                }
                c3042n.l();
                return;
            case 5:
                d dVar = (d) this.f8565H;
                if (dVar.f5995U) {
                    if (dVar.f5993S) {
                        dVar.f5993S = false;
                        Q.a aVar = dVar.f5981G;
                        aVar.getClass();
                        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                        aVar.f5975e = jCurrentAnimationTimeMillis;
                        aVar.f5977g = -1L;
                        aVar.f5976f = jCurrentAnimationTimeMillis;
                        aVar.f5978h = 0.5f;
                    }
                    Q.a aVar2 = dVar.f5981G;
                    if ((aVar2.f5977g > 0 && AnimationUtils.currentAnimationTimeMillis() > aVar2.f5977g + ((long) aVar2.f5979i)) || !dVar.f()) {
                        dVar.f5995U = false;
                        return;
                    }
                    if (dVar.f5994T) {
                        dVar.f5994T = false;
                        long jUptimeMillis = SystemClock.uptimeMillis();
                        MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                        dVar.f5983I.onTouchEvent(motionEventObtain);
                        motionEventObtain.recycle();
                    }
                    if (aVar2.f5976f == 0) {
                        throw new RuntimeException("Cannot compute scroll delta before calling start()");
                    }
                    long jCurrentAnimationTimeMillis2 = AnimationUtils.currentAnimationTimeMillis();
                    float fA = aVar2.a(jCurrentAnimationTimeMillis2);
                    long j8 = jCurrentAnimationTimeMillis2 - aVar2.f5976f;
                    aVar2.f5976f = jCurrentAnimationTimeMillis2;
                    dVar.f5997W.scrollListBy((int) (j8 * ((fA * 4.0f) + ((-4.0f) * fA * fA)) * aVar2.f5974d));
                    View view = dVar.f5983I;
                    WeakHashMap weakHashMap = N.f4843a;
                    view.postOnAnimation(this);
                    return;
                }
                return;
            case 6:
                ((c) this.f8565H).n(0);
                return;
            case 7:
                AnimationAnimationListenerC0393e animationAnimationListenerC0393e = (AnimationAnimationListenerC0393e) this.f8565H;
                animationAnimationListenerC0393e.f7870b.endViewTransition(animationAnimationListenerC0393e.f7871c);
                animationAnimationListenerC0393e.f7872d.c();
                return;
            case 8:
                DialogInterfaceOnCancelListenerC0401m dialogInterfaceOnCancelListenerC0401m = (DialogInterfaceOnCancelListenerC0401m) this.f8565H;
                dialogInterfaceOnCancelListenerC0401m.f7898F0.onDismiss(dialogInterfaceOnCancelListenerC0401m.f7906N0);
                return;
            case 9:
                ((K) this.f8565H).x(true);
                return;
            case 10:
                ((C0491q) this.f8565H).D0();
                return;
            case 11:
                b();
                return;
            case 12:
                ((S0.k) this.f8565H).d();
                return;
            case 13:
            case 27:
            default:
                W3.f fVar = (W3.f) this.f8565H;
                long j9 = W3.f.b(fVar.f7471a).getLong("app_set_id_last_used_time", -1L);
                long j10 = j9 != -1 ? j9 + 33696000000L : -1L;
                if (j10 == -1 || System.currentTimeMillis() <= j10) {
                    return;
                }
                Context context = fVar.f7471a;
                if (!W3.f.b(context).edit().remove("app_set_id").commit()) {
                    String strValueOf = String.valueOf(context.getPackageName());
                    Log.e("AppSet", strValueOf.length() != 0 ? "Failed to clear app set ID generated for App ".concat(strValueOf) : new String("Failed to clear app set ID generated for App "));
                }
                if (context.getSharedPreferences("app_set_id_storage", 0).edit().remove("app_set_id_last_used_time").commit()) {
                    return;
                }
                String strValueOf2 = String.valueOf(context.getPackageName());
                Log.e("AppSet", strValueOf2.length() != 0 ? "Failed to clear app set ID last used time for App ".concat(strValueOf2) : new String("Failed to clear app set ID last used time for App "));
                return;
            case 14:
                c();
                return;
            case 15:
                ViewPager viewPager = (ViewPager) this.f8565H;
                viewPager.setScrollState(0);
                viewPager.p();
                return;
            case 16:
                Object obj = this.f8565H;
                try {
                    ((Worker) obj).f9768K.j(((Worker) obj).doWork());
                    return;
                } catch (Throwable th) {
                    ((Worker) obj).f9768K.k(th);
                    return;
                }
            case 17:
                n nVar = (n) this.f8565H;
                nVar.f11597I.i(nVar);
                return;
            case 18:
                C3231c c3231c = (C3231c) this.f8565H;
                c3231c.getClass();
                while (true) {
                    try {
                        c3231c.b((C3230b) c3231c.f31279d.remove());
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
                break;
            case 19:
                try {
                    ((Runnable) this.f8565H).run();
                    return;
                } catch (Exception e9) {
                    E3.f.k("Executor", "Background execution failure.", e9);
                    return;
                }
            case 20:
                InterfaceC3110w interfaceC3110w = ((N0) this.f8565H).f26496G.f26497G;
                if (interfaceC3110w != null) {
                    try {
                        interfaceC3110w.d(1);
                        return;
                    } catch (RemoteException e10) {
                        p120p3.h.h("Could not notify onAdFailedToLoad event.", e10);
                        return;
                    }
                }
                return;
            case 21:
                InterfaceC3110w interfaceC3110w2 = ((P0) this.f8565H).f26498G;
                if (interfaceC3110w2 != null) {
                    try {
                        interfaceC3110w2.d(1);
                        return;
                    } catch (RemoteException e11) {
                        p120p3.h.h("Could not notify onAdFailedToLoad event.", e11);
                        return;
                    }
                }
                return;
            case 22:
                InterfaceC2247xd interfaceC2247xd = (InterfaceC2247xd) this.f8565H;
                if (interfaceC2247xd != null) {
                    try {
                        interfaceC2247xd.d(1);
                        return;
                    } catch (RemoteException e12) {
                        p120p3.h.i("#007 Could not call remote method.", e12);
                        return;
                    }
                }
                return;
            case 23:
                ((p105n3.k) this.f8565H).zzc();
                return;
            case 24:
                AbstractC3156n abstractC3156n = (AbstractC3156n) this.f8565H;
                Thread.currentThread();
                abstractC3156n.getClass();
                abstractC3156n.a();
                return;
            case 25:
                ((L) this.f8565H).x();
                return;
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                ((F3.l) this.f8565H).g(false);
                return;
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                p pVar = (p) this.f8565H;
                synchronized (p.f3711i) {
                    try {
                        if (pVar.d()) {
                            pVar.f(15);
                            return;
                        }
                        return;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
        }
    }

    public /* synthetic */ f(Object obj, int i8) {
        this.f8564G = i8;
        this.f8565H = obj;
    }
}
