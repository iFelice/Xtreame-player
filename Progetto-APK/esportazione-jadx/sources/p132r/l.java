package p132r;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p102n0.c;
import p140s.b;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f29676a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b f29677b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final U4.b f29678c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f29679d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f29680e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f29681f;

    public l(int i8) {
        this.f29676a = i8;
        if (i8 <= 0) {
            c.p("maxSize <= 0");
            throw null;
        }
        this.f29677b = new b();
        this.f29678c = new U4.b();
    }

    public static void f(Object obj, Object obj2) {
        q0.h(obj, "key");
        q0.h(obj2, "value");
    }

    public Object a(Object obj) {
        q0.h(obj, "key");
        return null;
    }

    public final Object b(Object obj) {
        Object objPut;
        q0.h(obj, "key");
        synchronized (this.f29678c) {
            b bVar = this.f29677b;
            bVar.getClass();
            Object obj2 = bVar.f29861a.get(obj);
            if (obj2 != null) {
                this.f29680e++;
                return obj2;
            }
            this.f29681f++;
            Object objA = a(obj);
            if (objA == null) {
                return null;
            }
            synchronized (this.f29678c) {
                try {
                    b bVar2 = this.f29677b;
                    bVar2.getClass();
                    objPut = bVar2.f29861a.put(obj, objA);
                    if (objPut != null) {
                        b bVar3 = this.f29677b;
                        bVar3.getClass();
                        bVar3.f29861a.put(obj, objPut);
                    } else {
                        int i8 = this.f29679d;
                        f(obj, objA);
                        this.f29679d = i8 + 1;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (objPut != null) {
                return objPut;
            }
            h(this.f29676a);
            return objA;
        }
    }

    public final int c() {
        int i8;
        synchronized (this.f29678c) {
            i8 = this.f29676a;
        }
        return i8;
    }

    public final Object d(Object obj, Object obj2) {
        Object objPut;
        q0.h(obj, "key");
        q0.h(obj2, "value");
        synchronized (this.f29678c) {
            int i8 = this.f29679d;
            f(obj, obj2);
            this.f29679d = i8 + 1;
            b bVar = this.f29677b;
            bVar.getClass();
            objPut = bVar.f29861a.put(obj, obj2);
            if (objPut != null) {
                int i9 = this.f29679d;
                f(obj, objPut);
                this.f29679d = i9 - 1;
            }
        }
        h(this.f29676a);
        return objPut;
    }

    public final Object e(Object obj) {
        Object objRemove;
        q0.h(obj, "key");
        synchronized (this.f29678c) {
            b bVar = this.f29677b;
            bVar.getClass();
            objRemove = bVar.f29861a.remove(obj);
            if (objRemove != null) {
                int i8 = this.f29679d;
                f(obj, objRemove);
                this.f29679d = i8 - 1;
            }
        }
        return objRemove;
    }

    public final LinkedHashMap g() {
        LinkedHashMap linkedHashMap;
        synchronized (this.f29678c) {
            Set setEntrySet = this.f29677b.f29861a.entrySet();
            q0.g(setEntrySet, "map.entries");
            linkedHashMap = new LinkedHashMap(setEntrySet.size());
            Set<Map.Entry> setEntrySet2 = this.f29677b.f29861a.entrySet();
            q0.g(setEntrySet2, "map.entries");
            for (Map.Entry entry : setEntrySet2) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return linkedHashMap;
    }

    public final void h(int i8) {
        Object value;
        while (true) {
            synchronized (this.f29678c) {
                try {
                    if (!(this.f29679d >= 0 && (!this.f29677b.f29861a.isEmpty() || this.f29679d == 0))) {
                        throw new IllegalStateException("LruCache.sizeOf() is reporting inconsistent results!");
                    }
                    if (this.f29679d > i8 && !this.f29677b.f29861a.isEmpty()) {
                        Set setEntrySet = this.f29677b.f29861a.entrySet();
                        q0.g(setEntrySet, "map.entries");
                        Object next = null;
                        if (setEntrySet instanceof List) {
                            List list = (List) setEntrySet;
                            if (!list.isEmpty()) {
                                next = list.get(0);
                            }
                        } else {
                            Iterator it = setEntrySet.iterator();
                            if (it.hasNext()) {
                                next = it.next();
                            }
                        }
                        Map.Entry entry = (Map.Entry) next;
                        if (entry == null) {
                            return;
                        }
                        Object key = entry.getKey();
                        value = entry.getValue();
                        b bVar = this.f29677b;
                        bVar.getClass();
                        q0.h(key, "key");
                        bVar.f29861a.remove(key);
                        int i9 = this.f29679d;
                        f(key, value);
                        this.f29679d = i9 - 1;
                    }
                    return;
                } catch (Throwable th) {
                    throw th;
                }
            }
            q0.h(value, "oldValue");
        }
    }

    public final String toString() {
        String str;
        synchronized (this.f29678c) {
            try {
                int i8 = this.f29680e;
                int i9 = this.f29681f + i8;
                str = "LruCache[maxSize=" + this.f29676a + ",hits=" + this.f29680e + ",misses=" + this.f29681f + ",hitRate=" + (i9 != 0 ? (i8 * 100) / i9 : 0) + "%]";
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }
}
