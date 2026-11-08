package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Optional;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;
import org.eclipse.paho.client.mqttv3.MqttTopic;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.qx, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1904qx {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f20659a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f20660b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C2111ux f20661c;

    public C1904qx(C2111ux c2111ux) {
        this.f20661c = c2111ux;
    }

    public static String a(String str, p043f3.a aVar) {
        return com.google.protobuf.U2.l(str, MqttTopic.MULTI_LEVEL_WILDCARD, aVar == null ? "NULL" : aVar.name());
    }

    public final synchronized void b(ArrayList arrayList, p090l3.O o4) {
        for (p090l3.T0 t7 : c(arrayList)) {
            String str = t7.f26500G;
            p043f3.a aVarA = p043f3.a.a(t7.f26501H);
            C1644lx c1644lxA = this.f20661c.a(t7, o4);
            if (aVarA != null && c1644lxA != null) {
                e(a(str, aVarA), c1644lxA);
            }
        }
    }

    public final synchronized ArrayList c(ArrayList arrayList) {
        ArrayList arrayList2;
        try {
            HashSet hashSet = new HashSet();
            arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                p090l3.T0 t7 = (p090l3.T0) it.next();
                String strA = a(t7.f26500G, p043f3.a.a(t7.f26501H));
                hashSet.add(strA);
                AbstractC2059tx abstractC2059tx = (AbstractC2059tx) this.f20659a.get(strA);
                if (abstractC2059tx == null) {
                    arrayList2.add(t7);
                } else if (!abstractC2059tx.f21162e.equals(t7)) {
                    this.f20660b.put(strA, abstractC2059tx);
                    this.f20659a.remove(strA);
                }
            }
            Iterator it2 = this.f20659a.entrySet().iterator();
            while (it2.hasNext()) {
                Map.Entry entry = (Map.Entry) it2.next();
                if (!hashSet.contains((String) entry.getKey())) {
                    this.f20660b.put((String) entry.getKey(), (AbstractC2059tx) entry.getValue());
                    it2.remove();
                }
            }
            Iterator it3 = this.f20660b.entrySet().iterator();
            while (it3.hasNext()) {
                AbstractC2059tx abstractC2059tx2 = (AbstractC2059tx) ((Map.Entry) it3.next()).getValue();
                abstractC2059tx2.f21163f.set(false);
                abstractC2059tx2.f21169l.set(false);
                if (!abstractC2059tx2.f()) {
                    it3.remove();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return arrayList2;
    }

    /* JADX WARN: Type inference failed for: r4v8, types: [com.google.android.gms.internal.ads.px] */
    public final synchronized Optional d(final Class cls, String str, p043f3.a aVar) {
        ConcurrentHashMap concurrentHashMap = this.f20659a;
        String strA = a(str, aVar);
        if (!concurrentHashMap.containsKey(strA) && !this.f20660b.containsKey(strA)) {
            return Optional.empty();
        }
        AbstractC2059tx abstractC2059tx = (AbstractC2059tx) this.f20659a.get(strA);
        if (abstractC2059tx == null && (abstractC2059tx = (AbstractC2059tx) this.f20660b.get(strA)) == null) {
            return Optional.empty();
        }
        try {
            return Optional.ofNullable(abstractC2059tx.c()).map(new Function() { // from class: com.google.android.gms.internal.ads.px
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return cls.cast(obj);
                }
            });
        } catch (ClassCastException e8) {
            p083k3.l.f25980A.f25987g.i("PreloadAdManager.pollAd", e8);
            p113o3.I.l("Unable to cast ad to the requested type:".concat(cls.getName()), e8);
            return Optional.empty();
        }
    }

    public final synchronized void e(String str, C1644lx c1644lx) {
        c1644lx.b();
        this.f20659a.put(str, c1644lx);
    }

    public final synchronized boolean f(String str, p043f3.a aVar) {
        ConcurrentHashMap concurrentHashMap = this.f20659a;
        String strA = a(str, aVar);
        if (!concurrentHashMap.containsKey(strA) && !this.f20660b.containsKey(strA)) {
            return false;
        }
        AbstractC2059tx abstractC2059tx = (AbstractC2059tx) this.f20659a.get(strA);
        if (abstractC2059tx == null) {
            abstractC2059tx = (AbstractC2059tx) this.f20660b.get(strA);
        }
        return abstractC2059tx != null && abstractC2059tx.f();
    }
}
