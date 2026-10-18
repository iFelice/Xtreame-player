package E1;

import B0.AbstractC0068s;
import E1.HandlerC0186v;
import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.MediaRoute2Info;
import android.media.MediaRouter2;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.internal.ads.C1093bD;
import com.google.android.gms.internal.cast.C2482p;
import com.google.protobuf.U2;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import org.videolan.libvlc.MediaPlayer;
import org.videolan.libvlc.interfaces.IMediaList;
import p117p0.C3167e;

/* JADX INFO: loaded from: classes.dex */
public final class A implements p0, d0 {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public int f2579A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public B f2580B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public D f2581C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public C0189y f2582D;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f2584a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f2585b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public o0 f2586c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public e0 f2587d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f2588e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public C0171f f2589f;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final boolean f2598o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public I f2599p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Q f2600q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public F f2601r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public F f2602s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public F f2603t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public AbstractC0178m f2604u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public F f2605v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public AbstractC0177l f2606w;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public C0174i f2608y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public C0174i f2609z;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ArrayList f2590g = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayList f2591h = new ArrayList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final HashMap f2592i = new HashMap();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ArrayList f2593j = new ArrayList();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ArrayList f2594k = new ArrayList();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final h0 f2595l = new h0(0);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final C0185u f2596m = new C0185u(this, 2);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final HandlerC0186v f2597n = new HandlerC0186v(this);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final HashMap f2607x = new HashMap();

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public final C0185u f2583E = new C0185u(this, 0);

    public A(Context context) {
        this.f2584a = context;
        this.f2598o = ((ActivityManager) context.getSystemService("activity")).isLowRamDevice();
    }

    public final void a(AbstractC0179n abstractC0179n, boolean z7) {
        if (e(abstractC0179n) == null) {
            E e8 = new E(abstractC0179n, z7);
            this.f2593j.add(e8);
            A a8 = H.f2649c;
            this.f2597n.b(513, e8);
            o(e8, abstractC0179n.f2791g);
            H.b();
            abstractC0179n.f2788d = this.f2596m;
            abstractC0179n.h(this.f2608y);
        }
    }

    public final String b(E e8, String str) {
        String str2;
        String strFlattenToShortString = ((ComponentName) e8.f2625d.f2740b).flattenToShortString();
        boolean z7 = e8.f2624c;
        String strL = z7 ? str : U2.l(strFlattenToShortString, ":", str);
        HashMap map = this.f2592i;
        if (!z7) {
            ArrayList arrayList = this.f2591h;
            int size = arrayList.size();
            for (int i8 = 0; i8 < size; i8++) {
                if (((F) arrayList.get(i8)).f2629c.equals(strL)) {
                    if (i8 < 0) {
                        break;
                    }
                    Log.w("MediaRouter", A0.O.C("Either ", str, " isn't unique in ", strFlattenToShortString, " or we're trying to assign a unique ID for an already added route"));
                    int i9 = 2;
                    loop1: while (true) {
                        Locale locale = Locale.US;
                        str2 = strL + "_" + i9;
                        int size2 = arrayList.size();
                        int i10 = 0;
                        while (true) {
                            if (i10 >= size2) {
                                break loop1;
                            }
                            if (((F) arrayList.get(i10)).f2629c.equals(str2)) {
                                break;
                            }
                            i10++;
                        }
                        if (i10 < 0) {
                            break;
                        }
                        i9++;
                    }
                    map.put(new M.b(strFlattenToShortString, str), str2);
                    return str2;
                }
            }
        }
        map.put(new M.b(strFlattenToShortString, str), strL);
        return strL;
    }

    public final F c() {
        for (F f8 : this.f2591h) {
            if (f8 != this.f2601r && f8.a() == this.f2586c && f8.i("android.media.intent.category.LIVE_AUDIO") && !f8.i("android.media.intent.category.LIVE_VIDEO") && f8.d()) {
                return f8;
            }
        }
        return this.f2601r;
    }

