package p032e0;

import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public EnumC2982j f24747a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public InterfaceC2983k f24748b;

    public final void a(m mVar, EnumC2981i enumC2981i) {
        EnumC2982j enumC2982jA = enumC2981i.a();
        EnumC2982j enumC2982j = this.f24747a;
        q0.h(enumC2982j, "state1");
        if (enumC2982jA.compareTo(enumC2982j) < 0) {
            enumC2982j = enumC2982jA;
        }
        this.f24747a = enumC2982j;
        this.f24748b.b(mVar, enumC2981i);
        this.f24747a = enumC2982jA;
    }
}
