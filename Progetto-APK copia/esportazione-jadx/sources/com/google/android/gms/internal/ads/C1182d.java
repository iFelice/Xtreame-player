package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1182d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC0949Ug f18288a;

    public C1182d(InterfaceC0949Ug interfaceC0949Ug) {
        this.f18288a = interfaceC0949Ug;
    }

    public final void a() throws C0865Og {
        try {
            ((C1182d) Class.forName("androidx.media3.effect.PreviewingSingleInputVideoGraph$Factory").getConstructor(InterfaceC0949Ug.class).newInstance(this.f18288a)).a();
        } catch (Exception e8) {
            if (!(e8 instanceof C0865Og)) {
                throw new C0865Og(e8);
            }
        }
    }
}
