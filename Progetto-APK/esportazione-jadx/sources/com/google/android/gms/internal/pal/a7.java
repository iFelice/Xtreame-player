package com.google.android.gms.internal.pal;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class a7 extends AbstractSet {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f23726G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ d7 f23727H;

    public /* synthetic */ a7(d7 d7Var, int i8) {
        this.f23726G = i8;
        this.f23727H = d7Var;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        int i8 = this.f23726G;
        d7 d7Var = this.f23727H;
        switch (i8) {
            case 0:
                d7Var.clear();
                break;
            default:
                d7Var.clear();
                break;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        c7 c7VarA;
        Object obj2;
        Object value;
        int i8 = this.f23726G;
        d7 d7Var = this.f23727H;
        switch (i8) {
            case 0:
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                d7Var.getClass();
                Object key = entry.getKey();
                c7 c7Var = null;
                if (key != null) {
                    try {
                        c7VarA = d7Var.a(key, false);
                    } catch (ClassCastException unused) {
                        c7VarA = null;
                    }
                    break;
                } else {
                    c7VarA = null;
                }
                if (c7VarA != null && ((obj2 = c7VarA.f23765M) == (value = entry.getValue()) || (obj2 != null && obj2.equals(value)))) {
                    c7Var = c7VarA;
                }
                return c7Var != null;
            default:
                return d7Var.containsKey(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        switch (this.f23726G) {
            case 0:
                return new Z6(this);
            default:
                return new Z6(this, 0);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        c7 c7VarA;
        Object obj2;
        Object value;
        c7 c7VarA2 = null;
        int i8 = this.f23726G;
        d7 d7Var = this.f23727H;
        switch (i8) {
            case 0:
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                d7Var.getClass();
                Object key = entry.getKey();
                if (key != null) {
                    try {
                        c7VarA = d7Var.a(key, false);
                    } catch (ClassCastException unused) {
                        c7VarA = null;
                    }
                    break;
                } else {
                    c7VarA = null;
                }
                if (c7VarA != null && ((obj2 = c7VarA.f23765M) == (value = entry.getValue()) || (obj2 != null && obj2.equals(value)))) {
                    c7VarA2 = c7VarA;
                }
                if (c7VarA2 == null) {
                    return false;
                }
                d7Var.b(c7VarA2, true);
                return true;
            default:
                d7Var.getClass();
                if (obj != null) {
                    try {
                        c7VarA2 = d7Var.a(obj, false);
                        break;
                    } catch (ClassCastException unused2) {
                    }
                }
                if (c7VarA2 != null) {
                    d7Var.b(c7VarA2, true);
                }
                return c7VarA2 != null;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        int i8 = this.f23726G;
        d7 d7Var = this.f23727H;
        switch (i8) {
            case 0:
                break;
        }
        return d7Var.f23781I;
    }
}
