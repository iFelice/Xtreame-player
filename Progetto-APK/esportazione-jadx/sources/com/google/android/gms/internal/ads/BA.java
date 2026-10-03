package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.NoSuchElementException;
import p039f.AbstractC2987b;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class BA implements Iterator {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final BA f12294G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final /* synthetic */ BA[] f12295H;

    static {
        BA ba = new BA("INSTANCE", 0);
        f12294G = ba;
        f12295H = new BA[]{ba};
    }

    public static BA[] values() {
        return (BA[]) f12295H.clone();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        AbstractC2987b.E0("no calls to next() since the last call to remove()", false);
    }
}
