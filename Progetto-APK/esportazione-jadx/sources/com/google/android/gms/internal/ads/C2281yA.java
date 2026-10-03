package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.yA, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2281yA extends AbstractC1762oA {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object[] f21998d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f21999e;

    public C2281yA() {
        super(4, 0);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1762oA
    public final /* bridge */ /* synthetic */ AbstractC1762oA c(Object obj) {
        h(obj);
        return this;
    }

    public final void h(Object obj) {
        obj.getClass();
        if (this.f21998d != null) {
            int iQ = AbstractC2333zA.q(this.f20247b);
            Object[] objArr = this.f21998d;
            if (iQ <= objArr.length) {
                int length = objArr.length - 1;
                int iHashCode = obj.hashCode();
                int iJ = p113o3.r.j(iHashCode);
                while (true) {
                    int i8 = iJ & length;
                    Object[] objArr2 = this.f21998d;
                    Object obj2 = objArr2[i8];
                    if (obj2 == null) {
                        objArr2[i8] = obj;
                        this.f21999e += iHashCode;
                        b(obj);
                        return;
                    } else if (obj2.equals(obj)) {
                        return;
                    } else {
                        iJ = i8 + 1;
                    }
                }
            }
        }
        this.f21998d = null;
        b(obj);
    }

    public final void i(Iterable iterable) {
        iterable.getClass();
        if (this.f21998d == null) {
            d(iterable);
            return;
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            h(it.next());
        }
    }

    public final AbstractC2333zA j() {
        AbstractC2333zA abstractC2333zAU;
        int i8 = this.f20247b;
        if (i8 == 0) {
            return VA.f16965P;
        }
        if (i8 == 1) {
            Object obj = this.f20246a[0];
            Objects.requireNonNull(obj);
            return new C1194dB(obj);
        }
        if (this.f21998d == null || AbstractC2333zA.q(i8) != this.f21998d.length) {
            abstractC2333zAU = AbstractC2333zA.u(this.f20247b, this.f20246a);
            this.f20247b = abstractC2333zAU.size();
        } else {
            int i9 = this.f20247b;
            Object[] objArrCopyOf = this.f20246a;
            int length = objArrCopyOf.length;
            if (i9 < (length >> 1) + (length >> 2)) {
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, i9);
            }
            int i10 = this.f21999e;
            Object[] objArr = this.f21998d;
            abstractC2333zAU = new VA(objArrCopyOf, i10, objArr, objArr.length - 1, this.f20247b);
        }
        this.f20248c = true;
        this.f21998d = null;
        return abstractC2333zAU;
    }
}
