package p018c1;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p117p0.E;

/* JADX INFO: loaded from: classes.dex */
public final class c extends d {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public long f10613H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public long[] f10614I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public long[] f10615J;

    public static Serializable o(int i8, E e8) {
        if (i8 == 0) {
            return Double.valueOf(Double.longBitsToDouble(e8.t()));
        }
        if (i8 == 1) {
            return Boolean.valueOf(e8.z() == 1);
        }
        if (i8 == 2) {
            return q(e8);
        }
        if (i8 != 3) {
            if (i8 == 8) {
                return p(e8);
            }
            if (i8 != 10) {
                if (i8 != 11) {
                    return null;
                }
                Date date = new Date((long) Double.longBitsToDouble(e8.t()));
                e8.M(2);
                return date;
            }
            int iD = e8.D();
            ArrayList arrayList = new ArrayList(iD);
            for (int i9 = 0; i9 < iD; i9++) {
                Serializable serializableO = o(e8.z(), e8);
                if (serializableO != null) {
                    arrayList.add(serializableO);
                }
            }
            return arrayList;
        }
        HashMap map = new HashMap();
        while (true) {
            String strQ = q(e8);
            int iZ = e8.z();
            if (iZ == 9) {
                return map;
            }
            Serializable serializableO2 = o(iZ, e8);
            if (serializableO2 != null) {
                map.put(strQ, serializableO2);
            }
        }
    }

    public static HashMap p(E e8) {
        int iD = e8.D();
        HashMap map = new HashMap(iD);
        for (int i8 = 0; i8 < iD; i8++) {
            String strQ = q(e8);
            Serializable serializableO = o(e8.z(), e8);
            if (serializableO != null) {
                map.put(strQ, serializableO);
            }
        }
        return map;
    }

    public static String q(E e8) {
        int iF = e8.F();
        int i8 = e8.f28036b;
        e8.M(iF);
        return new String(e8.f28035a, i8, iF);
    }

    public final boolean n(long j8, E e8) {
        if (e8.z() != 2 || !"onMetaData".equals(q(e8)) || e8.a() == 0 || e8.z() != 8) {
            return false;
        }
        HashMap mapP = p(e8);
        Object obj = mapP.get("duration");
        if (obj instanceof Double) {
            double dDoubleValue = ((Double) obj).doubleValue();
            if (dDoubleValue > 0.0d) {
                this.f10613H = (long) (dDoubleValue * 1000000.0d);
            }
        }
        Object obj2 = mapP.get("keyframes");
        if (obj2 instanceof Map) {
            Map map = (Map) obj2;
            Object obj3 = map.get("filepositions");
            Object obj4 = map.get("times");
            if ((obj3 instanceof List) && (obj4 instanceof List)) {
                List list = (List) obj3;
                List list2 = (List) obj4;
                int size = list2.size();
                this.f10614I = new long[size];
                this.f10615J = new long[size];
                for (int i8 = 0; i8 < size; i8++) {
                    Object obj5 = list.get(i8);
                    Object obj6 = list2.get(i8);
                    if (!(obj6 instanceof Double) || !(obj5 instanceof Double)) {
                        this.f10614I = new long[0];
                        this.f10615J = new long[0];
                        break;
                    }
                    this.f10614I[i8] = (long) (((Double) obj6).doubleValue() * 1000000.0d);
                    this.f10615J[i8] = ((Double) obj5).longValue();
                }
            }
        }
        return false;
    }
}
