package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.Map;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class W7 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedList f17171a = new LinkedList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinkedHashMap f17172b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f17173c;

    public W7(String str) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.f17172b = linkedHashMap;
        this.f17173c = new Object();
        linkedHashMap.put("action", "make_wv");
        linkedHashMap.put("ad_format", str);
    }

    public static final U7 d() {
        p083k3.l.f25980A.f25990j.getClass();
        return new U7(SystemClock.elapsedRealtime(), null, null);
    }

    public final V7 a() {
        V7 v7;
        boolean zBooleanValue = ((Boolean) C3099q.f26624d.f26627c.a(Q7.f15639I1)).booleanValue();
        StringBuilder sb = new StringBuilder();
        HashMap map = new HashMap();
        synchronized (this.f17173c) {
            try {
                for (U7 u7 : this.f17171a) {
                    long j8 = u7.f16786a;
                    String str = u7.f16787b;
                    U7 u8 = u7.f16788c;
                    if (u8 != null && j8 > 0) {
                        long j9 = j8 - u8.f16786a;
                        sb.append(str);
                        sb.append('.');
                        sb.append(j9);
                        sb.append(',');
                        if (zBooleanValue) {
                            if (map.containsKey(Long.valueOf(u8.f16786a))) {
                                StringBuilder sb2 = (StringBuilder) map.get(Long.valueOf(u8.f16786a));
                                sb2.append('+');
                                sb2.append(str);
                            } else {
                                map.put(Long.valueOf(u8.f16786a), new StringBuilder(str));
                            }
                        }
                    }
                }
                this.f17171a.clear();
                String string = null;
                if (!TextUtils.isEmpty(null)) {
                    sb.append((String) null);
                } else if (sb.length() > 0) {
                    sb.setLength(sb.length() - 1);
                }
                StringBuilder sb3 = new StringBuilder();
                if (zBooleanValue) {
                    for (Map.Entry entry : map.entrySet()) {
                        sb3.append((CharSequence) entry.getValue());
                        sb3.append('.');
                        long jLongValue = ((Long) entry.getKey()).longValue();
                        p083k3.l lVar = p083k3.l.f25980A;
                        lVar.f25990j.getClass();
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        lVar.f25990j.getClass();
                        sb3.append(jCurrentTimeMillis + (jLongValue - SystemClock.elapsedRealtime()));
                        sb3.append(',');
                    }
                    if (sb3.length() > 0) {
                        sb3.setLength(sb3.length() - 1);
                    }
                    string = sb3.toString();
                }
                v7 = new V7(sb.toString(), string, 0);
            } catch (Throwable th) {
                throw th;
            }
        }
        return v7;
    }

    public final void b(String str, String str2) {
        C0848Nd c0848NdC;
        if (TextUtils.isEmpty(str2) || (c0848NdC = p083k3.l.f25980A.f25987g.c()) == null) {
            return;
        }
        synchronized (this.f17173c) {
            T7 t7 = (T7) ((Map) c0848NdC.f14913c).get(str);
            if (t7 == null) {
                t7 = T7.f16593a;
            }
            LinkedHashMap linkedHashMap = this.f17172b;
            linkedHashMap.put(str, t7.a((String) linkedHashMap.get(str), str2));
        }
    }

    public final void c(U7 u7, long j8, String... strArr) {
        synchronized (this.f17173c) {
            this.f17171a.add(new U7(j8, strArr[0], u7));
        }
    }
}
