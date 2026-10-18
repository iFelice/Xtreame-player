package com.bumptech.glide;

import J2.t;

/* JADX INFO: loaded from: classes.dex */
public final class m implements J2.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final t f11592a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ n f11593b;

    public m(n nVar, t tVar) {
        this.f11593b = nVar;
        this.f11592a = tVar;
    }

    @Override // J2.a
    public final void a(boolean z7) {
        if (z7) {
            synchronized (this.f11593b) {
                this.f11592a.e();
            }
        }
    }
}
