package K3;

import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseIntArray;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.C0633i;
import com.google.android.gms.internal.atv_ads_framework.x0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class z implements com.google.android.gms.common.api.k, com.google.android.gms.common.api.l {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final com.google.android.gms.common.api.e f4581H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final C0228a f4582I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final x0 f4583J;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final int f4586M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final N f4587N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public boolean f4588O;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final /* synthetic */ C0233f f4592S;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final LinkedList f4580G = new LinkedList();

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final HashSet f4584K = new HashSet();

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final HashMap f4585L = new HashMap();

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final ArrayList f4589P = new ArrayList();

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public J3.b f4590Q = null;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public int f4591R = 0;

    public z(C0233f c0233f, com.google.android.gms.common.api.j jVar) {
        this.f4592S = c0233f;
        com.google.android.gms.common.api.e eVarZab = jVar.zab(c0233f.f4550S.getLooper(), this);
        this.f4581H = eVarZab;
        this.f4582I = jVar.getApiKey();
        this.f4583J = new x0(15);
        this.f4586M = jVar.zaa();
        if (!eVarZab.requiresSignIn()) {
            this.f4587N = null;
        } else {
            this.f4587N = jVar.zac(c0233f.f4542K, c0233f.f4550S);
        }
    }

    public final J3.d a(J3.d[] dVarArr) {
        if (dVarArr != null && dVarArr.length != 0) {
            J3.d[] availableFeatures = this.f4581H.getAvailableFeatures();
            if (availableFeatures == null) {
                availableFeatures = new J3.d[0];
            }
            p132r.f fVar = new p132r.f(availableFeatures.length);
            for (J3.d dVar : availableFeatures) {
                fVar.put(dVar.f4139G, Long.valueOf(dVar.i()));
            }
            for (J3.d dVar2 : dVarArr) {
                Long l4 = (Long) fVar.get(dVar2.f4139G);
                if (l4 == null || l4.longValue() < dVar2.i()) {
                    return dVar2;
                }
            }
        }
        return null;
    }

    public final void b(J3.b bVar) {
        HashSet hashSet = this.f4584K;
        Iterator it = hashSet.iterator();
        if (!it.hasNext()) {
            hashSet.clear();
            return;
        }
        A0.O.I(it.next());
        if (U4.a.c(bVar, J3.b.f4131K)) {
            this.f4581H.getEndpointPackageName();
        }
        throw null;
    }

    public final void c(Status status) {
        com.bumptech.glide.c.c(this.f4592S.f4550S);
        d(status, null, false);
    }

    public final void d(Status status, RuntimeException runtimeException, boolean z7) {
        com.bumptech.glide.c.c(this.f4592S.f4550S);
        if ((status == null) == (runtimeException == null)) {
            throw new IllegalArgumentException("Status XOR exception should be null");
        }
        Iterator it = this.f4580G.iterator();
        while (it.hasNext()) {
            T t7 = (T) it.next();
            if (!z7 || t7.f4516a == 2) {
                if (status != null) {
                    t7.a(status);
                } else {
                    t7.b(runtimeException);
                }
                it.remove();
            }
        }
    }

    public final void e() {
        LinkedList linkedList = this.f4580G;
        ArrayList arrayList = new ArrayList(linkedList);
        int size = arrayList.size();
        for (int i8 = 0; i8 < size; i8++) {
            T t7 = (T) arrayList.get(i8);
            if (!this.f4581H.isConnected()) {
                return;
            }
            if (i(t7)) {
                linkedList.remove(t7);
            }
        }
    }

    public final void f() {
        com.google.android.gms.common.api.e eVar = this.f4581H;
        C0233f c0233f = this.f4592S;
        com.bumptech.glide.c.c(c0233f.f4550S);
        this.f4590Q = null;
        b(J3.b.f4131K);
        if (this.f4588O) {
            X3.d dVar = c0233f.f4550S;
            C0228a c0228a = this.f4582I;
            dVar.removeMessages(11, c0228a);
            c0233f.f4550S.removeMessages(9, c0228a);
            this.f4588O = false;
        }
        Iterator it = this.f4585L.values().iterator();
        while (it.hasNext()) {
            I i8 = (I) it.next();
            if (a(i8.f4493a.f4558b) != null) {
                it.remove();
            } else {
                try {
                    AbstractC0240m abstractC0240m = i8.f4493a;
                    ((K) abstractC0240m).f4497e.f4561a.accept(eVar, new p052g4.i());
                } catch (DeadObjectException unused) {
                    onConnectionSuspended(3);
                    eVar.disconnect("DeadObjectException thrown while calling register listener method.");
                } catch (RemoteException unused2) {
                    it.remove();
                }
            }
        }
        e();
        h();
    }

    public final void g(int i8) {
        C0233f c0233f = this.f4592S;
        com.bumptech.glide.c.c(c0233f.f4550S);
        this.f4590Q = null;
        this.f4588O = true;
        String lastDisconnectMessage = this.f4581H.getLastDisconnectMessage();
        x0 x0Var = this.f4583J;
        x0Var.getClass();
        StringBuilder sb = new StringBuilder("The connection to Google Play services was lost");
        if (i8 == 1) {
            sb.append(" due to service disconnection.");
        } else if (i8 == 3) {
            sb.append(" due to dead object exception.");
        }
        if (lastDisconnectMessage != null) {
            sb.append(" Last reason for disconnect: ");
            sb.append(lastDisconnectMessage);
        }
        x0Var.B(true, new Status(20, sb.toString(), null, null));
        X3.d dVar = c0233f.f4550S;
        C0228a c0228a = this.f4582I;
        dVar.sendMessageDelayed(Message.obtain(dVar, 9, c0228a), 5000L);
        X3.d dVar2 = c0233f.f4550S;
        dVar2.sendMessageDelayed(Message.obtain(dVar2, 11, c0228a), 120000L);
        ((SparseIntArray) c0233f.f4544M.f27231H).clear();
        Iterator it = this.f4585L.values().iterator();
        while (it.hasNext()) {
            ((I) it.next()).f4495c.run();
        }
    }

    public final void h() {
        C0233f c0233f = this.f4592S;
        X3.d dVar = c0233f.f4550S;
        C0228a c0228a = this.f4582I;
        dVar.removeMessages(12, c0228a);
        X3.d dVar2 = c0233f.f4550S;
        dVar2.sendMessageDelayed(dVar2.obtainMessage(12, c0228a), c0233f.f4538G);
    }

    public final boolean i(T t7) {
        if (!(t7 instanceof E)) {
            x0 x0Var = this.f4583J;
            com.google.android.gms.common.api.e eVar = this.f4581H;
            t7.d(x0Var, eVar.requiresSignIn());
            try {
                t7.c(this);
            } catch (DeadObjectException unused) {
                onConnectionSuspended(1);
                eVar.disconnect("DeadObjectException thrown while running ApiCallRunner.");
            }
            return true;
        }
        E e8 = (E) t7;
        J3.d dVarA = a(e8.g(this));
        if (dVarA == null) {
            x0 x0Var2 = this.f4583J;
            com.google.android.gms.common.api.e eVar2 = this.f4581H;
            t7.d(x0Var2, eVar2.requiresSignIn());
            try {
                t7.c(this);
            } catch (DeadObjectException unused2) {
                onConnectionSuspended(1);
                eVar2.disconnect("DeadObjectException thrown while running ApiCallRunner.");
            }
            return true;
        }
        Log.w("GoogleApiManager", this.f4581H.getClass().getName() + " could not execute call because it requires feature (" + dVarA.f4139G + ", " + dVarA.i() + ").");
        if (!this.f4592S.f4551T || !e8.f(this)) {
            e8.b(new com.google.android.gms.common.api.q(dVarA));
            return true;
        }
        A a8 = new A(this.f4582I, dVarA);
        int iIndexOf = this.f4589P.indexOf(a8);
        if (iIndexOf >= 0) {
            A a9 = (A) this.f4589P.get(iIndexOf);
            this.f4592S.f4550S.removeMessages(15, a9);
            X3.d dVar = this.f4592S.f4550S;
            dVar.sendMessageDelayed(Message.obtain(dVar, 15, a9), 5000L);
            return false;
        }
        this.f4589P.add(a8);
        X3.d dVar2 = this.f4592S.f4550S;
        dVar2.sendMessageDelayed(Message.obtain(dVar2, 15, a8), 5000L);
        X3.d dVar3 = this.f4592S.f4550S;
        dVar3.sendMessageDelayed(Message.obtain(dVar3, 16, a8), 120000L);
        J3.b bVar = new J3.b(2, null);
        if (j(bVar)) {
            return false;
        }
        this.f4592S.b(bVar, this.f4586M);
        return false;
    }

    public final boolean j(J3.b bVar) {
        synchronized (C0233f.f4536W) {
            this.f4592S.getClass();
        }
        return false;
    }

    public final boolean k(boolean z7) {
        com.bumptech.glide.c.c(this.f4592S.f4550S);
        com.google.android.gms.common.api.e eVar = this.f4581H;
        if (!eVar.isConnected() || !this.f4585L.isEmpty()) {
            return false;
        }
        x0 x0Var = this.f4583J;
        if (((Map) x0Var.f22390H).isEmpty() && ((Map) x0Var.f22391I).isEmpty()) {
            eVar.disconnect("Timing out service connection.");
            return true;
        }
        if (!z7) {
            return false;
        }
        h();
        return false;
    }

    /* JADX WARN: Type inference failed for: r4v7, types: [com.google.android.gms.common.api.e, e4.c] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void l() {
        C0233f c0233f = this.f4592S;
        com.bumptech.glide.c.c(c0233f.f4550S);
        com.google.android.gms.common.api.e eVar = this.f4581H;
        if (eVar.isConnected() || eVar.isConnecting()) {
            return;
        }
        try {
            int iO = c0233f.f4544M.o(c0233f.f4542K, eVar);
            if (iO != 0) {
                J3.b bVar = new J3.b(iO, null);
                Log.w("GoogleApiManager", "The service for " + eVar.getClass().getName() + " is not available: " + bVar.toString());
                n(bVar, null);
                return;
            }
            B b8 = new B(c0233f, eVar, this.f4582I);
            if (eVar.requiresSignIn()) {
                N n7 = this.f4587N;
                com.bumptech.glide.c.h(n7);
                p036e4.c cVar = n7.f4507L;
                if (cVar != null) {
                    cVar.disconnect();
                }
                Integer numValueOf = Integer.valueOf(System.identityHashCode(n7));
                C0633i c0633i = n7.f4506K;
                c0633i.f11852i = numValueOf;
                Handler handler = n7.f4503H;
                n7.f4507L = n7.f4504I.buildClient(n7.f4502G, handler.getLooper(), c0633i, (Object) c0633i.f11851h, (com.google.android.gms.common.api.k) n7, (com.google.android.gms.common.api.l) n7);
                n7.f4508M = b8;
                Set set = n7.f4505J;
                if (set == null || set.isEmpty()) {
                    handler.post(new M(n7, 0));
                } else {
                    n7.f4507L.b();
                }
            }
            try {
                eVar.connect(b8);
            } catch (SecurityException e8) {
                n(new J3.b(10), e8);
            }
        } catch (IllegalStateException e9) {
            n(new J3.b(10), e9);
        }
    }

    public final void m(T t7) {
        com.bumptech.glide.c.c(this.f4592S.f4550S);
        boolean zIsConnected = this.f4581H.isConnected();
        LinkedList linkedList = this.f4580G;
        if (zIsConnected) {
            if (i(t7)) {
                h();
                return;
            } else {
                linkedList.add(t7);
                return;
            }
        }
        linkedList.add(t7);
        J3.b bVar = this.f4590Q;
        if (bVar == null || bVar.f4133H == 0 || bVar.f4134I == null) {
            l();
        } else {
            n(bVar, null);
        }
    }

    public final void n(J3.b bVar, RuntimeException runtimeException) {
        p036e4.c cVar;
        com.bumptech.glide.c.c(this.f4592S.f4550S);
        N n7 = this.f4587N;
        if (n7 != null && (cVar = n7.f4507L) != null) {
            cVar.disconnect();
        }
        com.bumptech.glide.c.c(this.f4592S.f4550S);
        this.f4590Q = null;
        ((SparseIntArray) this.f4592S.f4544M.f27231H).clear();
        b(bVar);
        if ((this.f4581H instanceof N3.c) && bVar.f4133H != 24) {
            C0233f c0233f = this.f4592S;
            c0233f.f4539H = true;
            X3.d dVar = c0233f.f4550S;
            dVar.sendMessageDelayed(dVar.obtainMessage(19), 300000L);
        }
        if (bVar.f4133H == 4) {
            c(C0233f.f4535V);
            return;
        }
        if (this.f4580G.isEmpty()) {
            this.f4590Q = bVar;
            return;
        }
        if (runtimeException != null) {
            com.bumptech.glide.c.c(this.f4592S.f4550S);
            d(null, runtimeException, false);
            return;
        }
        if (!this.f4592S.f4551T) {
            c(C0233f.c(this.f4582I, bVar));
            return;
        }
        d(C0233f.c(this.f4582I, bVar), null, true);
        if (this.f4580G.isEmpty() || j(bVar) || this.f4592S.b(bVar, this.f4586M)) {
            return;
        }
        if (bVar.f4133H == 18) {
            this.f4588O = true;
        }
        if (!this.f4588O) {
            c(C0233f.c(this.f4582I, bVar));
            return;
        }
        C0233f c0233f2 = this.f4592S;
        C0228a c0228a = this.f4582I;
        X3.d dVar2 = c0233f2.f4550S;
        dVar2.sendMessageDelayed(Message.obtain(dVar2, 9, c0228a), 5000L);
    }

    public final void o(J3.b bVar) {
        com.bumptech.glide.c.c(this.f4592S.f4550S);
        com.google.android.gms.common.api.e eVar = this.f4581H;
        eVar.disconnect("onSignInFailed for " + eVar.getClass().getName() + " with " + String.valueOf(bVar));
        n(bVar, null);
    }

    @Override // K3.InterfaceC0232e
    public final void onConnected() {
        Looper looperMyLooper = Looper.myLooper();
        C0233f c0233f = this.f4592S;
        if (looperMyLooper == c0233f.f4550S.getLooper()) {
            f();
        } else {
            c0233f.f4550S.post(new M(this, 1));
        }
    }

    @Override // K3.InterfaceC0239l
    public final void onConnectionFailed(J3.b bVar) {
        n(bVar, null);
    }

    @Override // K3.InterfaceC0232e
    public final void onConnectionSuspended(int i8) {
        Looper looperMyLooper = Looper.myLooper();
        C0233f c0233f = this.f4592S;
        if (looperMyLooper == c0233f.f4550S.getLooper()) {
            g(i8);
        } else {
            c0233f.f4550S.post(new androidx.leanback.widget.C(this, i8, 3));
        }
    }

    public final void p() {
        com.bumptech.glide.c.c(this.f4592S.f4550S);
        Status status = C0233f.f4534U;
        c(status);
        x0 x0Var = this.f4583J;
        x0Var.getClass();
        x0Var.B(false, status);
        for (C0236i c0236i : (C0236i[]) this.f4585L.keySet().toArray(new C0236i[0])) {
            m(new Q(c0236i, new p052g4.i()));
        }
        b(new J3.b(4));
        com.google.android.gms.common.api.e eVar = this.f4581H;
        if (eVar.isConnected()) {
            eVar.onUserSignOut(new C0234g(this));
        }
    }
}