    public final void d() {
        if (this.f2585b) {
            return;
        }
        this.f2585b = true;
        int i8 = Build.VERSION.SDK_INT;
        Context context = this.f2584a;
        if (i8 >= 30) {
            int i9 = S.f2668a;
            Intent intent = new Intent(context, (Class<?>) S.class);
            intent.setPackage(context.getPackageName());
            this.f2588e = context.getPackageManager().queryBroadcastReceivers(intent, 0).size() > 0;
        } else {
            this.f2588e = false;
        }
        if (this.f2588e) {
            this.f2589f = new C0171f(context, new C0185u(this, 1));
        } else {
            this.f2589f = null;
        }
        this.f2586c = i8 >= 24 ? new i0(context, this) : new o0(context, this);
        this.f2599p = new I(new RunnableC0184t(this, 0));
        a(this.f2586c, true);
        C0171f c0171f = this.f2589f;
        if (c0171f != null) {
            a(c0171f, true);
        }
        e0 e0Var = new e0(context, this);
        this.f2587d = e0Var;
        if (e0Var.f2722b) {
            return;
        }
        e0Var.f2722b = true;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
        intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        intentFilter.addAction("android.intent.action.PACKAGE_CHANGED");
        intentFilter.addAction("android.intent.action.PACKAGE_REPLACED");
        intentFilter.addAction("android.intent.action.PACKAGE_RESTARTED");
        intentFilter.addDataScheme("package");
        Context context2 = e0Var.f2721a;
        if (i8 < 33) {
            context2.registerReceiver((BroadcastReceiver) e0Var.f2727g, intentFilter, null, (Handler) e0Var.f2724d);
        } else {
            c0.a(context2, (BroadcastReceiver) e0Var.f2727g, intentFilter, (Handler) e0Var.f2724d, 4);
        }
        ((Handler) e0Var.f2724d).post((Runnable) e0Var.f2728h);
    }

    public final E e(AbstractC0179n abstractC0179n) {
        ArrayList arrayList = this.f2593j;
        int size = arrayList.size();
        for (int i8 = 0; i8 < size; i8++) {
            if (((E) arrayList.get(i8)).f2622a == abstractC0179n) {
                return (E) arrayList.get(i8);
            }
        }
        return null;
    }

    public final F f() {
        F f8 = this.f2603t;
        if (f8 != null) {
            return f8;
        }
        throw new IllegalStateException("There is no currently selected route.  The media router has not yet been fully initialized.");
    }

    public final boolean g() {
        Q q7;
        return this.f2588e && ((q7 = this.f2600q) == null || q7.f2664a);
    }

    public final void h() {
        if (Collections.unmodifiableList(this.f2603t.f2647u).size() >= 1) {
            List<F> listUnmodifiableList = Collections.unmodifiableList(this.f2603t.f2647u);
            HashSet hashSet = new HashSet();
            Iterator it = listUnmodifiableList.iterator();
            while (it.hasNext()) {
                hashSet.add(((F) it.next()).f2629c);
            }
            HashMap map = this.f2607x;
            Iterator it2 = map.entrySet().iterator();
            while (it2.hasNext()) {
                Map.Entry entry = (Map.Entry) it2.next();
                if (!hashSet.contains(entry.getKey())) {
                    AbstractC0178m abstractC0178m = (AbstractC0178m) entry.getValue();
                    abstractC0178m.h(0);
                    abstractC0178m.d();
                    it2.remove();
                }
            }
            for (F f8 : listUnmodifiableList) {
                if (!map.containsKey(f8.f2629c)) {
                    AbstractC0178m abstractC0178mE = f8.a().e(f8.f2628b, this.f2603t.f2628b);
                    abstractC0178mE.e();
                    map.put(f8.f2629c, abstractC0178mE);
                }
            }
        }
    }

