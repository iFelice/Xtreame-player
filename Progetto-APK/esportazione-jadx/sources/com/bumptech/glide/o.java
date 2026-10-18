package com.bumptech.glide;

/* JADX INFO: loaded from: classes.dex */
public abstract class o implements Cloneable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public N2.f f11605G = N2.c.f4939H;

    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final o clone() {
        try {
            return (o) super.clone();
        } catch (CloneNotSupportedException e8) {
            throw new RuntimeException(e8);
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof o) {
            return P2.o.b(this.f11605G, ((o) obj).f11605G);
        }
        return false;
    }

    public int hashCode() {
        N2.f fVar = this.f11605G;
        if (fVar != null) {
            return fVar.hashCode();
        }
        return 0;
    }
}
