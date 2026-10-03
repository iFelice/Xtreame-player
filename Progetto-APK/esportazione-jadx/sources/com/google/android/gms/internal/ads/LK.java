package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Pair;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import p021c4.C0574d1;
import p021c4.C0597l0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class LK implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f14496G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f14497H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f14498I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ Object f14499J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ boolean f14500K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final /* synthetic */ Object f14501L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final /* synthetic */ Object f14502M;

    public LK(C0574d1 c0574d1, String str, String str2, p021c4.J1 j8, boolean z7, com.google.android.gms.internal.measurement.M m7) {
        this.f14496G = 2;
        this.f14501L = str;
        this.f14502M = str2;
        this.f14497H = j8;
        this.f14500K = z7;
        this.f14498I = m7;
        this.f14499J = c0574d1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [c4.I1, c4.s0] */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v12, types: [com.google.android.gms.internal.measurement.M] */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v8 */
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
    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        Bundle bundle;
        RemoteException e8;
        C0597l0 c0597l0;
        AtomicReference atomicReference;
        switch (this.f14496G) {
            case 0:
                Pair pair = (Pair) this.f14502M;
                ((C2032tL) ((QK) ((C0871Om) this.f14501L).f15197I).f16015h).a(((Integer) pair.first).intValue(), (C2190wN) pair.second, (C1827pN) this.f14497H, (C1721nL) this.f14498I, (IOException) this.f14499J, this.f14500K);
                return;
            case 1:
                ((AN) this.f14502M).a(0, (C2190wN) ((C1294f8) this.f14501L).f18727I, (C1827pN) this.f14497H, (C1721nL) this.f14498I, (IOException) this.f14499J, this.f14500K);
                return;
            case 2:
                Object obj = this.f14501L;
                ?? r7 = this.f14498I;
                Object obj2 = this.f14499J;
                Bundle bundle2 = new Bundle();
                try {
                    try {
                        C0574d1 c0574d1 = (C0574d1) obj2;
                        p021c4.G g8 = c0574d1.f11146J;
                        Object obj3 = this.f14502M;
                        if (g8 == null) {
                            C0597l0 c0597l1 = (C0597l0) c0574d1.f10616G;
                            p021c4.T t7 = c0597l1.f11258O;
                            C0597l0.k(t7);
                            t7.f11039L.c((String) obj, (String) obj3, "Failed to get user properties; not connected to service");
                            p021c4.I1 i8 = c0597l1.f11261R;
                            C0597l0.i(i8);
                            i8.K((com.google.android.gms.internal.measurement.M) r7, bundle2);
                            return;
                        }
                        p021c4.J1 j8 = (p021c4.J1) this.f14497H;
                        com.bumptech.glide.c.h(j8);
                        List<p021c4.F1> listK0 = g8.k0((String) obj, (String) obj3, this.f14500K, j8);
                        bundle = new Bundle();
                        if (listK0 != null) {
                            for (p021c4.F1 f8 : listK0) {
                                String str = f8.f10843K;
                                String str2 = f8.f10840H;
                                if (str != null) {
                                    bundle.putString(str2, str);
                                } else {
                                    Long l4 = f8.f10842J;
                                    if (l4 != null) {
                                        bundle.putLong(str2, l4.longValue());
                                    } else {
                                        Double d6 = f8.f10845M;
                                        if (d6 != null) {
                                            bundle.putDouble(str2, d6.doubleValue());
                                        }
                                    }
                                }
                            }
                        }
                        try {
                            c0574d1.D();
                            c0597l0 = (C0597l0) c0574d1.f10616G;
                            r7 = (com.google.android.gms.internal.measurement.M) r7;
                            obj2 = obj2;
                        } catch (RemoteException e9) {
                            e8 = e9;
                            p021c4.T t8 = ((C0597l0) ((C0574d1) obj2).f10616G).f11258O;
                            C0597l0.k(t8);
                            t8.f11039L.c((String) obj, e8, "Failed to get user properties; remote exception");
                            C0574d1 c0574d2 = (C0574d1) obj2;
                            c0597l0 = (C0597l0) c0574d2.f10616G;
                            r7 = (com.google.android.gms.internal.measurement.M) r7;
                            obj2 = c0574d2;
                        }
                        ?? r8 = c0597l0.f11261R;
                        C0597l0.i(r8);
                        r8.K(r7, bundle);
                        return;
                    } catch (RemoteException e10) {
                        bundle = bundle2;
                        e8 = e10;
                    } catch (Throwable th) {
                        th = th;
                        p021c4.I1 i9 = ((C0597l0) ((C0574d1) obj2).f10616G).f11261R;
                        C0597l0.i(i9);
                        i9.K((com.google.android.gms.internal.measurement.M) r7, bundle2);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    bundle2 = bundle;
                    p021c4.I1 i10 = ((C0597l0) ((C0574d1) obj2).f10616G).f11261R;
                    C0597l0.i(i10);
                    i10.K((com.google.android.gms.internal.measurement.M) r7, bundle2);
                    throw th;
                }
                break;
            default:
                AtomicReference atomicReference2 = (AtomicReference) this.f14501L;
                synchronized (atomicReference2) {
                    try {
                        try {
                            C0574d1 c0574d3 = (C0574d1) this.f14499J;
                            p021c4.G g9 = c0574d3.f11146J;
                            if (g9 == null) {
                                p021c4.T t9 = ((C0597l0) c0574d3.f10616G).f11258O;
                                C0597l0.k(t9);
                                t9.f11039L.d(null, (String) this.f14502M, (String) this.f14497H, "(legacy) Failed to get user properties; not connected to service");
                                atomicReference2.set(Collections.emptyList());
                                atomicReference2.notify();
                                return;
                            }
                            if (TextUtils.isEmpty(null)) {
                                p021c4.J1 j9 = (p021c4.J1) this.f14498I;
                                com.bumptech.glide.c.h(j9);
                                atomicReference2.set(g9.k0((String) this.f14502M, (String) this.f14497H, this.f14500K, j9));
                            } else {
                                atomicReference2.set(g9.F1(null, (String) this.f14502M, (String) this.f14497H, this.f14500K));
                            }
                            c0574d3.D();
                            atomicReference = (AtomicReference) this.f14501L;
                            atomicReference.notify();
                            return;
                        } catch (RemoteException e11) {
                            p021c4.T t10 = ((C0597l0) ((C0574d1) this.f14499J).f10616G).f11258O;
                            C0597l0.k(t10);
                            t10.f11039L.d(null, (String) this.f14502M, e11, "(legacy) Failed to get user properties; remote exception");
                            ((AtomicReference) this.f14501L).set(Collections.emptyList());
                            atomicReference = (AtomicReference) this.f14501L;
                        }
                    } catch (Throwable th3) {
                        ((AtomicReference) this.f14501L).notify();
                        throw th3;
                    }
                }
                break;
        }
    }

    public LK(C0574d1 c0574d1, AtomicReference atomicReference, String str, String str2, p021c4.J1 j8, boolean z7) {
        this.f14496G = 3;
        this.f14501L = atomicReference;
        this.f14502M = str;
        this.f14497H = str2;
        this.f14498I = j8;
        this.f14500K = z7;
        this.f14499J = c0574d1;
    }

    public /* synthetic */ LK(Object obj, Object obj2, C1827pN c1827pN, C1721nL c1721nL, IOException iOException, boolean z7, int i8) {
        this.f14496G = i8;
        this.f14501L = obj;
        this.f14502M = obj2;
        this.f14497H = c1827pN;
        this.f14498I = c1721nL;
        this.f14499J = iOException;
        this.f14500K = z7;
    }
}