    public final void i(A a8, F f8, AbstractC0178m abstractC0178m, int i8, F f9, Collection collection) {
        B b8;
        final int i9 = 1;
        D d6 = this.f2581C;
        if (d6 != null) {
            d6.a();
            this.f2581C = null;
        }
        D d8 = new D(a8, f8, abstractC0178m, i8, f9, collection);
        this.f2581C = d8;
        if (d8.f2613b != 3 || (b8 = this.f2580B) == null) {
            d8.b();
            return;
        }
        F f10 = this.f2603t;
        F f11 = d8.f2615d;
        C2482p.f22765c.b("Prepare transfer from Route(%s) to Route(%s)", f10, f11);
        p148t.l lVarK = com.bumptech.glide.d.k(new C1093bD((C2482p) b8, f10, f11, 9));
        D d9 = this.f2581C;
        A a9 = (A) d9.f2618g.get();
        if (a9 == null || a9.f2581C != d9) {
            Log.w("MediaRouter", "Router is released. Cancel transfer");
            d9.a();
        } else {
            if (d9.f2619h != null) {
                throw new IllegalStateException("future is already set");
            }
            d9.f2619h = lVarK;
            C c8 = new C(d9, 1);
            final HandlerC0186v handlerC0186v = a9.f2597n;
            Objects.requireNonNull(handlerC0186v);
            lVarK.f30165H.a(c8, new Executor() { // from class: B0.t
                @Override // java.util.concurrent.Executor
                public final void execute(Runnable runnable) {
                    int i10 = i9;
                    Object obj = handlerC0186v;
                    switch (i10) {
                        case 0:
                            ((C3167e) obj).a(runnable);
                            break;
                        default:
                            ((HandlerC0186v) obj).post(runnable);
                            break;
                    }
                }
            });
        }
    }

    public final void j(AbstractC0179n abstractC0179n) {
        E e8 = e(abstractC0179n);
        if (e8 != null) {
            abstractC0179n.getClass();
            H.b();
            abstractC0179n.f2788d = null;
            abstractC0179n.h(null);
            o(e8, null);
            this.f2597n.b(IMediaList.Event.ItemDeleted, e8);
            this.f2593j.remove(e8);
        }
    }

