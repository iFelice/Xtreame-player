package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class NJ implements IJ {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f14896c = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f14897a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f14898b;

    static {
        JJ.a(Collections.emptySet());
    }

    public /* synthetic */ NJ(List list, List list2) {
        this.f14897a = list;
        this.f14898b = list2;
    }

    public static C0871Om a(int i8, int i9) {
        return new C0871Om(i8, i9);
    }

    @Override // com.google.android.gms.internal.ads.QJ
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Set zzb() {
        List list = this.f14897a;
        int size = list.size();
        List list2 = this.f14898b;
        ArrayList arrayList = new ArrayList(list2.size());
        int size2 = list2.size();
        for (int i8 = 0; i8 < size2; i8++) {
            Collection collection = (Collection) ((MJ) list2.get(i8)).zzb();
            size += collection.size();
            arrayList.add(collection);
        }
        HashSet hashSet = new HashSet(size < 3 ? size + 1 : size < 1073741824 ? (int) ((size / 0.75f) + 1.0f) : com.google.android.gms.common.api.d.API_PRIORITY_OTHER);
        int size3 = list.size();
        for (int i9 = 0; i9 < size3; i9++) {
            Object objZzb = ((MJ) list.get(i9)).zzb();
            objZzb.getClass();
            hashSet.add(objZzb);
        }
        int size4 = arrayList.size();
        for (int i10 = 0; i10 < size4; i10++) {
            for (Object obj : (Collection) arrayList.get(i10)) {
                obj.getClass();
                hashSet.add(obj);
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }
}
