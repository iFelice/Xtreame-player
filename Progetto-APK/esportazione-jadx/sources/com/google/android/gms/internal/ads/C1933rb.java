package com.google.android.gms.internal.ads;

import java.util.HashSet;
import java.util.Set;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.rb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1933rb implements p136r3.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Set f20742a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f20743b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f20744c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f20745d;

    public C1933rb(HashSet hashSet, boolean z7, int i8, boolean z8) {
        this.f20742a = hashSet;
        this.f20743b = z7;
        this.f20744c = i8;
        this.f20745d = z8;
    }

    @Override // p136r3.d
    public final int a() {
        return this.f20744c;
    }

    @Override // p136r3.d
    public final boolean b() {
        return this.f20745d;
    }

    @Override // p136r3.d
    public final boolean c() {
        return this.f20743b;
    }

    @Override // p136r3.d
    public final Set d() {
        return this.f20742a;
    }
}
