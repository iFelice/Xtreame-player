package com.google.android.gms.common.internal;

/* JADX INFO: renamed from: com.google.android.gms.common.internal.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0629e implements InterfaceC0628d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AbstractC0631g f11839a;

    public C0629e(AbstractC0631g abstractC0631g) {
        this.f11839a = abstractC0631g;
    }

    @Override // com.google.android.gms.common.internal.InterfaceC0628d
    public final void a(J3.b bVar) {
        boolean z7 = bVar.f4133H == 0;
        AbstractC0631g abstractC0631g = this.f11839a;
        if (z7) {
            abstractC0631g.getRemoteService(null, abstractC0631g.getScopes());
        } else if (abstractC0631g.zzx != null) {
            abstractC0631g.zzx.onConnectionFailed(bVar);
        }
    }
}
