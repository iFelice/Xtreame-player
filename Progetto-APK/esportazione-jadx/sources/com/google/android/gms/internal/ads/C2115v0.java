package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.v0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2115v0 extends AbstractC1666mI {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public long f21420H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public long[] f21421I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public long[] f21422J;

    public static Serializable b1(int i8, C1534jr c1534jr) {
        if (i8 == 0) {
            return Double.valueOf(Double.longBitsToDouble(c1534jr.D()));
        }
        if (i8 == 1) {
            return Boolean.valueOf(c1534jr.w() == 1);
        }
        if (i8 == 2) {
            return c1(c1534jr);
        }
        if (i8 != 3) {
            if (i8 == 8) {
                return d1(c1534jr);
            }
            if (i8 != 10) {
                if (i8 != 11) {
                    return null;
                }
                Date date = new Date((long) Double.longBitsToDouble(c1534jr.D()));
                c1534jr.k(2);
                return date;
            }
            int iZ = c1534jr.z();
            ArrayList arrayList = new ArrayList(iZ);
            for (int i9 = 0; i9 < iZ; i9++) {
                Serializable serializableB1 = b1(c1534jr.w(), c1534jr);
                if (serializableB1 != null) {
                    arrayList.add(serializableB1);
                }
            }
            return arrayList;
        }
        HashMap map = new HashMap();
        while (true) {
            String strC1 = c1(c1534jr);
            int iW = c1534jr.w();
            if (iW == 9) {
                return map;
            }
            Serializable serializableB2 = b1(iW, c1534jr);
            if (serializableB2 != null) {
                map.put(strC1, serializableB2);
            }
        }
    }

    public static String c1(C1534jr c1534jr) {
        int iA = c1534jr.A();
        int i8 = c1534jr.f19516b;
        c1534jr.k(iA);
        return new String(c1534jr.f19515a, i8, iA);
    }

    public static HashMap d1(C1534jr c1534jr) {
        int iZ = c1534jr.z();
        HashMap map = new HashMap(iZ);
        for (int i8 = 0; i8 < iZ; i8++) {
            String strC1 = c1(c1534jr);
            Serializable serializableB1 = b1(c1534jr.w(), c1534jr);
            if (serializableB1 != null) {
                map.put(strC1, serializableB1);
            }
        }
        return map;
    }

    public final boolean a1(long j8, C1534jr c1534jr) {
        if (c1534jr.w() == 2 && "onMetaData".equals(c1(c1534jr)) && c1534jr.o() != 0 && c1534jr.w() == 8) {
            HashMap mapD1 = d1(c1534jr);
            Object obj = mapD1.get("duration");
            if (obj instanceof Double) {
                double dDoubleValue = ((Double) obj).doubleValue();
                if (dDoubleValue > 0.0d) {
                    this.f21420H = (long) (dDoubleValue * 1000000.0d);
                }
            }
            Object obj2 = mapD1.get("keyframes");
            if (obj2 instanceof Map) {
                Map map = (Map) obj2;
                Object obj3 = map.get("filepositions");
                Object obj4 = map.get("times");
                if ((obj3 instanceof List) && (obj4 instanceof List)) {
                    List list = (List) obj3;
                    List list2 = (List) obj4;
                    int size = list2.size();
                    this.f21421I = new long[size];
                    this.f21422J = new long[size];
                    for (int i8 = 0; i8 < size; i8++) {
                        Object obj5 = list.get(i8);
                        Object obj6 = list2.get(i8);
                        if (!(obj6 instanceof Double) || !(obj5 instanceof Double)) {
                            this.f21421I = new long[0];
                            this.f21422J = new long[0];
                            break;
                        }
                        this.f21421I[i8] = (long) (((Double) obj6).doubleValue() * 1000000.0d);
                        this.f21422J[i8] = ((Double) obj5).longValue();
                    }
                }
            }
        }
        return false;
    }
}
