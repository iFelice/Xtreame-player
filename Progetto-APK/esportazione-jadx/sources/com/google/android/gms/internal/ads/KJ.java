package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class KJ extends FJ {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f14324b = 0;

    static {
        JJ.a(Collections.emptyMap());
    }

    public static C0720Ek a(int i8) {
        return new C0720Ek(i8);
    }

    @Override // com.google.android.gms.internal.ads.QJ
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Map zzb() {
        Map map = this.f13346a;
        LinkedHashMap linkedHashMapG0 = Cw.G0(map.size());
        for (Map.Entry entry : map.entrySet()) {
            linkedHashMapG0.put(entry.getKey(), ((MJ) entry.getValue()).zzb());
        }
        return Collections.unmodifiableMap(linkedHashMapG0);
    }
}