    public final void k(F f8, int i8) {
        if (!this.f2591h.contains(f8)) {
            Log.w("MediaRouter", "Ignoring attempt to select removed route: " + f8);
            return;
        }
        if (!f8.f2633g) {
            Log.w("MediaRouter", "Ignoring attempt to select disabled route: " + f8);
            return;
        }
        if (Build.VERSION.SDK_INT >= 30) {
            AbstractC0179n abstractC0179nA = f8.a();
            C0171f c0171f = this.f2589f;
            if (abstractC0179nA == c0171f && this.f2603t != f8) {
                String str = f8.f2628b;
                MediaRoute2Info mediaRoute2Info = null;
                if (str != null) {
                    Iterator it = c0171f.f2737p.iterator();
                    while (it.hasNext()) {
                        MediaRoute2Info mediaRoute2InfoB = AbstractC0068s.b(it.next());
                        if (TextUtils.equals(mediaRoute2InfoB.getId(), str)) {
                            mediaRoute2Info = mediaRoute2InfoB;
                            break;
                        }
                    }
                }
                if (mediaRoute2Info != null) {
                    c0171f.f2730i.transferTo(mediaRoute2Info);
                    return;
                }
                c0171f.getClass();
                Log.w("MR2Provider", "transferTo: Specified route not found. routeId=" + str);
                return;
            }
        }
        l(f8, i8);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0022  */
    /* JADX WARN: Code duplicated, block: B:15:0x0033 A[LOOP:0: B:13:0x0030->B:15:0x0033, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:18:0x0060  */
    /* JADX WARN: Code duplicated, block: B:19:0x0082  */
    /* JADX WARN: Instruction removed from duplicated block: B:18:0x0060, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:19:0x0082, please report this as an issue */
    public final void l(F f8, int i8) {
        StackTraceElement[] stackTrace;
        StringBuilder sb;
        int i9;
        C0180o c0180o;
        if (H.f2649c == null) {
            stackTrace = Thread.currentThread().getStackTrace();
            sb = new StringBuilder();
            for (i9 = 3; i9 < stackTrace.length; i9++) {
                StackTraceElement stackTraceElement = stackTrace[i9];
                sb.append(stackTraceElement.getClassName());
                sb.append(".");
                sb.append(stackTraceElement.getMethodName());
                sb.append(":");
                sb.append(stackTraceElement.getLineNumber());
                sb.append("  ");
            }
            if (H.f2649c == null) {
                Log.w("MediaRouter", "setSelectedRouteInternal is called while sGlobal is null: pkgName=" + this.f2584a.getPackageName() + ", callers=" + ((Object) sb));
            } else {
                Log.w("MediaRouter", "Default route is selected while a BT route is available: pkgName=" + this.f2584a.getPackageName() + ", callers=" + ((Object) sb));
            }
        } else if (this.f2602s != null) {
            f8.getClass();
            H.b();
            F f9 = H.c().f2601r;
            if (f9 == null) {
                throw new IllegalStateException("There is no default route.  The media router has not yet been fully initialized.");
            }
            if (f9 == f8) {
                stackTrace = Thread.currentThread().getStackTrace();
                sb = new StringBuilder();
                while (i9 < stackTrace.length) {
                    StackTraceElement stackTraceElement2 = stackTrace[i9];
                    sb.append(stackTraceElement2.getClassName());
                    sb.append(".");
                    sb.append(stackTraceElement2.getMethodName());
                    sb.append(":");
                    sb.append(stackTraceElement2.getLineNumber());
                    sb.append("  ");
                }
                if (H.f2649c == null) {
                    Log.w("MediaRouter", "setSelectedRouteInternal is called while sGlobal is null: pkgName=" + this.f2584a.getPackageName() + ", callers=" + ((Object) sb));
                } else {
                    Log.w("MediaRouter", "Default route is selected while a BT route is available: pkgName=" + this.f2584a.getPackageName() + ", callers=" + ((Object) sb));
                }
            }
        }
        if (this.f2603t == f8) {
            return;
        }
        if (this.f2605v != null) {
            this.f2605v = null;
            AbstractC0177l abstractC0177l = this.f2606w;
            if (abstractC0177l != null) {
                abstractC0177l.h(3);
                this.f2606w.d();
                this.f2606w = null;
            }
        }
        if (g() && (c0180o = f8.f2627a.f2626e) != null && c0180o.f2794b) {
            AbstractC0177l abstractC0177lC = f8.a().c(f8.f2628b);
            if (abstractC0177lC != null) {
                Context context = this.f2584a;
                Executor executorE = Build.VERSION.SDK_INT >= 28 ? p093m.d.e(context) : new J.e(0, new Handler(context.getMainLooper()));
                C0185u c0185u = this.f2583E;
                synchronized (abstractC0177lC.f2766a) {
                    try {
                        if (executorE == null) {
                            throw new NullPointerException("Executor shouldn't be null");
                        }
                        if (c0185u == null) {
                            throw new NullPointerException("Listener shouldn't be null");
                        }
                        abstractC0177lC.f2767b = executorE;
                        abstractC0177lC.f2768c = c0185u;
                        ArrayList arrayList = abstractC0177lC.f2770e;
                        if (arrayList != null && !arrayList.isEmpty()) {
                            C0173h c0173h = abstractC0177lC.f2769d;
                            ArrayList arrayList2 = abstractC0177lC.f2770e;
                            abstractC0177lC.f2769d = null;
                            abstractC0177lC.f2770e = null;
                            abstractC0177lC.f2767b.execute(new RunnableC0175j(abstractC0177lC, c0185u, c0173h, arrayList2, 0));
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                this.f2605v = f8;
                this.f2606w = abstractC0177lC;
                abstractC0177lC.e();
                return;
            }
            Log.w("MediaRouter", "setSelectedRouteInternal: Failed to create dynamic group route controller. route=" + f8);
        }
        AbstractC0178m abstractC0178mD = f8.a().d(f8.f2628b);
        if (abstractC0178mD != null) {
            abstractC0178mD.e();
        }
        if (this.f2603t != null) {
            i(this, f8, abstractC0178mD, i8, null, null);
            return;
        }
        this.f2603t = f8;
        this.f2604u = abstractC0178mD;
        Message messageObtainMessage = this.f2597n.obtainMessage(MediaPlayer.Event.Stopped, new M.b(null, f8));
        messageObtainMessage.arg1 = i8;
        messageObtainMessage.sendToTarget();
    }

    /* JADX WARN: Code duplicated, block: B:100:0x00ab A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:25:0x009c  */
    /* JADX WARN: Code duplicated, block: B:32:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:57:0x0116  */
    /* JADX WARN: Code duplicated, block: B:64:0x012b  */
    public final void m() {
        int i8;
        int i9;
        int i10;
        int i11;
        f0 f0Var = new f0();
        I i12 = this.f2599p;
        i12.f2652a = 0L;
        i12.f2653b = false;
        i12.f2654c = SystemClock.elapsedRealtime();
        ((Handler) i12.f2655d).removeCallbacks((Runnable) i12.f2656e);
        ArrayList arrayList = this.f2590g;
        int size = arrayList.size();
        int i13 = 0;
        boolean z7 = false;
        while (true) {
            int i14 = size - 1;
            boolean z8 = this.f2598o;
            if (i14 < 0) {
                I i15 = this.f2599p;
                if (i15.f2653b) {
                    long j8 = i15.f2652a;
                    if (j8 > 0) {
                        ((Handler) i15.f2655d).postDelayed((Runnable) i15.f2656e, j8);
                    }
                }
                boolean z9 = i15.f2653b;
                this.f2579A = i13;
                C0181p c0181pD = z7 ? f0Var.d() : C0181p.f2795c;
                C0181p c0181pD2 = f0Var.d();
                if (g()) {
                    C0174i c0174i = this.f2609z;
                    if (c0174i != null) {
                        c0174i.a();
                        if (!c0174i.f2753b.equals(c0181pD2) || this.f2609z.b() != z9) {
                            c0181pD2.a();
                            if (c0181pD2.f2797b.isEmpty() || z9) {
                                this.f2609z = new C0174i(c0181pD2, z9);
                            } else if (this.f2609z != null) {
                                this.f2609z = null;
                            }
                            A a8 = H.f2649c;
                            this.f2589f.h(this.f2609z);
                        }
                    } else {
                        c0181pD2.a();
                        if (c0181pD2.f2797b.isEmpty()) {
                            this.f2609z = new C0174i(c0181pD2, z9);
                            A a9 = H.f2649c;
                            this.f2589f.h(this.f2609z);
                        } else {
                            this.f2609z = new C0174i(c0181pD2, z9);
                            A a10 = H.f2649c;
                            this.f2589f.h(this.f2609z);
                        }
                    }
                }
                C0174i c0174i2 = this.f2608y;
                if (c0174i2 != null) {
                    c0174i2.a();
                    if (c0174i2.f2753b.equals(c0181pD) && this.f2608y.b() == z9) {
                        return;
                    }
                }
                c0181pD.a();
                if (!c0181pD.f2797b.isEmpty() || z9) {
                    this.f2608y = new C0174i(c0181pD, z9);
                } else if (this.f2608y == null) {
                    return;
                } else {
                    this.f2608y = null;
                }
                A a11 = H.f2649c;
                if (z7 && !z9 && z8) {
                    Log.i("MediaRouter", "Forcing passive route discovery on a low-RAM device, system performance may be affected.  Please consider using CALLBACK_FLAG_REQUEST_DISCOVERY instead of CALLBACK_FLAG_FORCE_DISCOVERY.");
                }
                ArrayList arrayList2 = this.f2593j;
                int size2 = arrayList2.size();
                for (int i16 = 0; i16 < size2; i16++) {
                    AbstractC0179n abstractC0179n = ((E) arrayList2.get(i16)).f2622a;
                    if (abstractC0179n != this.f2589f) {
                        abstractC0179n.h(this.f2608y);
                    }
                }
                return;
            }
            H h8 = (H) ((WeakReference) arrayList.get(i14)).get();
            if (h8 == null) {
                arrayList.remove(i14);
                i8 = i14;
            } else {
                ArrayList arrayList3 = h8.f2651b;
                int size3 = arrayList3.size();
                i13 += size3;
                int i17 = 0;
                while (i17 < size3) {
                    r rVar = (r) arrayList3.get(i17);
                    C0181p c0181p = rVar.f2800c;
                    if (c0181p == null) {
                        throw new IllegalArgumentException("selector must not be null");
                    }
                    f0Var.c(c0181p.b());
                    boolean z10 = (rVar.f2801d & 1) != 0;
                    I i18 = this.f2599p;
                    long j9 = rVar.f2802e;
                    if (z10) {
                        i9 = i14;
                        i10 = i13;
                        long j10 = i18.f2654c;
                        if (j10 - j9 < 30000) {
                            i18.f2652a = Math.max(i18.f2652a, (j9 + 30000) - j10);
                            i18.f2653b = true;
                        }
                        if (z10) {
                            z7 = true;
                        }
                        i11 = rVar.f2801d;
                        if ((i11 & 4) != 0 && !z8) {
                            z7 = true;
                        }
                        if ((i11 & 8) != 0) {
                            z7 = true;
                        }
                        i17++;
                        i14 = i9;
                        i13 = i10;
                        arrayList3 = arrayList3;
                        size3 = size3;
                    } else {
                        i18.getClass();
                        i9 = i14;
                        i10 = i13;
                    }
                    if (z10) {
                        z7 = true;
                    }
                    i11 = rVar.f2801d;
                    if ((i11 & 4) != 0) {
                        z7 = true;
                    }
                    if ((i11 & 8) != 0) {
                        z7 = true;
                    }
                    i17++;
                    i14 = i9;
                    i13 = i10;
                    arrayList3 = arrayList3;
                    size3 = size3;
                }
                i8 = i14;
            }
            size = i8;
        }
    }

    public final void n() {
        MediaRouter2.RoutingController routingController;
        F f8 = this.f2603t;
        if (f8 == null) {
            C0189y c0189y = this.f2582D;
            if (c0189y != null) {
                c0189y.a();
                return;
            }
            return;
        }
        int i8 = f8.f2641o;
        h0 h0Var = this.f2595l;
        h0Var.f2747b = i8;
        h0Var.f2748c = f8.f2642p;
        h0Var.f2749d = f8.b();
        F f9 = this.f2603t;
        h0Var.f2750e = f9.f2638l;
        h0Var.f2751f = f9.f2637k;
        if (g() && this.f2603t.a() == this.f2589f) {
            AbstractC0178m abstractC0178m = this.f2604u;
            int i9 = C0171f.f2729r;
            h0Var.f2746a = ((abstractC0178m instanceof C0167b) && (routingController = ((C0167b) abstractC0178m).f2707g) != null) ? routingController.getId() : null;
        } else {
            h0Var.f2746a = null;
        }
        ArrayList arrayList = this.f2594k;
        if (arrayList.size() > 0) {
            ((AbstractC0190z) arrayList.get(0)).getClass();
            throw null;
        }
        C0189y c0189y2 = this.f2582D;
        if (c0189y2 != null) {
            F f10 = this.f2603t;
            F f11 = this.f2601r;
            if (f11 == null) {
                throw new IllegalStateException("There is no default route.  The media router has not yet been fully initialized.");
            }
            if (f10 == f11 || f10 == this.f2602s) {
                c0189y2.a();
                return;
            }
            int i10 = h0Var.f2749d == 1 ? 2 : 0;
            int i11 = h0Var.f2748c;
            int i12 = h0Var.f2747b;
            String str = (String) h0Var.f2746a;
            MediaSessionCompat mediaSessionCompat = c0189y2.f2814a;
            if (mediaSessionCompat != null) {
                C0188x c0188x = c0189y2.f2815b;
                if (c0188x == null || i10 != 0 || i11 != 0) {
                    C0188x c0188x2 = new C0188x(c0189y2, i10, i11, i12, str);
                    c0189y2.f2815b = c0188x2;
                    mediaSessionCompat.setPlaybackToRemote(c0188x2);
                } else {
                    c0188x.f25673d = i12;
                    p072j0.j.a(c0188x.a(), i12);
                    p072j0.k kVar = c0188x.f25674e;
                    if (kVar != null) {
                        kVar.onVolumeChanged(c0188x);
                    }
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:62:0x0150  */
    /* JADX WARN: Instruction removed from duplicated block: B:62:0x0150, please report this as an issue */
    public final void o(E e8, C0180o c0180o) {
        boolean z7;
        int i8;
        if (e8.f2626e != c0180o) {
            e8.f2626e = c0180o;
            ArrayList arrayList = this.f2591h;
            ArrayList arrayList2 = e8.f2623b;
            HandlerC0186v handlerC0186v = this.f2597n;
            if (c0180o != null) {
                List<C0173h> list = c0180o.f2793a;
                int size = list.size();
                int i9 = 0;
                while (true) {
                    if (i9 < size) {
                        C0173h c0173h = (C0173h) list.get(i9);
                        if (c0173h != null && c0173h.e()) {
                            i9++;
                        } else if (c0180o != this.f2586c.f2791g) {
                            Log.w("MediaRouter", "Ignoring invalid provider descriptor: " + c0180o);
                            z7 = false;
                            i8 = 0;
                        }
                    }
                    ArrayList<M.b> arrayList3 = new ArrayList();
                    ArrayList<M.b> arrayList4 = new ArrayList();
                    int i10 = 0;
                    boolean z8 = false;
                    for (C0173h c0173h2 : list) {
                        if (c0173h2 == null || !c0173h2.e()) {
                            Log.w("MediaRouter", "Ignoring invalid system route descriptor: " + c0173h2);
                        } else {
                            String strD = c0173h2.d();
                            int size2 = arrayList2.size();
                            int i11 = 0;
                            while (true) {
                                if (i11 >= size2) {
                                    i11 = -1;
                                    break;
                                } else if (((F) arrayList2.get(i11)).f2628b.equals(strD)) {
                                    break;
                                } else {
                                    i11++;
                                }
                            }
                            if (i11 < 0) {
                                F f8 = new F(e8, strD, b(e8, strD));
                                int i12 = i10 + 1;
                                arrayList2.add(i10, f8);
                                arrayList.add(f8);
                                if (c0173h2.c().size() > 0) {
                                    arrayList3.add(new M.b(f8, c0173h2));
                                } else {
                                    f8.f(c0173h2);
                                    A a8 = H.f2649c;
                                    handlerC0186v.b(257, f8);
                                }
                                i10 = i12;
                            } else if (i11 < i10) {
                                Log.w("MediaRouter", "Ignoring route descriptor with duplicate id: " + c0173h2);
                            } else {
                                F f9 = (F) arrayList2.get(i11);
                                int i13 = i10 + 1;
                                Collections.swap(arrayList2, i11, i10);
                                if (c0173h2.c().size() > 0) {
                                    arrayList4.add(new M.b(f9, c0173h2));
                                } else if (p(f9, c0173h2) != 0 && f9 == this.f2603t) {
                                    i10 = i13;
                                    z8 = true;
                                }
                                i10 = i13;
                            }
                        }
                    }
                    for (M.b bVar : arrayList3) {
                        F f10 = (F) bVar.f4732a;
                        f10.f((C0173h) bVar.f4733b);
                        A a9 = H.f2649c;
                        handlerC0186v.b(257, f10);
                    }
                    boolean z9 = z8;
                    for (M.b bVar2 : arrayList4) {
                        F f11 = (F) bVar2.f4732a;
                        if (p(f11, (C0173h) bVar2.f4733b) != 0 && f11 == this.f2603t) {
                            z9 = true;
                        }
                    }
                    z7 = z9;
                    i8 = i10;
                }
            } else {
                Log.w("MediaRouter", "Ignoring invalid provider descriptor: " + c0180o);
                z7 = false;
                i8 = 0;
            }
            for (int size3 = arrayList2.size() - 1; size3 >= i8; size3--) {
                F f12 = (F) arrayList2.get(size3);
                f12.f(null);
                arrayList.remove(f12);
            }
            q(z7);
            for (int size4 = arrayList2.size() - 1; size4 >= i8; size4--) {
                F f13 = (F) arrayList2.remove(size4);
                A a10 = H.f2649c;
                handlerC0186v.b(MediaPlayer.Event.Opening, f13);
            }
            A a11 = H.f2649c;
            handlerC0186v.b(515, e8);
        }
    }

    public final int p(F f8, C0173h c0173h) {
        int iF = f8.f(c0173h);
        if (iF != 0) {
            int i8 = iF & 1;
            HandlerC0186v handlerC0186v = this.f2597n;
            if (i8 != 0) {
                A a8 = H.f2649c;
                handlerC0186v.b(MediaPlayer.Event.Buffering, f8);
            }
            if ((iF & 2) != 0) {
                A a9 = H.f2649c;
                handlerC0186v.b(MediaPlayer.Event.Playing, f8);
            }
            if ((iF & 4) != 0) {
                A a10 = H.f2649c;
                handlerC0186v.b(MediaPlayer.Event.Paused, f8);
            }
        }
        return iF;
    }

    public final void q(boolean z7) {
        F f8 = this.f2601r;
        if (f8 != null && !f8.d()) {
            Log.i("MediaRouter", "Clearing the default route because it is no longer selectable: " + this.f2601r);
            this.f2601r = null;
        }
        F f9 = this.f2601r;
        ArrayList<F> arrayList = this.f2591h;
        if (f9 == null && !arrayList.isEmpty()) {
            for (F f10 : arrayList) {
                if (f10.a() == this.f2586c && f10.f2628b.equals("DEFAULT_ROUTE") && f10.d()) {
                    this.f2601r = f10;
                    Log.i("MediaRouter", "Found default route: " + this.f2601r);
                    break;
                }
            }
        }
        F f11 = this.f2602s;
        if (f11 != null && !f11.d()) {
            Log.i("MediaRouter", "Clearing the bluetooth route because it is no longer selectable: " + this.f2602s);
            this.f2602s = null;
        }
        if (this.f2602s == null && !arrayList.isEmpty()) {
            for (F f12 : arrayList) {
                if (f12.a() == this.f2586c && f12.i("android.media.intent.category.LIVE_AUDIO") && !f12.i("android.media.intent.category.LIVE_VIDEO") && f12.d()) {
                    this.f2602s = f12;
                    Log.i("MediaRouter", "Found bluetooth route: " + this.f2602s);
                    break;
                }
            }
        }
        F f13 = this.f2603t;
        if (f13 == null || !f13.f2633g) {
            Log.i("MediaRouter", "Unselecting the current route because it is no longer selectable: " + this.f2603t);
            l(c(), 0);
            return;
        }
        if (z7) {
            h();
            n();
        }
    }
}
