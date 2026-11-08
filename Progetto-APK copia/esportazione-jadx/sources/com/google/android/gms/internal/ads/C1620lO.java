package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import java.util.Map;
import java.util.Objects;
import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.lO, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1620lO extends C1835pg {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final /* synthetic */ int f19788u = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final boolean f19789l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final boolean f19790m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final boolean f19791n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final boolean f19792o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final boolean f19793p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final boolean f19794q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final boolean f19795r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final SparseArray f19796s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final SparseBooleanArray f19797t;

    static {
        new C1620lO(new C1568kO());
        Integer.toString(1000, 36);
        Integer.toString(WebSocketProtocol.CLOSE_CLIENT_GOING_AWAY, 36);
        Integer.toString(1002, 36);
        Integer.toString(1003, 36);
        Integer.toString(1004, 36);
        Integer.toString(WebSocketProtocol.CLOSE_NO_STATUS_CODE, 36);
        Integer.toString(1006, 36);
        Integer.toString(1007, 36);
        Integer.toString(1008, 36);
        Integer.toString(1009, 36);
        Integer.toString(1010, 36);
        Integer.toString(1011, 36);
        Integer.toString(1012, 36);
        Integer.toString(1013, 36);
        Integer.toString(1014, 36);
        Integer.toString(1015, 36);
        Integer.toString(1016, 36);
        Integer.toString(1017, 36);
        Integer.toString(1018, 36);
    }

    public C1620lO(C1568kO c1568kO) {
        super(c1568kO);
        this.f19789l = c1568kO.f19607l;
        this.f19790m = c1568kO.f19608m;
        this.f19791n = c1568kO.f19609n;
        this.f19792o = c1568kO.f19610o;
        this.f19793p = c1568kO.f19611p;
        this.f19794q = c1568kO.f19612q;
        this.f19795r = c1568kO.f19613r;
        this.f19796s = c1568kO.f19614s;
        this.f19797t = c1568kO.f19615t;
    }

    public final void a(int i8, C1104bO c1104bO) {
        Map map = (Map) this.f19796s.get(i8);
        if (map != null) {
            A0.O.I(map.get(c1104bO));
        }
    }

    public final boolean b(int i8) {
        return this.f19797t.get(i8);
    }

    public final boolean c(int i8, C1104bO c1104bO) {
        Map map = (Map) this.f19796s.get(i8);
        return map != null && map.containsKey(c1104bO);
    }

    @Override // com.google.android.gms.internal.ads.C1835pg
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C1620lO.class == obj.getClass()) {
            C1620lO c1620lO = (C1620lO) obj;
            if (super.equals(c1620lO) && this.f19789l == c1620lO.f19789l && this.f19790m == c1620lO.f19790m && this.f19791n == c1620lO.f19791n && this.f19792o == c1620lO.f19792o && this.f19793p == c1620lO.f19793p && this.f19794q == c1620lO.f19794q && this.f19795r == c1620lO.f19795r) {
                SparseBooleanArray sparseBooleanArray = this.f19797t;
                int size = sparseBooleanArray.size();
                SparseBooleanArray sparseBooleanArray2 = c1620lO.f19797t;
                if (sparseBooleanArray2.size() == size) {
                    for (int i8 = 0; i8 < size; i8++) {
                        if (sparseBooleanArray2.indexOfKey(sparseBooleanArray.keyAt(i8)) >= 0) {
                        }
                    }
                    SparseArray sparseArray = this.f19796s;
                    int size2 = sparseArray.size();
                    SparseArray sparseArray2 = c1620lO.f19796s;
                    if (sparseArray2.size() == size2) {
                        for (int i9 = 0; i9 < size2; i9++) {
                            int iIndexOfKey = sparseArray2.indexOfKey(sparseArray.keyAt(i9));
                            if (iIndexOfKey >= 0) {
                                Map map = (Map) sparseArray.valueAt(i9);
                                Map map2 = (Map) sparseArray2.valueAt(iIndexOfKey);
                                if (map2.size() == map.size()) {
                                    for (Map.Entry entry : map.entrySet()) {
                                        C1104bO c1104bO = (C1104bO) entry.getKey();
                                        if (!map2.containsKey(c1104bO) || !Objects.equals(entry.getValue(), map2.get(c1104bO))) {
                                        }
                                    }
                                }
                            }
                        }
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.C1835pg
    public final int hashCode() {
        return (((((((((((((((super.hashCode() + 31) * 31) + (this.f19789l ? 1 : 0)) * 961) + (this.f19790m ? 1 : 0)) * 961) + (this.f19791n ? 1 : 0)) * 28629151) + (this.f19792o ? 1 : 0)) * 31) + (this.f19793p ? 1 : 0)) * 31) + (this.f19794q ? 1 : 0)) * 961) + (this.f19795r ? 1 : 0)) * 31;
    }
}
