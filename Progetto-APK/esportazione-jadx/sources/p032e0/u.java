package p032e0;

import Q1.a;
import W0.C0379l;
import android.util.Log;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import p027d2.e;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Map f24776a;

    public u(int i8) {
        if (i8 == 1) {
            this.f24776a = new LinkedHashMap();
            return;
        }
        if (i8 == 2) {
            this.f24776a = new LinkedHashMap();
            return;
        }
        if (i8 == 3) {
            this.f24776a = new HashMap();
            return;
        }
        if (i8 == 4) {
            this.f24776a = new HashMap();
            return;
        }
        if (i8 == 6) {
            this.f24776a = new HashMap();
            return;
        }
        if (i8 == 7) {
            this.f24776a = new ConcurrentHashMap();
            new AtomicInteger(0);
        } else if (i8 != 9) {
            this.f24776a = new HashMap();
        } else {
            this.f24776a = new HashMap();
        }
    }

    public final void a(C0379l c0379l) {
        long[] jArr = c0379l.f7432e;
        if (jArr.length <= 0 || this.f24776a.containsKey(Long.valueOf(jArr[0]))) {
            return;
        }
        this.f24776a.put(Long.valueOf(c0379l.f7432e[0]), c0379l);
    }

    public final void b(a... aVarArr) {
        q0.h(aVarArr, "migrations");
        for (a aVar : aVarArr) {
            int i8 = aVar.f6030a;
            Map map = this.f24776a;
            Integer numValueOf = Integer.valueOf(i8);
            Object treeMap = map.get(numValueOf);
            if (treeMap == null) {
                treeMap = new TreeMap();
                map.put(numValueOf, treeMap);
            }
            TreeMap treeMap2 = (TreeMap) treeMap;
            int i9 = aVar.f6031b;
            if (treeMap2.containsKey(Integer.valueOf(i9))) {
                Log.w("ROOM", "Overriding migration " + treeMap2.get(Integer.valueOf(i9)) + " with " + aVar);
            }
            treeMap2.put(Integer.valueOf(i9), aVar);
        }
    }

    public final void c(HashMap map) {
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            Object value = entry.getValue();
            if (value == null) {
                this.f24776a.put(str, null);
            } else {
                Class<?> cls = value.getClass();
                if (cls == Boolean.class || cls == Byte.class || cls == Integer.class || cls == Long.class || cls == Float.class || cls == Double.class || cls == String.class || cls == Boolean[].class || cls == Byte[].class || cls == Integer[].class || cls == Long[].class || cls == Float[].class || cls == Double[].class || cls == String[].class) {
                    this.f24776a.put(str, value);
                } else {
                    int i8 = 0;
                    if (cls == boolean[].class) {
                        Map map2 = this.f24776a;
                        boolean[] zArr = (boolean[]) value;
                        String str2 = e.f24628b;
                        Boolean[] boolArr = new Boolean[zArr.length];
                        while (i8 < zArr.length) {
                            boolArr[i8] = Boolean.valueOf(zArr[i8]);
                            i8++;
                        }
                        map2.put(str, boolArr);
                    } else if (cls == byte[].class) {
                        Map map3 = this.f24776a;
                        byte[] bArr = (byte[]) value;
                        String str3 = e.f24628b;
                        Byte[] bArr2 = new Byte[bArr.length];
                        while (i8 < bArr.length) {
                            bArr2[i8] = Byte.valueOf(bArr[i8]);
                            i8++;
                        }
                        map3.put(str, bArr2);
                    } else if (cls == int[].class) {
                        Map map4 = this.f24776a;
                        int[] iArr = (int[]) value;
                        String str4 = e.f24628b;
                        Integer[] numArr = new Integer[iArr.length];
                        while (i8 < iArr.length) {
                            numArr[i8] = Integer.valueOf(iArr[i8]);
                            i8++;
                        }
                        map4.put(str, numArr);
                    } else if (cls == long[].class) {
                        Map map5 = this.f24776a;
                        long[] jArr = (long[]) value;
                        String str5 = e.f24628b;
                        Long[] lArr = new Long[jArr.length];
                        while (i8 < jArr.length) {
                            lArr[i8] = Long.valueOf(jArr[i8]);
                            i8++;
                        }
                        map5.put(str, lArr);
                    } else if (cls == float[].class) {
                        Map map6 = this.f24776a;
                        float[] fArr = (float[]) value;
                        String str6 = e.f24628b;
                        Float[] fArr2 = new Float[fArr.length];
                        while (i8 < fArr.length) {
                            fArr2[i8] = Float.valueOf(fArr[i8]);
                            i8++;
                        }
                        map6.put(str, fArr2);
                    } else {
                        if (cls != double[].class) {
                            throw new IllegalArgumentException("Key " + str + "has invalid type " + cls);
                        }
                        Map map7 = this.f24776a;
                        double[] dArr = (double[]) value;
                        String str7 = e.f24628b;
                        Double[] dArr2 = new Double[dArr.length];
                        while (i8 < dArr.length) {
                            dArr2[i8] = Double.valueOf(dArr[i8]);
                            i8++;
                        }
                        map7.put(str, dArr2);
                    }
                }
            }
        }
    }
}
