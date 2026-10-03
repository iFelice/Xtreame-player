package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.oA, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1762oA {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object[] f20246a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f20247b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f20248c;

    public AbstractC1762oA(int i8, int i9) {
        if (i9 == 1) {
            this.f20246a = new Object[4];
            this.f20247b = 0;
        } else {
            p113o3.r.q(i8, "initialCapacity");
            this.f20246a = new Object[i8];
            this.f20247b = 0;
        }
    }

    public static int a(int i8, int i9) {
        if (i9 < 0) {
            throw new AssertionError("cannot store more than MAX_VALUE elements");
        }
        int i10 = i8 + (i8 >> 1) + 1;
        if (i10 < i9) {
            int iHighestOneBit = Integer.highestOneBit(i9 - 1);
            i10 = iHighestOneBit + iHighestOneBit;
        }
        return i10 < 0 ? com.google.android.gms.common.api.d.API_PRIORITY_OTHER : i10;
    }

    public static int e(int i8, int i9) {
        int i10 = i8 + (i8 >> 1) + 1;
        if (i10 < i9) {
            int iHighestOneBit = Integer.highestOneBit(i9 - 1);
            i10 = iHighestOneBit + iHighestOneBit;
        }
        return i10 < 0 ? com.google.android.gms.common.api.d.API_PRIORITY_OTHER : i10;
    }

    public final void b(Object obj) {
        obj.getClass();
        f(this.f20247b + 1);
        Object[] objArr = this.f20246a;
        int i8 = this.f20247b;
        this.f20247b = i8 + 1;
        objArr[i8] = obj;
    }

    public abstract AbstractC1762oA c(Object obj);

    public final void d(Iterable iterable) {
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            f(collection.size() + this.f20247b);
            if (collection instanceof AbstractC1814pA) {
                this.f20247b = ((AbstractC1814pA) collection).b(this.f20246a, this.f20247b);
                return;
            }
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            c(it.next());
        }
    }

    public final void f(int i8) {
        Object[] objArr = this.f20246a;
        int length = objArr.length;
        if (length < i8) {
            this.f20246a = Arrays.copyOf(objArr, e(length, i8));
            this.f20248c = false;
        } else if (this.f20248c) {
            this.f20246a = (Object[]) objArr.clone();
            this.f20248c = false;
        }
    }

    public void g(Object obj) {
        b(obj);
    }
}
