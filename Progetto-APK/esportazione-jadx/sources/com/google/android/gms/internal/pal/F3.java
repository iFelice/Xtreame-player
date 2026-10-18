package com.google.android.gms.internal.pal;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;
import java.util.logging.Logger;
import p079k.AbstractC3012d;

/* JADX INFO: loaded from: classes.dex */
public abstract class F3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Logger f23522a = Logger.getLogger(F3.class.getName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final AtomicReference f23523b = new AtomicReference(new C2839v3());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ConcurrentHashMap f23524c = new ConcurrentHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final ConcurrentHashMap f23525d = new ConcurrentHashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ConcurrentHashMap f23526e = new ConcurrentHashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final ConcurrentHashMap f23527f = new ConcurrentHashMap();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final ConcurrentHashMap f23528g = new ConcurrentHashMap();

    public static void a(String str) {
        if (str == null) {
            throw new IllegalArgumentException("catalogueName must be non-null.");
        }
        ConcurrentHashMap concurrentHashMap = f23526e;
        Locale locale = Locale.US;
        A0.O.I(concurrentHashMap.get(str.toLowerCase(locale)));
        String strConcat = "no catalogue found for " + str + ". ";
        if (str.toLowerCase(locale).startsWith("tinkaead")) {
            strConcat = strConcat.concat("Maybe call AeadConfig.register().");
        }
        if (str.toLowerCase(locale).startsWith("tinkdeterministicaead")) {
            strConcat = String.valueOf(strConcat).concat("Maybe call DeterministicAeadConfig.register().");
        } else if (str.toLowerCase(locale).startsWith("tinkstreamingaead")) {
            strConcat = String.valueOf(strConcat).concat("Maybe call StreamingAeadConfig.register().");
        } else if (str.toLowerCase(locale).startsWith("tinkhybriddecrypt") || str.toLowerCase(locale).startsWith("tinkhybridencrypt")) {
            strConcat = String.valueOf(strConcat).concat("Maybe call HybridConfig.register().");
        } else if (str.toLowerCase(locale).startsWith("tinkmac")) {
            strConcat = String.valueOf(strConcat).concat("Maybe call MacConfig.register().");
        } else if (str.toLowerCase(locale).startsWith("tinkpublickeysign") || str.toLowerCase(locale).startsWith("tinkpublickeyverify")) {
            strConcat = String.valueOf(strConcat).concat("Maybe call SignatureConfig.register().");
        } else if (str.toLowerCase(locale).startsWith("tink")) {
            strConcat = String.valueOf(strConcat).concat("Maybe call TinkConfig.register().");
        }
        throw new GeneralSecurityException(strConcat);
    }

    public static synchronized AbstractC2740j b(C2723g6 c2723g6) {
        AbstractC2777n4 abstractC2777n4N;
        AbstractC2740j abstractC2740jB;
        try {
            C2767m2 c2767m2Zzb = ((C2839v3) f23523b.get()).d(c2723g6.p()).zzb();
            if (!((Boolean) f23525d.get(c2723g6.p())).booleanValue()) {
                throw new GeneralSecurityException("newKey-operation not permitted for key type ".concat(String.valueOf(c2723g6.p())));
            }
            r rVarO = c2723g6.o();
            c2767m2Zzb.getClass();
            try {
                abstractC2777n4N = ((AbstractC3012d) c2767m2Zzb.f23961H).n();
                abstractC2740jB = abstractC2777n4N.b(rVarO);
                abstractC2777n4N.d(abstractC2740jB);
            } catch (L e8) {
                throw new GeneralSecurityException("Failures parsing proto of type ".concat(((AbstractC3012d) c2767m2Zzb.f23961H).n().f23968a.getName()), e8);
            }
        } catch (Throwable th) {
            throw th;
        }
        return abstractC2777n4N.a(abstractC2740jB);
    }

    public static Object c(String str, D d6, Class cls) throws GeneralSecurityException {
        C2767m2 c2767m2A = ((C2839v3) f23523b.get()).a(cls, str);
        AbstractC3012d abstractC3012d = (AbstractC3012d) c2767m2A.f23961H;
        String strConcat = "Expected proto of type ".concat(((Class) abstractC3012d.f25765a).getName());
        if (((Class) abstractC3012d.f25765a).isInstance(d6)) {
            return c2767m2A.e(d6);
        }
        throw new GeneralSecurityException(strConcat);
    }

    public static synchronized void d(P1.e eVar, M3 m7) {
        try {
            AtomicReference atomicReference = f23523b;
            C2839v3 c2839v3 = new C2839v3((C2839v3) atomicReference.get());
            c2839v3.b(eVar, m7);
            String strQ = eVar.q();
            String strQ2 = m7.q();
            g(strQ, eVar.n().c(), true);
            g(strQ2, Collections.emptyMap(), false);
            if (!((C2839v3) atomicReference.get()).f24047a.containsKey(strQ)) {
                f23524c.put(strQ, new C2805r1(eVar, 6));
                h(eVar.q(), eVar.n().c());
            }
            ConcurrentHashMap concurrentHashMap = f23525d;
            concurrentHashMap.put(strQ, Boolean.TRUE);
            concurrentHashMap.put(strQ2, Boolean.FALSE);
            atomicReference.set(c2839v3);
        } catch (Throwable th) {
            throw th;
        }
    }

    public static synchronized void e(M3 m7) {
        try {
            AtomicReference atomicReference = f23523b;
            C2839v3 c2839v3 = new C2839v3((C2839v3) atomicReference.get());
            c2839v3.c(m7);
            String strQ = m7.q();
            g(strQ, m7.n().c(), true);
            if (!((C2839v3) atomicReference.get()).f24047a.containsKey(strQ)) {
                f23524c.put(strQ, new C2805r1(m7, 6));
                h(strQ, m7.n().c());
            }
            f23525d.put(strQ, Boolean.TRUE);
            atomicReference.set(c2839v3);
        } catch (Throwable th) {
            throw th;
        }
    }

    public static synchronized void f(D3 d6) {
        try {
            Class clsZzb = d6.zzb();
            ConcurrentHashMap concurrentHashMap = f23527f;
            if (concurrentHashMap.containsKey(clsZzb)) {
                D3 d8 = (D3) concurrentHashMap.get(clsZzb);
                if (!d6.getClass().getName().equals(d8.getClass().getName())) {
                    f23522a.logp(Level.WARNING, "com.google.crypto.tink.Registry", "registerPrimitiveWrapper", "Attempted overwrite of a registered PrimitiveWrapper for type ".concat(clsZzb.toString()));
                    throw new GeneralSecurityException("PrimitiveWrapper for primitive (" + clsZzb.getName() + ") is already registered to be " + d8.getClass().getName() + ", cannot be re-registered with " + d6.getClass().getName());
                }
            }
            concurrentHashMap.put(clsZzb, d6);
        } catch (Throwable th) {
            throw th;
        }
    }

    public static synchronized void g(String str, Map map, boolean z7) {
        if (z7) {
            try {
                ConcurrentHashMap concurrentHashMap = f23525d;
                if (concurrentHashMap.containsKey(str) && !((Boolean) concurrentHashMap.get(str)).booleanValue()) {
                    throw new GeneralSecurityException("New keys are already disallowed for key type ".concat(str));
                }
                if (((C2839v3) f23523b.get()).f24047a.containsKey(str)) {
                    for (Map.Entry entry : map.entrySet()) {
                        if (!f23528g.containsKey(entry.getKey())) {
                            throw new GeneralSecurityException("Attempted to register a new key template " + ((String) entry.getKey()) + " from an existing key manager of type " + str);
                        }
                    }
                } else {
                    for (Map.Entry entry2 : map.entrySet()) {
                        if (f23528g.containsKey(entry2.getKey())) {
                            throw new GeneralSecurityException("Attempted overwrite of a registered key template ".concat(String.valueOf((String) entry2.getKey())));
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void h(String str, Map map) {
        for (Map.Entry entry : map.entrySet()) {
            ConcurrentHashMap concurrentHashMap = f23528g;
            String str2 = (String) entry.getKey();
            byte[] bArrB = ((AbstractC2740j) ((C2769m4) entry.getValue()).f23963a).b();
            int i8 = ((C2769m4) entry.getValue()).f23964b;
            C2715f6 c2715f6M = C2723g6.m();
            if (c2715f6M.f23476I) {
                c2715f6M.f();
                c2715f6M.f23476I = false;
            }
            C2723g6.q((C2723g6) c2715f6M.f23475H, str);
            C2796q c2796qO = r.o(0, bArrB, bArrB.length);
            if (c2715f6M.f23476I) {
                c2715f6M.f();
                c2715f6M.f23476I = false;
            }
            ((C2723g6) c2715f6M.f23475H).zzf = c2796qO;
            int i9 = i8 - 1;
            int i10 = i9 != 0 ? i9 != 1 ? 5 : 4 : 3;
            if (c2715f6M.f23476I) {
                c2715f6M.f();
                c2715f6M.f23476I = false;
            }
            ((C2723g6) c2715f6M.f23475H).zzg = AbstractC2864y4.A(i10);
            concurrentHashMap.put(str2, new C2855x3((C2723g6) c2715f6M.d()));
        }
    }
}
