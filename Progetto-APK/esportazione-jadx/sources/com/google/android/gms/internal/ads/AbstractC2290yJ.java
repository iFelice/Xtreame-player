package com.google.android.gms.internal.ads;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.yJ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2290yJ implements Iterator, Closeable, L3 {

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final O3 f22014M = new O3("eof ", 1);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public I3 f22015G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public C1003Ye f22016H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public K3 f22017I = null;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public long f22018J = 0;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public long f22019K = 0;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final ArrayList f22020L = new ArrayList();

    static {
        Q3.b.G(AbstractC2290yJ.class);
    }

    @Override // java.util.Iterator
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public final K3 next() {
        K3 k3A;
        K3 k8 = this.f22017I;
        if (k8 != null && k8 != f22014M) {
            this.f22017I = null;
            return k8;
        }
        C1003Ye c1003Ye = this.f22016H;
        if (c1003Ye == null || this.f22018J >= this.f22019K) {
            this.f22017I = f22014M;
            throw new NoSuchElementException();
        }
        try {
            synchronized (c1003Ye) {
                this.f22016H.f17625G.position((int) this.f22018J);
                k3A = ((H3) this.f22015G).a(this.f22016H, this);
                this.f22018J = this.f22016H.E();
            }
            return k3A;
        } catch (EOFException unused) {
            throw new NoSuchElementException();
        } catch (IOException unused2) {
            throw new NoSuchElementException();
        }
    }

    public void close() {
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        K3 k8 = this.f22017I;
        O3 o4 = f22014M;
        if (k8 == o4) {
            return false;
        }
        if (k8 != null) {
            return true;
        }
        try {
            this.f22017I = next();
            return true;
        } catch (NoSuchElementException unused) {
            this.f22017I = o4;
            return false;
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("[");
        int i8 = 0;
        while (true) {
            ArrayList arrayList = this.f22020L;
            if (i8 >= arrayList.size()) {
                sb.append("]");
                return sb.toString();
            }
            if (i8 > 0) {
                sb.append(";");
            }
            sb.append(((K3) arrayList.get(i8)).toString());
            i8++;
        }
    }
}
