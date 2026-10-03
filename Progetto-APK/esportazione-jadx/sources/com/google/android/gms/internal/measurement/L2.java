package com.google.android.gms.internal.measurement;

import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class L2 extends LinkedHashMap {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final L2 f22956H;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public boolean f22957G = true;

    static {
        L2 l4 = new L2();
        f22956H = l4;
        l4.f22957G = false;
    }

    public static L2 a() {
        return f22956H;
    }

    public static int e(Object obj) {
        if (!(obj instanceof byte[])) {
            if (obj instanceof InterfaceC2641u2) {
                throw new UnsupportedOperationException();
            }
            return obj.hashCode();
        }
        byte[] bArr = (byte[]) obj;
        Charset charset = AbstractC2666z2.f23416a;
        int length = bArr.length;
        for (byte b8 : bArr) {
            length = (length * 31) + b8;
        }
        if (length == 0) {
            return 1;
        }
        return length;
    }

    public final L2 b() {
        if (isEmpty()) {
            return new L2();
        }
        L2 l4 = new L2(this);
        l4.f22957G = true;
        return l4;
    }

    public final void c() {
        this.f22957G = false;
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        f();
        super.clear();
    }

    public final boolean d() {
        return this.f22957G;
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        return isEmpty() ? Collections.emptySet() : super.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        if (this == map) {
            return true;
        }
        if (size() != map.size()) {
            return false;
        }
        for (Map.Entry entry : entrySet()) {
            if (!map.containsKey(entry.getKey())) {
                return false;
            }
            Object value = entry.getValue();
            Object obj2 = map.get(entry.getKey());
            if (!(((value instanceof byte[]) && (obj2 instanceof byte[])) ? Arrays.equals((byte[]) value, (byte[]) obj2) : value.equals(obj2))) {
                return false;
            }
        }
        return true;
    }

    public final void f() {
        if (!this.f22957G) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int iE = 0;
        for (Map.Entry entry : entrySet()) {
            iE += e(entry.getValue()) ^ e(entry.getKey());
        }
        return iE;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        f();
        Charset charset = AbstractC2666z2.f23416a;
        obj.getClass();
        obj2.getClass();
        return super.put(obj, obj2);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void putAll(Map map) {
        f();
        for (Object obj : map.keySet()) {
            Charset charset = AbstractC2666z2.f23416a;
            obj.getClass();
            map.get(obj).getClass();
        }
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        f();
        return super.remove(obj);
    }
}
