package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class Lz extends AbstractC1349gB {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Object f14596H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f14597I;

    public Lz() {
        super(0);
        this.f14597I = 2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.Iterator
    public final boolean hasNext() {
        Object next;
        int i8 = this.f14597I;
        if (i8 == 4) {
            throw new IllegalStateException();
        }
        int i9 = i8 - 1;
        Object obj = null;
        if (i8 == 0) {
            throw null;
        }
        if (i9 == 0) {
            return true;
        }
        if (i9 != 2) {
            this.f14597I = 4;
            AA aa = (AA) this;
            int i10 = aa.f11986J;
            Object obj2 = aa.f11988L;
            Iterator it = aa.f11987K;
            switch (i10) {
                case 0:
                    while (true) {
                        if (!it.hasNext()) {
                            aa.f14597I = 3;
                            break;
                        } else {
                            next = it.next();
                            if (((InterfaceC2321yz) obj2).zza(next)) {
                                obj = next;
                                break;
                            }
                        }
                    }
                    break;
                default:
                    while (true) {
                        if (!it.hasNext()) {
                            aa.f14597I = 3;
                            break;
                        } else {
                            Set set = ((YA) obj2).f17576H;
                            next = it.next();
                            if (set.contains(next)) {
                                obj = next;
                                break;
                            }
                        }
                    }
                    break;
            }
            this.f14596H = obj;
            if (this.f14597I != 3) {
                this.f14597I = 1;
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1349gB, java.util.Iterator, java.util.ListIterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f14597I = 2;
        Object obj = this.f14596H;
        this.f14596H = null;
        return obj;
    }
}
