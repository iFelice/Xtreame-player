package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.u3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2066u3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f21194a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f21195b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map f21196c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List f21197d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f21198e;

    public C2066u3(int i8, byte[] bArr, Map map, List list, boolean z7) {
        this.f21194a = i8;
        this.f21195b = bArr;
        this.f21196c = map;
        this.f21197d = list == null ? null : Collections.unmodifiableList(list);
        this.f21198e = z7;
    }

    public static List a(Map map) {
        if (map == null) {
            return null;
        }
        if (map.isEmpty()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry entry : map.entrySet()) {
            arrayList.add(new C1859q3((String) entry.getKey(), (String) entry.getValue()));
        }
        return arrayList;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v2, types: [java.util.TreeMap] */
    /* JADX WARN: Type inference failed for: r12v3, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.util.Map] */
    public C2066u3(int i8, byte[] bArr, boolean z7, long j8, List list) {
        ?? treeMap;
        if (list == null) {
            treeMap = 0;
        } else if (list.isEmpty()) {
            treeMap = Collections.emptyMap();
        } else {
            treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                C1859q3 c1859q3 = (C1859q3) it.next();
                treeMap.put(c1859q3.f20528a, c1859q3.f20529b);
            }
        }
        this(i8, bArr, (Map) treeMap, list, z7);
    }
}
