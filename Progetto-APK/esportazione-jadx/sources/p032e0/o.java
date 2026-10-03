package p032e0;

import Y.C0404p;
import android.os.Looper;
import com.google.android.gms.internal.measurement.Q1;
import com.google.protobuf.U2;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import p000a.r;
import p093m.b;
import p101n.a;
import p101n.c;
import p101n.d;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class o extends B {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final boolean f24749J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public a f24750K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public EnumC2982j f24751L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final WeakReference f24752M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public int f24753N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public boolean f24754O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public boolean f24755P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final ArrayList f24756Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final L6.a f24757R;

    public o(m mVar) {
        q0.h(mVar, "provider");
        new AtomicReference(null);
        this.f24749J = true;
        this.f24750K = new a();
        EnumC2982j enumC2982j = EnumC2982j.f24742H;
        this.f24751L = enumC2982j;
        this.f24756Q = new ArrayList();
        this.f24752M = new WeakReference(mVar);
        this.f24757R = new L6.a(enumC2982j);
    }

    @Override // p032e0.B
    public final void a(InterfaceC2984l interfaceC2984l) {
        InterfaceC2983k c2976d;
        m mVar;
        q0.h(interfaceC2984l, "observer");
        e("addObserver");
        EnumC2982j enumC2982j = this.f24751L;
        EnumC2982j enumC2982j2 = EnumC2982j.f24741G;
        if (enumC2982j != enumC2982j2) {
            enumC2982j2 = EnumC2982j.f24742H;
        }
        n nVar = new n();
        HashMap map = q.f24759a;
        if (interfaceC2984l instanceof InterfaceC2983k) {
            c2976d = (InterfaceC2983k) interfaceC2984l;
        } else {
            Class<?> cls = interfaceC2984l.getClass();
            if (q.b(cls) == 2) {
                Object obj = q.f24760b.get(cls);
                q0.e(obj);
                List list = (List) obj;
                if (list.size() == 1) {
                    q.a((Constructor) list.get(0), interfaceC2984l);
                    throw null;
                }
                int size = list.size();
                InterfaceC2977e[] interfaceC2977eArr = new InterfaceC2977e[size];
                if (size > 0) {
                    q.a((Constructor) list.get(0), interfaceC2984l);
                    throw null;
                }
                c2976d = new C0404p(interfaceC2977eArr);
            } else {
                c2976d = new C2976d(interfaceC2984l);
            }
        }
        nVar.f24748b = c2976d;
        nVar.f24747a = enumC2982j2;
        if (((n) this.f24750K.i(interfaceC2984l, nVar)) == null && (mVar = (m) this.f24752M.get()) != null) {
            boolean z7 = this.f24753N != 0 || this.f24754O;
            EnumC2982j enumC2982jD = d(interfaceC2984l);
            this.f24753N++;
            while (nVar.f24747a.compareTo(enumC2982jD) < 0 && this.f24750K.f27289K.containsKey(interfaceC2984l)) {
                this.f24756Q.add(nVar.f24747a);
                C2979g c2979g = EnumC2981i.Companion;
                EnumC2982j enumC2982j3 = nVar.f24747a;
                c2979g.getClass();
                EnumC2981i enumC2981iA = C2979g.a(enumC2982j3);
                if (enumC2981iA == null) {
                    throw new IllegalStateException("no event up from " + nVar.f24747a);
                }
                nVar.a(mVar, enumC2981iA);
                ArrayList arrayList = this.f24756Q;
                arrayList.remove(arrayList.size() - 1);
                enumC2982jD = d(interfaceC2984l);
            }
            if (!z7) {
                i();
            }
            this.f24753N--;
        }
    }

    @Override // p032e0.B
    public final void c(InterfaceC2984l interfaceC2984l) {
        q0.h(interfaceC2984l, "observer");
        e("removeObserver");
        this.f24750K.c(interfaceC2984l);
    }

    public final EnumC2982j d(InterfaceC2984l interfaceC2984l) {
        n nVar;
        HashMap map = this.f24750K.f27289K;
        c cVar = map.containsKey(interfaceC2984l) ? ((c) map.get(interfaceC2984l)).f27294J : null;
        EnumC2982j enumC2982j = (cVar == null || (nVar = (n) cVar.f27292H) == null) ? null : nVar.f24747a;
        ArrayList arrayList = this.f24756Q;
        EnumC2982j enumC2982j2 = arrayList.isEmpty() ^ true ? (EnumC2982j) U2.g(arrayList, 1) : null;
        EnumC2982j enumC2982j3 = this.f24751L;
        q0.h(enumC2982j3, "state1");
        if (enumC2982j == null || enumC2982j.compareTo(enumC2982j3) >= 0) {
            enumC2982j = enumC2982j3;
        }
        return (enumC2982j2 == null || enumC2982j2.compareTo(enumC2982j) >= 0) ? enumC2982j : enumC2982j2;
    }

    public final void e(String str) {
        if (this.f24749J) {
            b.g0().f26649c.getClass();
            if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
                throw new IllegalStateException(r.g("Method ", str, " must be called on the main thread").toString());
            }
        }
    }

    public final void f(EnumC2981i enumC2981i) {
        q0.h(enumC2981i, "event");
        e("handleLifecycleEvent");
        g(enumC2981i.a());
    }

    public final void g(EnumC2982j enumC2982j) {
        EnumC2982j enumC2982j2 = this.f24751L;
        if (enumC2982j2 == enumC2982j) {
            return;
        }
        EnumC2982j enumC2982j3 = EnumC2982j.f24742H;
        EnumC2982j enumC2982j4 = EnumC2982j.f24741G;
        if (enumC2982j2 == enumC2982j3 && enumC2982j == enumC2982j4) {
            throw new IllegalStateException(("State must be at least CREATED to move to " + enumC2982j + ", but was " + this.f24751L + " in component " + this.f24752M.get()).toString());
        }
        this.f24751L = enumC2982j;
        if (this.f24754O || this.f24753N != 0) {
            this.f24755P = true;
            return;
        }
        this.f24754O = true;
        i();
        this.f24754O = false;
        if (this.f24751L == enumC2982j4) {
            this.f24750K = new a();
        }
    }

    public final void h() {
        EnumC2982j enumC2982j = EnumC2982j.f24743I;
        e("setCurrentState");
        g(enumC2982j);
    }

    public final void i() {
        int i8;
        Q1[] q1Arr;
        EnumC2981i enumC2981i;
        m mVar = (m) this.f24752M.get();
        if (mVar == null) {
            throw new IllegalStateException("LifecycleOwner of this LifecycleRegistry is already garbage collected. It is too late to change lifecycle state.");
        }
        while (true) {
            a aVar = this.f24750K;
            if (aVar.f27303J == 0) {
                break;
            }
            c cVar = aVar.f27300G;
            q0.e(cVar);
            EnumC2982j enumC2982j = ((n) cVar.f27292H).f24747a;
            c cVar2 = this.f24750K.f27301H;
            q0.e(cVar2);
            EnumC2982j enumC2982j2 = ((n) cVar2.f27292H).f24747a;
            if (enumC2982j == enumC2982j2 && this.f24751L == enumC2982j2) {
                break;
            }
            this.f24755P = false;
            EnumC2982j enumC2982j3 = this.f24751L;
            c cVar3 = this.f24750K.f27300G;
            q0.e(cVar3);
            if (enumC2982j3.compareTo(((n) cVar3.f27292H).f24747a) < 0) {
                a aVar2 = this.f24750K;
                p101n.b bVar = new p101n.b(aVar2.f27301H, aVar2.f27300G, 1);
                aVar2.f27302I.put(bVar, Boolean.FALSE);
                while (bVar.hasNext() && !this.f24755P) {
                    Map.Entry entry = (Map.Entry) bVar.next();
                    q0.g(entry, "next()");
                    InterfaceC2984l interfaceC2984l = (InterfaceC2984l) entry.getKey();
                    n nVar = (n) entry.getValue();
                    while (nVar.f24747a.compareTo(this.f24751L) > 0 && !this.f24755P && this.f24750K.f27289K.containsKey(interfaceC2984l)) {
                        C2979g c2979g = EnumC2981i.Companion;
                        EnumC2982j enumC2982j4 = nVar.f24747a;
                        c2979g.getClass();
                        q0.h(enumC2982j4, "state");
                        int iOrdinal = enumC2982j4.ordinal();
                        if (iOrdinal == 2) {
                            enumC2981i = EnumC2981i.ON_DESTROY;
                        } else if (iOrdinal != 3) {
                            enumC2981i = iOrdinal != 4 ? null : EnumC2981i.ON_PAUSE;
                        } else {
                            enumC2981i = EnumC2981i.ON_STOP;
                        }
                        if (enumC2981i == null) {
                            throw new IllegalStateException("no event down from " + nVar.f24747a);
                        }
                        this.f24756Q.add(enumC2981i.a());
                        nVar.a(mVar, enumC2981i);
                        ArrayList arrayList = this.f24756Q;
                        arrayList.remove(arrayList.size() - 1);
                    }
                }
            }
            c cVar4 = this.f24750K.f27301H;
            if (!this.f24755P && cVar4 != null && this.f24751L.compareTo(((n) cVar4.f27292H).f24747a) > 0) {
                a aVar3 = this.f24750K;
                aVar3.getClass();
                d dVar = new d(aVar3);
                aVar3.f27302I.put(dVar, Boolean.FALSE);
                while (dVar.hasNext() && !this.f24755P) {
                    Map.Entry entry2 = (Map.Entry) dVar.next();
                    InterfaceC2984l interfaceC2984l2 = (InterfaceC2984l) entry2.getKey();
                    n nVar2 = (n) entry2.getValue();
                    while (nVar2.f24747a.compareTo(this.f24751L) < 0 && !this.f24755P && this.f24750K.f27289K.containsKey(interfaceC2984l2)) {
                        this.f24756Q.add(nVar2.f24747a);
                        C2979g c2979g2 = EnumC2981i.Companion;
                        EnumC2982j enumC2982j5 = nVar2.f24747a;
                        c2979g2.getClass();
                        EnumC2981i enumC2981iA = C2979g.a(enumC2982j5);
                        if (enumC2981iA == null) {
                            throw new IllegalStateException("no event up from " + nVar2.f24747a);
                        }
                        nVar2.a(mVar, enumC2981iA);
                        ArrayList arrayList2 = this.f24756Q;
                        arrayList2.remove(arrayList2.size() - 1);
                    }
                }
            }
        }
        this.f24755P = false;
        L6.a aVar4 = this.f24757R;
        Object obj = this.f24751L;
        aVar4.getClass();
        if (obj == null) {
            obj = M6.a.f4830a;
        }
        synchronized (aVar4) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = L6.a.f4730I;
            if (q0.c(atomicReferenceFieldUpdater.get(aVar4), obj)) {
                return;
            }
            atomicReferenceFieldUpdater.set(aVar4, obj);
            int i9 = aVar4.f4731H;
            if ((i9 & 1) != 0) {
                aVar4.f4731H = i9 + 2;
                return;
            }
            int i10 = i9 + 1;
            aVar4.f4731H = i10;
            Q1[] q1Arr2 = (Q1[]) aVar4.f10616G;
            while (true) {
                if (q1Arr2 != null) {
                    for (Q1 q7 : q1Arr2) {
                    }
                }
                synchronized (aVar4) {
                    i8 = aVar4.f4731H;
                    if (i8 == i10) {
                        aVar4.f4731H = i10 + 1;
                        return;
                    }
                    q1Arr = (Q1[]) aVar4.f10616G;
                }
                q1Arr2 = q1Arr;
                i10 = i8;
            }
        }
    }
}
