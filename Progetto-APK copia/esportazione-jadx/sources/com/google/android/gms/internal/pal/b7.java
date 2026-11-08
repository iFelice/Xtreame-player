package com.google.android.gms.internal.pal;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public abstract class b7 implements Iterator {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public c7 f23736G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public c7 f23737H = null;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f23738I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ d7 f23739J;

    public b7(d7 d7Var) {
        this.f23739J = d7Var;
        this.f23736G = d7Var.f23783K.f23762J;
        this.f23738I = d7Var.f23782J;
    }

    public final c7 a() {
        c7 c7Var = this.f23736G;
        d7 d7Var = this.f23739J;
        if (c7Var == d7Var.f23783K) {
            throw new NoSuchElementException();
        }
        if (d7Var.f23782J != this.f23738I) {
            throw new ConcurrentModificationException();
        }
        this.f23736G = c7Var.f23762J;
        this.f23737H = c7Var;
        return c7Var;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f23736G != this.f23739J.f23783K;
    }

    @Override // java.util.Iterator
    public final void remove() {
        c7 c7Var = this.f23737H;
        if (c7Var == null) {
            throw new IllegalStateException();
        }
        d7 d7Var = this.f23739J;
        d7Var.b(c7Var, true);
        this.f23737H = null;
        this.f23738I = d7Var.f23782J;
    }
}
